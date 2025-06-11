from django.shortcuts import render
from rest_framework import viewsets
from rest_framework.permissions import AllowAny
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.decorators import api_view, permission_classes
from rest_framework.permissions import IsAuthenticated
from rest_framework import filters
from base.models import (
    Perfil, SuscripcionUsuario, PlataformaStreaming, Genero, Contenido, ContenidoGenero,
    Reparto, Actor, Galeria, Valoracion, Comentario, Notificacion, Newsletter,
    Noticia,Lista
)
from .serializers import (
    PerfilSerializer, SuscripcionUsuarioSerializer, PlataformaStreamingSerializer, GeneroSerializer,
    ContenidoSerializer, ContenidoGeneroSerializer, RepartoSerializer, ActorSerializer, GaleriaSerializer,
    ValoracionSerializer, ComentarioSerializer, NotificacionSerializer, NewsletterSerializer,
    NoticiaSerializer, ListaSerializer
)
from .permissions import IsStaffOrReadOnly, IsAuthenticatedOrReadOnly,IsPremiumOrReadOnly
from django.db.models import Avg

# Create your views here.

#Endpoint api
@api_view(['GET'])
@permission_classes([IsAuthenticated])
def verificar_usuario_premium(request):
    usuario = request.user
    try:
        suscripcion = SuscripcionUsuario.objects.filter(id_usuario=usuario, es_premium=True).first()
        es_premium = suscripcion is not None
    except SuscripcionUsuario.DoesNotExist:
        es_premium = False

    return Response({
        'autenticado': True,
        'es_premium': es_premium,
        'username': usuario.username
    })

# Ejemplo para Perfil (usa IsStaffOrReadOnly)
class PerfilViewSet(viewsets.ModelViewSet):
    queryset = Perfil.objects.all()
    serializer_class = PerfilSerializer
    permission_classes = [AllowAny, IsStaffOrReadOnly]

    def perform_create(self, serializer):
        serializer.save(id_usuario=self.request.user)
# Ejemplo para Valoracion
class ValoracionViewSet(viewsets.ModelViewSet):
    queryset = Valoracion.objects.all()
    serializer_class = ValoracionSerializer
    permission_classes = [AllowAny, IsAuthenticatedOrReadOnly]

    def get_queryset(self):
        queryset = super().get_queryset()
        id_contenido = self.request.query_params.get('id_contenido')
        if id_contenido:
            queryset = queryset.filter(id_contenido=id_contenido)
        return queryset

    def update_contenido_puntuacion(self, id_contenido):
        """Calculate the average rating for the content and update its puntuacion field."""
        promedio = Valoracion.objects.filter(id_contenido=id_contenido).aggregate(Avg('puntuacion'))['puntuacion__avg']
        contenido = Contenido.objects.get(id_contenido=id_contenido)
        contenido.puntuacion = round(promedio, 1) if promedio is not None else None
        contenido.save()

    def perform_create(self, serializer):
        user = self.request.user
        id_contenido = self.request.data.get('id_contenido')
        # Busca si ya existe una valoración de este usuario para este contenido
        valoracion = Valoracion.objects.filter(id_usuario=user, id_contenido=id_contenido).first()
        if valoracion:
            # Si existe, actualiza la valoración
            valoracion.puntuacion = self.request.data.get('puntuacion')
            valoracion.texto_valoracion = self.request.data.get('texto_valoracion', '')
            valoracion.save()
            # Actualiza la puntuación del contenido
            self.update_contenido_puntuacion(id_contenido)
        else:
            # Si no existe, crea una nueva
            serializer.save(id_usuario=user)
            # Actualiza la puntuación del contenido
            self.update_contenido_puntuacion(id_contenido)

    def perform_update(self, serializer):
        serializer.save()
        # Actualiza la puntuación del contenido después de actualizar la valoración
        id_contenido = self.request.data.get('id_contenido')
        self.update_contenido_puntuacion(id_contenido)
# Ejemplo para Noticia (usa IsStaffOrReadOnly)
class NoticiaViewSet(viewsets.ModelViewSet):
    queryset = Noticia.objects.all().order_by('-fecha_publicacion')
    serializer_class = NoticiaSerializer
    permission_classes = [AllowAny, IsStaffOrReadOnly]
    filter_backends = [filters.OrderingFilter]
    ordering_fields = ['fecha_publicacion', 'vistas']

    def get_queryset(self):
        queryset = super().get_queryset()
        categoria = self.request.query_params.get('categoria')
        if categoria:
            queryset = queryset.filter(categoria=categoria)
        return queryset

    def perform_create(self, serializer):
        serializer.save(creador=self.request.user)

# Para modelos sin campo de usuario/creador, solo autenticación
class PlataformaStreamingViewSet(viewsets.ModelViewSet):
    queryset = PlataformaStreaming.objects.all()
    serializer_class = PlataformaStreamingSerializer
    permission_classes = [AllowAny, IsStaffOrReadOnly]

    def perform_create(self, serializer):
        """Asigna automáticamente el usuario autenticado como creador"""
        serializer.save(creador=self.request.user)

class SuscripcionUsuarioViewSet(viewsets.ModelViewSet):
    queryset = SuscripcionUsuario.objects.all()
    serializer_class = SuscripcionUsuarioSerializer
    permission_classes = [AllowAny, IsStaffOrReadOnly]

    def perform_create(self, serializer):
        serializer.save(id_usuario=self.request.user)

class GeneroViewSet(viewsets.ModelViewSet):
    queryset = Genero.objects.all()
    serializer_class = GeneroSerializer
    permission_classes = [AllowAny, IsStaffOrReadOnly]
    
    def perform_create(self, serializer):
        """Asigna automáticamente el usuario autenticado como creador"""
        serializer.save(creador=self.request.user)

class ContenidoViewSet(viewsets.ModelViewSet):
    queryset = Contenido.objects.all().order_by('-año_estreno')
    serializer_class = ContenidoSerializer
    permission_classes = [AllowAny, IsStaffOrReadOnly]
    filter_backends = [filters.OrderingFilter]
    ordering_fields = ['puntuacion', 'año_estreno']

    def get_queryset(self):
        queryset = super().get_queryset()
        # Filtro por tipo (película o serie)
        pelicula_serie = self.request.query_params.get('pelicula_serie')
        if pelicula_serie:
            queryset = queryset.filter(pelicula_serie=pelicula_serie)
            # Filtros de año
        año_estreno = self.request.query_params.get('año_estreno')
        año_estreno_lt = self.request.query_params.get('año_estreno__lt')
        if año_estreno:
            queryset = queryset.filter(año_estreno=año_estreno)
        if año_estreno_lt:
            queryset = queryset.filter(año_estreno__lt=año_estreno_lt)
        # Filtro por género
        genero = self.request.query_params.get('genero')
        if genero:
            queryset = queryset.filter(contenidogenero__id_genero__nombre=genero)
            # Filtros de puntuación
        puntuacion_gte = self.request.query_params.get('puntuacion__gte')
        if puntuacion_gte:
            try:
                queryset = queryset.filter(puntuacion__gte=float(puntuacion_gte))
            except (ValueError, TypeError):
                pass # Ignorar si el valor no es numérico
        puntuacion_lt = self.request.query_params.get('puntuacion__lt')
        if puntuacion_lt:
            try:
                queryset = queryset.filter(puntuacion__lt=float(puntuacion_lt))
            except (ValueError, TypeError):
                pass # Ignorar si el valor no es numérico
            # Excluir valores nulos en puntuación
        queryset = queryset.exclude(puntuacion__isnull=True)
        # Nuevo: Soporte para limit
        limit = self.request.query_params.get('limit')
        if limit:
            try:
                limit = int(limit)
                queryset = queryset[:limit]
            except ValueError:
                pass # Si no es un número válido, ignorar el limit
        return queryset

    def perform_create(self, serializer):
        serializer.save(creador=self.request.user)

class ContenidoGeneroViewSet(viewsets.ModelViewSet):
    queryset = ContenidoGenero.objects.all()
    serializer_class = ContenidoGeneroSerializer
    permission_classes = [AllowAny, IsStaffOrReadOnly]
    
    def perform_create(self, serializer):
        """Asigna automáticamente el usuario autenticado como creador"""
        serializer.save(creador=self.request.user)

class RepartoViewSet(viewsets.ModelViewSet):
    queryset = Reparto.objects.all()
    serializer_class = RepartoSerializer
    permission_classes = [AllowAny, IsStaffOrReadOnly]
    
    def get_queryset(self):
        queryset = super().get_queryset()
        id_contenido = self.request.query_params.get('id_contenido')
        if id_contenido:
            queryset = queryset.filter(id_contenido=id_contenido)
        return queryset
    
    def perform_create(self, serializer):
        """Asigna automáticamente el usuario autenticado como creador"""
        serializer.save(creador=self.request.user)

class ActorViewSet(viewsets.ModelViewSet):
    queryset = Actor.objects.all()
    serializer_class = ActorSerializer
    permission_classes = [AllowAny, IsStaffOrReadOnly]
    
    def perform_create(self, serializer):
        """Asigna automáticamente el usuario autenticado como creador"""
        serializer.save(creador=self.request.user)

class GaleriaViewSet(viewsets.ModelViewSet):
    queryset = Galeria.objects.all()
    serializer_class = GaleriaSerializer
    permission_classes = [AllowAny, IsStaffOrReadOnly]
    
    def perform_create(self, serializer):
        """Asigna automáticamente el usuario autenticado como creador"""
        serializer.save(creador=self.request.user)

class ComentarioViewSet(viewsets.ModelViewSet):
    queryset = Comentario.objects.all()
    serializer_class = ComentarioSerializer
    permission_classes = [AllowAny, IsAuthenticatedOrReadOnly]

    def get_queryset(self):
        queryset = super().get_queryset()
        id_contenido = self.request.query_params.get('id_contenido')
        if id_contenido:
            queryset = queryset.filter(id_contenido=id_contenido)
        return queryset

    def perform_create(self, serializer):
        serializer.save(id_usuario=self.request.user)

    @action(detail=True, methods=['post'], permission_classes=[IsAuthenticatedOrReadOnly])
    def like(self, request, pk=None):
        comentario = self.get_object()
        comentario.likes += 1
        comentario.save()
        return Response({'likes': comentario.likes})

    @action(detail=True, methods=['post'], permission_classes=[IsAuthenticatedOrReadOnly])
    def dislike(self, request, pk=None):
        comentario = self.get_object()
        comentario.dislikes += 1
        comentario.save()
        return Response({'dislikes': comentario.dislikes})

class NotificacionViewSet(viewsets.ModelViewSet):
    queryset = Notificacion.objects.all()
    serializer_class = NotificacionSerializer
    permission_classes = [AllowAny, IsStaffOrReadOnly]

    def perform_create(self, serializer):
        serializer.save(id_usuario=self.request.user)

class NewsletterViewSet(viewsets.ModelViewSet):
    queryset = Newsletter.objects.all()
    serializer_class = NewsletterSerializer
    permission_classes = [AllowAny, IsStaffOrReadOnly]
    
    def perform_create(self, serializer):
        serializer.save(creador=self.request.user)
    
class NewsletterViewSet(viewsets.ModelViewSet):
    queryset = Newsletter.objects.all()
    serializer_class = NewsletterSerializer
    permission_classes = [AllowAny, IsPremiumOrReadOnly]
    
    def perform_create(self, serializer):
        serializer.save(creador=self.request.user)
        
class ListaViewSet(viewsets.ModelViewSet):
    queryset = Lista.objects.all()
    serializer_class = ListaSerializer
    permission_classes = [AllowAny, IsPremiumOrReadOnly]
    
    def perform_create(self, serializer):
        serializer.save(id_usuario=self.request.user)
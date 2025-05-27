from django.shortcuts import render
from rest_framework import viewsets
from rest_framework.permissions import AllowAny
from rest_framework.decorators import action
from base.models import (
    Perfil, SuscripcionUsuario, PlataformaStreaming, Genero, Contenido, ContenidoGenero,
    Reparto, Actor, Galeria, Valoracion, Comentario, Notificacion, Newsletter,
    CategoriaNoticia, Noticia, NoticiaCategoria, Entrevista, ListaPersonalizada, ListaContenido
)
from .serializers import (
    PerfilSerializer, SuscripcionUsuarioSerializer, PlataformaStreamingSerializer, GeneroSerializer,
    ContenidoSerializer, ContenidoGeneroSerializer, RepartoSerializer, ActorSerializer, GaleriaSerializer,
    ValoracionSerializer, ComentarioSerializer, NotificacionSerializer, NewsletterSerializer,
    CategoriaNoticiaSerializer, NoticiaSerializer, NoticiaCategoriaSerializer, EntrevistaSerializer,
    ListaPersonalizadaSerializer, ListaContenidoSerializer
)
from .permissions import IsStaffOrReadOnly,IsAuthenticatedOrReadOnly

# Create your views here.

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

    def perform_create(self, serializer):
        serializer.save(id_usuario=self.request.user)

# Ejemplo para Noticia (usa IsStaffOrReadOnly)
class NoticiaViewSet(viewsets.ModelViewSet):
    queryset = Noticia.objects.all()
    serializer_class = NoticiaSerializer
    permission_classes = [AllowAny, IsStaffOrReadOnly]

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
    queryset = Contenido.objects.all().order_by('-año_estreno')  # Orden descendente (más reciente primero)
    serializer_class = ContenidoSerializer
    permission_classes = [AllowAny, IsStaffOrReadOnly]

    def get_queryset(self):
        queryset = super().get_queryset()
        pelicula_serie = self.request.query_params.get('pelicula_serie')
        if pelicula_serie:
            queryset = queryset.filter(pelicula_serie=pelicula_serie)
        año_estreno = self.request.query_params.get('anio_estreno')
        año_estreno_lt = self.request.query_params.get('anio_estreno__lt')
        genero = self.request.query_params.get('genero')
        if año_estreno:
            queryset = queryset.filter(año_estreno=año_estreno)
        if año_estreno_lt:
            queryset = queryset.filter(año_estreno__lt=año_estreno_lt)
        if genero:
            queryset = queryset.filter(contenidogenero__id_genero__nombre=genero)    
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

class CategoriaNoticiaViewSet(viewsets.ModelViewSet):
    queryset = CategoriaNoticia.objects.all()
    serializer_class = CategoriaNoticiaSerializer
    permission_classes = [AllowAny, IsStaffOrReadOnly]
    
    def perform_create(self, serializer):
        serializer.save(creador=self.request.user)

class NoticiaCategoriaViewSet(viewsets.ModelViewSet):
    queryset = NoticiaCategoria.objects.all()
    serializer_class = NoticiaCategoriaSerializer
    permission_classes = [AllowAny, IsStaffOrReadOnly]
    
    def perform_create(self, serializer):
        serializer.save(creador=self.request.user)

class EntrevistaViewSet(viewsets.ModelViewSet):
    queryset = Entrevista.objects.all()
    serializer_class = EntrevistaSerializer
    permission_classes = [AllowAny, IsStaffOrReadOnly]
    
    def perform_create(self, serializer):
        serializer.save(creador=self.request.user)

class ListaPersonalizadaViewSet(viewsets.ModelViewSet):
    queryset = ListaPersonalizada.objects.all()
    serializer_class = ListaPersonalizadaSerializer
    permission_classes = [AllowAny, IsStaffOrReadOnly]

    def perform_create(self, serializer):
        serializer.save(id_usuario=self.request.user)

class ListaContenidoViewSet(viewsets.ModelViewSet):
    queryset = ListaContenido.objects.all()
    serializer_class = ListaContenidoSerializer
    permission_classes = [AllowAny, IsStaffOrReadOnly]
    
    def perform_create(self, serializer):
        serializer.save(creador=self.request.user)
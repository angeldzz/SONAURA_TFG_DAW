from rest_framework import serializers
from base.models import (
    Perfil, SuscripcionUsuario, PlataformaStreaming, Genero, Contenido, ContenidoGenero,
    Reparto, Actor, Galeria, Valoracion, Comentario, Notificacion, Newsletter,
    CategoriaNoticia, Noticia, NoticiaCategoria, Entrevista, ListaPersonalizada, ListaContenido
)

class PerfilSerializer(serializers.ModelSerializer):
    id_usuario = serializers.ReadOnlyField(source='id_usuario.username')
    class Meta:
        model = Perfil
        fields = '__all__'

class SuscripcionUsuarioSerializer(serializers.ModelSerializer):
    id_usuario = serializers.ReadOnlyField(source='id_usuario.username')
    class Meta:
        model = SuscripcionUsuario
        fields = '__all__'

class PlataformaStreamingSerializer(serializers.ModelSerializer):
    creador = serializers.ReadOnlyField(source='creador.username')
    class Meta:
        model = PlataformaStreaming
        fields = '__all__'

class GeneroSerializer(serializers.ModelSerializer):
    creador = serializers.ReadOnlyField(source='creador.username')
    class Meta:
        model = Genero
        fields = '__all__'

class ContenidoSerializer(serializers.ModelSerializer):
    creador = serializers.ReadOnlyField(source='creador.username')
    class Meta:
        model = Contenido
        fields = '__all__'

    def to_representation(self, instance):
        rep = super().to_representation(instance)
        # Elimina 'creador' solo en la respuesta
        rep.pop('creador', None)
        return rep

class ContenidoGeneroSerializer(serializers.ModelSerializer):
    creador = serializers.ReadOnlyField(source='creador.username')
    class Meta:
        model = ContenidoGenero
        fields = '__all__'

class RepartoSerializer(serializers.ModelSerializer):
    creador = serializers.ReadOnlyField(source='creador.username')
    class Meta:
        model = Reparto
        fields = '__all__'

class ActorSerializer(serializers.ModelSerializer):
    creador = serializers.ReadOnlyField(source='creador.username')
    class Meta:
        model = Actor
        fields = '__all__'

class GaleriaSerializer(serializers.ModelSerializer):
    creador = serializers.ReadOnlyField(source='creador.username')
    class Meta:
        model = Galeria
        fields = '__all__'

class ValoracionSerializer(serializers.ModelSerializer):
    id_usuario = serializers.ReadOnlyField(source='id_usuario.username')
    class Meta:
        model = Valoracion
        fields = '__all__'

class ComentarioSerializer(serializers.ModelSerializer):
    id_usuario = serializers.ReadOnlyField(source='id_usuario.username')
    class Meta:
        model = Comentario
        fields = '__all__'

class NotificacionSerializer(serializers.ModelSerializer):
    id_usuario = serializers.ReadOnlyField(source='id_usuario.username')
    class Meta:
        model = Notificacion
        fields = '__all__'

class NewsletterSerializer(serializers.ModelSerializer):
    creador = serializers.ReadOnlyField(source='creador.username')
    class Meta:
        model = Newsletter
        fields = '__all__'

class CategoriaNoticiaSerializer(serializers.ModelSerializer):
    creador = serializers.ReadOnlyField(source='creador.username')
    class Meta:
        model = CategoriaNoticia
        fields = '__all__'

class NoticiaSerializer(serializers.ModelSerializer):
    creador = serializers.ReadOnlyField(source='creador.username')
    class Meta:
        model = Noticia
        fields = '__all__'

class NoticiaCategoriaSerializer(serializers.ModelSerializer):
    creador = serializers.ReadOnlyField(source='creador.username')
    class Meta:
        model = NoticiaCategoria
        fields = '__all__'

class EntrevistaSerializer(serializers.ModelSerializer):
    creador = serializers.ReadOnlyField(source='creador.username')
    class Meta:
        model = Entrevista
        fields = '__all__'

class ListaPersonalizadaSerializer(serializers.ModelSerializer):
    id_usuario = serializers.ReadOnlyField(source='id_usuario.username')
    class Meta:
        model = ListaPersonalizada
        fields = '__all__'

class ListaContenidoSerializer(serializers.ModelSerializer):
    creador = serializers.ReadOnlyField(source='creador.username')
    class Meta:
        model = ListaContenido
        fields = '__all__'
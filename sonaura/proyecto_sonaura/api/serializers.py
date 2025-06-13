from rest_framework import serializers
from base.models import (
    Perfil, SuscripcionUsuario, PlataformaStreaming, Genero, Contenido, ContenidoGenero,
    Reparto, Actor, Galeria, Valoracion, Comentario, Notificacion, Newsletter, Noticia, Lista
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
    generos = serializers.SerializerMethodField()
    anio_estreno = serializers.IntegerField(source='año_estreno', read_only=True)

    class Meta:
        model = Contenido
        fields = '__all__'

    def get_generos(self, obj):
        generos = Genero.objects.filter(contenidogenero__id_contenido=obj)
        return GeneroSerializer(generos, many=True).data

    def to_representation(self, instance):
        rep = super().to_representation(instance)
        rep.pop('creador', None)
        return rep

class ContenidoGeneroSerializer(serializers.ModelSerializer):
    creador = serializers.ReadOnlyField(source='creador.username')
    class Meta:
        model = ContenidoGenero
        fields = '__all__'

class RepartoSerializer(serializers.ModelSerializer):
    creador = serializers.ReadOnlyField(source='creador.username')
    actor = serializers.SerializerMethodField()

    class Meta:
        model = Reparto
        fields = ['id_reparto', 'id_contenido', 'actor', 'personaje', 'creador']

    def get_actor(self, obj):
        return {
            'id_actor': obj.id_actor.id_actor,
            'nombre_actor': obj.id_actor.nombre_actor,
            'imagen_actor': obj.id_actor.imagen_actor.url if obj.id_actor.imagen_actor else None
        }

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
    avatar_url = serializers.SerializerMethodField()

    class Meta:
        model = Comentario
        fields = '__all__'

    def get_avatar_url(self, obj):
        try:
            perfil = Perfil.objects.get(id_usuario=obj.id_usuario)
            if perfil.imagen_avatar:
                request = self.context.get('request')
                if request:
                    return request.build_absolute_uri(perfil.imagen_avatar.url)
                return perfil.imagen_avatar.url
            return None
        except Perfil.DoesNotExist:
            return None

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
        

class NoticiaSerializer(serializers.ModelSerializer):
    creador = serializers.ReadOnlyField(source='creador.username')
    class Meta:
        model = Noticia
        fields = '__all__'

class ContenidoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Contenido
        fields = ['id_contenido', 'titulo', 'imagen_poster', 'puntuacion']

class ListaSerializer(serializers.ModelSerializer):
    contenido = ContenidoSerializer(source='id_contenido', read_only=True)

    class Meta:
        model = Lista
        fields = ['id_lista', 'id_usuario', 'contenido']

    def to_representation(self, instance):
        rep = super().to_representation(instance)
        rep['contenido'] = {
            'id_contenido': instance.id_contenido.id_contenido,
            'titulo': instance.id_contenido.titulo,
            'imagen_poster': instance.id_contenido.imagen_poster.url if instance.id_contenido.imagen_poster else None,
            'puntuacion': instance.id_contenido.puntuacion
        } if instance.id_contenido else None
        return rep

from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User

# Subscription model
class SuscripcionUsuario(models.Model):
    id_suscripcion = models.AutoField(primary_key=True)
    id_usuario = models.ForeignKey(User, on_delete=models.CASCADE, related_name='suscripciones')
    tipo_suscripcion = models.CharField(max_length=50)
    es_premium = models.BooleanField(default=False)
    fecha_fin_suscripcion = models.DateField()
    metodo_pago = models.CharField(max_length=50)
    monto_pagado = models.DecimalField(max_digits=10, decimal_places=2)

    class Meta:
        db_table = 'suscripciones_usuario'

# Profile model
class Perfil(models.Model):
    id_perfil = models.AutoField(primary_key=True)
    id_usuario = models.ForeignKey(User, on_delete=models.CASCADE, related_name='perfiles')
    nombre_perfil = models.CharField(max_length=100)
    avatar = models.URLField(max_length=200, blank=True)
    fecha_edicion = models.DateTimeField(auto_now=True)
    fecha_creacion = models.DateTimeField(auto_now_add=True)

    class Meta:
        db_table = 'perfiles'

# Content (Movie/Series) model
class Contenido(models.Model):
    id_contenido = models.AutoField(primary_key=True)
    tipo_contenido = models.CharField(max_length=50)  # e.g., 'Pelicula', 'Serie'
    titulo = models.CharField(max_length=200)
    sinopsis = models.TextField()
    fecha_estreno = models.DateField()
    duracion = models.IntegerField()  # in minutes
    director = models.CharField(max_length=100)
    guionistas = models.CharField(max_length=200)
    clasificacion = models.CharField(max_length=10)  # e.g., 'PG-13', 'R'
    imagen_poster = models.URLField(max_length=200)
    imagen_fondo = models.URLField(max_length=200)
    puntuacion_imdb = models.FloatField()
    es_exclusivo = models.BooleanField(default=False)
    fecha_edicion = models.DateTimeField(auto_now=True)
    fecha_creacion = models.DateTimeField(auto_now_add=True)

    class Meta:
        db_table = 'contenidos'

# Genre model
class Genero(models.Model):
    id_genero = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=50, unique=True)

    class Meta:
        db_table = 'generos'

# Content-Genre relationship (Many-to-Many)
class ContenidoGenero(models.Model):
    id_contenido = models.ForeignKey(Contenido, on_delete=models.CASCADE, related_name='generos')
    id_genero = models.ForeignKey(Genero, on_delete=models.CASCADE, related_name='contenidos')

    class Meta:
        db_table = 'contenidos_generos'
        unique_together = ('id_contenido', 'id_genero')

# Cast model
class Reparto(models.Model):
    id_reparto = models.AutoField(primary_key=True)
    id_contenido = models.ForeignKey(Contenido, on_delete=models.CASCADE, related_name='reparto')
    nombre_actor = models.CharField(max_length=100)
    personaje = models.CharField(max_length=100)
    imagen_actor = models.URLField(max_length=200, blank=True)

    class Meta:
        db_table = 'reparto'

# Gallery model
class Galeria(models.Model):
    id_imagen = models.AutoField(primary_key=True)
    id_contenido = models.ForeignKey(Contenido, on_delete=models.CASCADE, related_name='galeria')
    url_imagen = models.URLField(max_length=200)
    descripcion_imagen = models.TextField(blank=True)

    class Meta:
        db_table = 'galeria'

# Rating model
class Valoracion(models.Model):
    id_valoracion = models.AutoField(primary_key=True)
    id_usuario = models.ForeignKey(User, on_delete=models.CASCADE, related_name='valoraciones')
    id_contenido = models.ForeignKey(Contenido, on_delete=models.CASCADE, related_name='valoraciones')
    puntuacion = models.FloatField()
    fecha_edicion = models.DateTimeField(auto_now=True)
    fecha_creacion = models.DateTimeField(auto_now_add=True)

    class Meta:
        db_table = 'valoraciones'
        unique_together = ('id_usuario', 'id_contenido')

# Comment model
class Comentario(models.Model):
    id_comentario = models.AutoField(primary_key=True)
    id_usuario = models.ForeignKey(User, on_delete=models.CASCADE, related_name='comentarios')
    id_contenido = models.ForeignKey(Contenido, on_delete=models.CASCADE, related_name='comentarios')
    comentario = models.TextField()
    fecha_comentario = models.DateTimeField(auto_now_add=True)
    likes = models.IntegerField(default=0)
    dislikes = models.IntegerField(default=0)
    id_comentario_padre = models.ForeignKey('self', null=True, blank=True, on_delete=models.CASCADE, related_name='respuestas')
    fecha_edicion = models.DateTimeField(auto_now=True)
    fecha_creacion = models.DateTimeField(auto_now_add=True)

    class Meta:
        db_table = 'comentarios'

# Notification model
class Notificacion(models.Model):
    id_notificacion = models.AutoField(primary_key=True)
    id_usuario = models.ForeignKey(User, on_delete=models.CASCADE, related_name='notificaciones')
    tipo_notificacion = models.CharField(max_length=50)
    mensaje = models.TextField()
    fecha_envio = models.DateTimeField(auto_now_add=True)
    leida = models.BooleanField(default=False)
    fecha_publicacion = models.DateTimeField(auto_now_add=True)

    class Meta:
        db_table = 'notificaciones'

# Newsletter subscription model
class Newsletter(models.Model):
    id_suscriptor = models.AutoField(primary_key=True)
    id_usuario = models.ForeignKey(User, on_delete=models.CASCADE, related_name='newsletters')
    fechas_suscripcion = models.DateTimeField(auto_now_add=True)
    estado = models.CharField(max_length=20, default='activo')

    class Meta:
        db_table = 'newsletter'

# News model
class Noticia(models.Model):
    id_noticia = models.AutoField(primary_key=True)
    titulo = models.CharField(max_length=200)
    contenido = models.TextField()
    autor = models.CharField(max_length=100)
    categoria = models.CharField(max_length=50)
    imagen_principal = models.URLField(max_length=200)
    vistas = models.IntegerField(default=0)
    tiempo_lectura = models.IntegerField()  # in minutes
    es_exclusiva = models.BooleanField(default=False)
    fecha_edicion = models.DateTimeField(auto_now=True)
    fecha_publicacion = models.DateTimeField(auto_now_add=True)

    class Meta:
        db_table = 'noticias'

# News Category model
class CategoriaNoticia(models.Model):
    id_categoria = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=50, unique=True)

    class Meta:
        db_table = 'categorias_noticia'

# News-Category relationship (Many-to-Many)
class NoticiasCategorias(models.Model):
    id_noticia = models.ForeignKey(Noticia, on_delete=models.CASCADE, related_name='categorias')
    id_categoria = models.ForeignKey(CategoriaNoticia, on_delete=models.CASCADE, related_name='noticias')

    class Meta:
        db_table = 'noticias_categorias'
        unique_together = ('id_noticia', 'id_categoria')

# Interview model
class Entrevista(models.Model):
    id_entrevista = models.AutoField(primary_key=True)
    titulo = models.CharField(max_length=200)
    imagen = models.URLField(max_length=200)
    duracion = models.IntegerField()  # in minutes
    descripcion = models.TextField()
    vistas = models.IntegerField(default=0)
    tiempo_lectura = models.IntegerField()  # in minutes
    es_exclusiva = models.BooleanField(default=False)
    fecha_edicion = models.DateTimeField(auto_now=True)
    fecha_publicacion = models.DateTimeField(auto_now_add=True)

    class Meta:
        db_table = 'entrevistas'

# Recommendation model
class Recomendacion(models.Model):
    id_recomendacion = models.AutoField(primary_key=True)
    id_contenido = models.ForeignKey(Contenido, on_delete=models.CASCADE, related_name='recomendaciones')
    descripcion = models.TextField()
    puntuacion = models.FloatField()
    fecha_edicion = models.DateTimeField(auto_now=True)
    fecha_creacion = models.DateTimeField(auto_now_add=True)

    class Meta:
        db_table = 'recomendaciones'

# Personalized List model
class ListaPersonalizada(models.Model):
    id_lista = models.AutoField(primary_key=True)
    id_perfil = models.ForeignKey(Perfil, on_delete=models.CASCADE, related_name='listas')
    nombre_lista = models.CharField(max_length=100)
    fecha_edicion = models.DateTimeField(auto_now=True)
    fecha_creacion = models.DateTimeField(auto_now_add=True)

    class Meta:
        db_table = 'lista_personalizadas'

# Personalized List-Content relationship (Many-to-Many)
class ListaPersonalizadaContenido(models.Model):
    id_lista = models.ForeignKey(ListaPersonalizada, on_delete=models.CASCADE, related_name='contenidos')
    id_contenido = models.ForeignKey(Contenido, on_delete=models.CASCADE, related_name='listas')
    id_usuario = models.ForeignKey(User, on_delete=models.CASCADE, related_name='lista_contenidos')

    class Meta:
        db_table = 'lista_personalizadas_contenidos'
        unique_together = ('id_lista', 'id_contenido')

# Streaming Platform model
class PlataformaStreaming(models.Model):
    id_plataforma = models.AutoField(primary_key=True)
    id_contenido = models.ForeignKey(Contenido, on_delete=models.CASCADE, related_name='plataformas')
    nombre_plataforma = models.CharField(max_length=100)
    url_contenido = models.URLField(max_length=200)
    fecha_lanzamiento = models.DateField()
    es_exclusivo = models.BooleanField(default=False)
    fecha_edicion = models.DateTimeField(auto_now=True)

    class Meta:
        db_table = 'plataformas_streaming'
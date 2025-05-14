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
    # Cambiado a OneToOneField ya que un usuario solo tiene un perfil
    id_usuario = models.OneToOneField(User, on_delete=models.CASCADE, related_name='perfil')
    nombre_perfil = models.CharField(max_length=100)
    avatar = models.ImageField(upload_to='avatares/', blank=True)
    fecha_edicion = models.DateTimeField(auto_now=True)
    fecha_creacion = models.DateTimeField(auto_now_add=True)

    class Meta:
        db_table = 'perfiles'

# Genre model
class Genero(models.Model):
    id_genero = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=50, unique=True)

    class Meta:
        db_table = 'generos'
        verbose_name_plural = 'generos'

# Content (Movie/Series) model
class Contenido(models.Model):
    id_contenido = models.AutoField(primary_key=True)
    tipo_contenido = models.CharField(max_length=50)  # e.g., 'Pelicula', 'Serie'
    titulo = models.CharField(max_length=200)
    sinopsis = models.TextField()
    fecha_estreno = models.DateField()
    duracion = models.DurationField()  # Cambiado a DurationField
    director = models.TextField()  # Cambiado a TextField para permitir múltiples directores
    guionistas = models.TextField()  # Cambiado a TextField
    clasificacion = models.CharField(max_length=10)  # e.g., 'PG-13', 'R'
    imagen_poster = models.ImageField(upload_to='posters/')
    imagen_fondo = models.ImageField(upload_to='fondos/')
    puntuacion_imdb = models.FloatField()
    es_exclusivo = models.BooleanField(default=False)
    fecha_edicion = models.DateTimeField(auto_now=True)
    fecha_creacion = models.DateTimeField(auto_now_add=True)
    # Relación many-to-many simplificada
    generos = models.ManyToManyField(Genero, related_name='contenidos')

    class Meta:
        db_table = 'contenidos'
        indexes = [
            models.Index(fields=['tipo_contenido']),
            models.Index(fields=['titulo']),
            models.Index(fields=['fecha_estreno']),
        ]

# Cast model
class Reparto(models.Model):
    id_reparto = models.AutoField(primary_key=True)
    id_contenido = models.ForeignKey(Contenido, on_delete=models.CASCADE, related_name='reparto')
    nombre_actor = models.CharField(max_length=100)
    personaje = models.CharField(max_length=100)
    imagen_actor = models.ImageField(upload_to='actores/', blank=True)

    class Meta:
        db_table = 'reparto'

# Gallery model
class Galeria(models.Model):
    id_imagen = models.AutoField(primary_key=True)
    id_contenido = models.ForeignKey(Contenido, on_delete=models.CASCADE, related_name='galeria')
    imagen = models.ImageField(upload_to='galeria/')
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
    fecha_comentario = models.DateTimeField(default=timezone.now)
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
    fecha_envio = models.DateTimeField(default=timezone.now)
    leida = models.BooleanField(default=False)
    fecha_publicacion = models.DateTimeField(default=timezone.now)

    class Meta:
        db_table = 'notificaciones'

# Newsletter subscription model
class Newsletter(models.Model):
    id_suscriptor = models.AutoField(primary_key=True)
    id_usuario = models.ForeignKey(User, on_delete=models.CASCADE, related_name='newsletters')
    fechas_suscripcion = models.DateTimeField(default=timezone.now)
    estado = models.CharField(max_length=20, default='activo')

    class Meta:
        db_table = 'newsletter'

# News Category model
class CategoriaNoticia(models.Model):
    id_categoria = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=50, unique=True)

    class Meta:
        db_table = 'categorias_noticia'
        verbose_name_plural = 'categorias_noticia'

# News model
class Noticia(models.Model):
    id_noticia = models.AutoField(primary_key=True)
    titulo = models.CharField(max_length=200)
    contenido = models.TextField()
    autor = models.CharField(max_length=100)
    imagen_principal = models.ImageField(upload_to='noticias/')
    vistas = models.IntegerField(default=0)
    tiempo_lectura = models.DurationField()  # Cambiado a DurationField
    es_exclusiva = models.BooleanField(default=False)
    fecha_edicion = models.DateTimeField(auto_now=True)
    fecha_publicacion = models.DateTimeField(default=timezone.now)
    # Relación many-to-many simplificada
    categorias = models.ManyToManyField(CategoriaNoticia, related_name='noticias')

    class Meta:
        db_table = 'noticias'
        indexes = [
            models.Index(fields=['titulo']),
            models.Index(fields=['fecha_publicacion']),
        ]

# Interview model
class Entrevista(models.Model):
    id_entrevista = models.AutoField(primary_key=True)
    titulo = models.CharField(max_length=200)
    imagen = models.ImageField(upload_to='entrevistas/')
    duracion = models.DurationField()  # Cambiado a DurationField
    descripcion = models.TextField()
    vistas = models.IntegerField(default=0)
    tiempo_lectura = models.DurationField()  # Cambiado a DurationField
    es_exclusiva = models.BooleanField(default=False)
    fecha_edicion = models.DateTimeField(auto_now=True)
    fecha_publicacion = models.DateTimeField(default=timezone.now)

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
    # Relación many-to-many simplificada
    contenidos = models.ManyToManyField(Contenido, related_name='listas')

    class Meta:
        db_table = 'lista_personalizadas'

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
from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User

# Auth User model (ya existe en Django)
# Django proporciona este modelo por defecto

# Profile model
class Perfil(models.Model):
    id_perfil = models.AutoField(primary_key=True, verbose_name='ID de Perfil')
    id_usuario = models.OneToOneField(User, on_delete=models.CASCADE, related_name='perfil', null=True, blank=True, verbose_name='Usuario')
    nombre_perfil = models.CharField(max_length=100, verbose_name='Nombre del Perfil')
    imagen_avatar = models.ImageField(upload_to='avatares/', null=True, blank=True, verbose_name='Avatar')
    alt_imagen_avatar = models.CharField(max_length=255, null=True, blank=True, verbose_name='Texto alternativo del avatar')
    fecha_edicion = models.DateTimeField(auto_now=True, verbose_name='Fecha de edición')
    fecha_creacion = models.DateTimeField(auto_now_add=True, verbose_name='Fecha de creación')

    class Meta:
        db_table = 'perfiles'
        verbose_name = 'Perfil'
        verbose_name_plural = 'Perfiles'
    
    def __str__(self):
        return self.nombre_perfil
    
# Subscription model
class SuscripcionUsuario(models.Model):
    id_suscripcion = models.AutoField(primary_key=True, verbose_name='ID de Suscripción')
    id_usuario = models.ForeignKey(User, on_delete=models.CASCADE, related_name='suscripciones', null=True, blank=True, verbose_name='Usuario')
    tipo_suscripcion = models.CharField(max_length=50, verbose_name='Tipo de Suscripción')
    es_premium = models.BooleanField(default=False, verbose_name='¿Es Premium?')
    fecha_fin_suscripcion = models.DateField(verbose_name='Fecha de fin de suscripción')
    metodo_pago = models.CharField(max_length=50, verbose_name='Método de pago')
    monto_pagado = models.DecimalField(max_digits=10, decimal_places=2, verbose_name='Monto pagado')

    class Meta:
        db_table = 'suscripciones_usuario'
        verbose_name = 'Suscripción de Usuario'
        verbose_name_plural = 'Suscripciones de Usuario'
    
    def __str__(self):
        return str(self.id_suscripcion)

# Streaming Platform model
class PlataformaStreaming(models.Model):
    id_plataforma = models.AutoField(primary_key=True, verbose_name='ID de Plataforma')
    id_contenido = models.ForeignKey('Contenido', on_delete=models.CASCADE, related_name='plataformas', null=True, blank=True, verbose_name='Contenido')
    nombre_plataforma = models.CharField(max_length=100, verbose_name='Nombre de la Plataforma')
    imagen_logo_plataforma = models.ImageField(upload_to='logos/', null=True, blank=True, verbose_name='Logo de la Plataforma')
    alt_imagen_logo_plataforma = models.CharField(max_length=255, null=True, blank=True, verbose_name='Texto alternativo del logo')
    tipo_acceso = models.CharField(max_length=50, verbose_name='Tipo de acceso')
    precio = models.DecimalField(max_digits=10, decimal_places=2, verbose_name='Precio')

    class Meta:
        db_table = 'plataformas_streaming'
        verbose_name = 'Plataforma de Streaming'
        verbose_name_plural = 'Plataformas de Streaming'
    
    def __str__(self):
        return self.nombre_plataforma
    
# Genre model
class Genero(models.Model):
    id_genero = models.AutoField(primary_key=True, verbose_name='ID de Género')
    nombre = models.CharField(max_length=50, unique=True, verbose_name='Nombre')

    class Meta:
        db_table = 'generos'
        verbose_name = 'Género'
        verbose_name_plural = 'Géneros'
    
    def __str__(self):
        return self.nombre
    
# Content (Movie/Series) model
class Contenido(models.Model):
    id_contenido = models.AutoField(primary_key=True, verbose_name='ID de Contenido')
    titulo = models.CharField(max_length=200, verbose_name='Título')
    TIPO_CONTENIDO_CHOICES = [
        ('pelicula', 'pelicula'),
        ('serie', 'serie'),
    ]
    pelicula_serie = models.CharField(
        max_length=10,
        choices=TIPO_CONTENIDO_CHOICES,
        verbose_name='Película/Serie'
    )
    eslogan = models.CharField(max_length=50, verbose_name='Eslogan')  # Cambiado de tipo_contenido a eslogan
    sinopsis = models.TextField(verbose_name='Sinopsis')
    año_estreno = models.IntegerField(verbose_name='Año de estreno')
    duracion = models.DurationField(verbose_name='Duración')
    director = models.CharField(max_length=200, verbose_name='Director',null=True, blank=True)
    guionistas = models.TextField(verbose_name='Guionistas',null=True, blank=True)
    clasificacion = models.CharField(max_length=10, verbose_name='Clasificación',null=True, blank=True)
    imagen_poster = models.ImageField(upload_to='posters/', null=True, blank=True, verbose_name='Póster')
    alt_imagen_poster = models.CharField(max_length=255, null=True, blank=True, verbose_name='Texto alternativo del póster')
    imagen_fondo = models.ImageField(upload_to='fondos/', null=True, blank=True, verbose_name='Imagen de fondo')
    alt_imagen_fondo = models.CharField(max_length=255, null=True, blank=True, verbose_name='Texto alternativo de la imagen de fondo')
    puntuacion = models.FloatField(verbose_name='Puntuación',null=True, blank=True)
    es_exclusivo = models.BooleanField(default=False, verbose_name='¿Es exclusivo?')
    fecha_edicion = models.DateTimeField(auto_now=True, verbose_name='Fecha de edición')
    fecha_creacion = models.DateTimeField(auto_now_add=True, verbose_name='Fecha de creación')

    class Meta:
        db_table = 'contenidos'
        verbose_name = 'Contenido'
        verbose_name_plural = 'Contenidos'
        indexes = [
            models.Index(fields=['eslogan']),
            models.Index(fields=['titulo']),
        ]

    def __str__(self):
        return self.titulo

# Content-Genre relationship (N:M)
class ContenidoGenero(models.Model):
    id_contenido = models.ForeignKey(Contenido, on_delete=models.CASCADE, null=True, blank=True, verbose_name='Contenido')
    id_genero = models.ForeignKey(Genero, on_delete=models.CASCADE, null=True, blank=True, verbose_name='Género')

    class Meta:
        db_table = 'contenidos_generos'
        unique_together = ('id_contenido', 'id_genero')
        verbose_name = 'Género de Contenido'
        verbose_name_plural = 'Géneros de Contenido'

    def __str__(self):
        return str(self.id_contenido)

# Cast model
class Reparto(models.Model):
    id_reparto = models.AutoField(primary_key=True, verbose_name='ID de Reparto')
    id_contenido = models.ForeignKey(Contenido, on_delete=models.CASCADE, related_name='reparto', null=True, blank=True, verbose_name='Contenido')
    
    class Meta:
        db_table = 'reparto'
        verbose_name = 'Reparto'
        verbose_name_plural = 'Repartos'
    
    def __str__(self):
        if self.id_contenido:
            return f"Reparto de '{self.id_contenido.titulo}' (ID: {self.id_reparto})"
        return f"Reparto sin contenido (ID: {self.id_reparto})"
# Actor model
class Actor(models.Model):
    id_actor = models.AutoField(primary_key=True, verbose_name='ID de Actor')
    id_reparto = models.ForeignKey(Reparto, on_delete=models.CASCADE, related_name='actores', null=True, blank=True, verbose_name='Reparto')
    nombre_actor = models.CharField(max_length=100, verbose_name='Nombre del Actor')
    personaje = models.CharField(max_length=100, verbose_name='Personaje')
    imagen_actor = models.ImageField(upload_to='actores/', null=True, blank=True, verbose_name='Imagen del Actor')

    class Meta:
        db_table = 'actor'
        verbose_name = 'Actor'
        verbose_name_plural = 'Actores'
    
    def __str__(self):
        return self.nombre_actor

# Gallery model
class Galeria(models.Model):
    id_imagen = models.AutoField(primary_key=True, verbose_name='ID de Imagen')
    id_contenido = models.ForeignKey(Contenido, on_delete=models.CASCADE, related_name='galeria', null=True, blank=True, verbose_name='Contenido')
    url_imagen = models.ImageField(upload_to='galeria/', null=True, blank=True, verbose_name='Imagen')
    alt_imagen = models.CharField(max_length=255, null=True, blank=True, verbose_name='Texto alternativo de la imagen')

    class Meta:
        db_table = 'galeria'
        verbose_name = 'Galería'
        verbose_name_plural = 'Galerías'
    
    def __str__(self):
        return self.alt_imagen
    
# Rating model
class Valoracion(models.Model):
    id_valoracion = models.AutoField(primary_key=True, verbose_name='ID de Valoración')
    id_usuario = models.ForeignKey(User, on_delete=models.CASCADE, related_name='valoraciones', null=True, blank=True, verbose_name='Usuario')
    id_contenido = models.ForeignKey(Contenido, on_delete=models.CASCADE, related_name='valoraciones', null=True, blank=True, verbose_name='Contenido')
    puntuacion = models.FloatField(verbose_name='Puntuación')
    texto_valoracion = models.TextField(blank=True, verbose_name='Texto de la valoración')
    fecha_edicion = models.DateTimeField(auto_now=True, verbose_name='Fecha de edición')
    fecha_creacion = models.DateTimeField(auto_now_add=True, verbose_name='Fecha de creación')

    class Meta:
        db_table = 'valoraciones'
        unique_together = ('id_usuario', 'id_contenido')
        verbose_name = 'Valoración'
        verbose_name_plural = 'Valoraciones'
    
    def __str__(self):
        return str(self.id_valoracion)
# Comment model
class Comentario(models.Model):
    id_comentario = models.AutoField(primary_key=True, verbose_name='ID de Comentario')
    id_usuario = models.ForeignKey(User, on_delete=models.CASCADE, related_name='comentarios', null=True, blank=True, verbose_name='Usuario')
    id_contenido = models.ForeignKey(Contenido, on_delete=models.CASCADE, related_name='comentarios', null=True, blank=True, verbose_name='Contenido')
    comentario = models.TextField(verbose_name='Comentario')
    fecha_comentario = models.DateTimeField(default=timezone.now, verbose_name='Fecha del comentario')
    likes = models.IntegerField(default=0, verbose_name='Me gusta')
    dislikes = models.IntegerField(default=0, verbose_name='No me gusta')
    id_comentario_padre = models.ForeignKey('self', null=True, blank=True, on_delete=models.CASCADE, related_name='respuestas', verbose_name='Comentario padre')
    fecha_edicion = models.DateTimeField(auto_now=True, verbose_name='Fecha de edición')
    fecha_creacion = models.DateTimeField(auto_now_add=True, verbose_name='Fecha de creación')

    class Meta:
        db_table = 'comentarios'
        verbose_name = 'Comentario'
        verbose_name_plural = 'Comentarios'
    
    def __str__(self):
        return self.comentario
    
# Notification model
class Notificacion(models.Model):
    id_notificacion = models.AutoField(primary_key=True, verbose_name='ID de Notificación')
    id_usuario = models.ForeignKey(User, on_delete=models.CASCADE, related_name='notificaciones', null=True, blank=True, verbose_name='Usuario')
    tipo_notificacion = models.CharField(max_length=50, verbose_name='Tipo de notificación')
    mensaje = models.TextField(verbose_name='Mensaje')
    fecha_envio = models.DateTimeField(default=timezone.now, verbose_name='Fecha de envío')
    leida = models.BooleanField(default=False, verbose_name='Leída')
    fecha_publicacion = models.DateTimeField(default=timezone.now, verbose_name='Fecha de publicación')

    class Meta:
        db_table = 'notificaciones'
        verbose_name = 'Notificación'
        verbose_name_plural = 'Notificaciones'

    def __str__(self):
        return self.mensaje
    
# Newsletter subscription model (sin relaciones como se indicó)
class Newsletter(models.Model):
    id_suscriptor = models.AutoField(primary_key=True, verbose_name='ID de Suscriptor')
    correo = models.EmailField(max_length=254, verbose_name='Correo electrónico')
    fechas_suscripcion = models.DateTimeField(default=timezone.now, verbose_name='Fecha de suscripción')
    estado = models.CharField(max_length=20, default='activo', verbose_name='Estado')

    class Meta:
        db_table = 'newsletter'
        verbose_name = 'Suscripción al Newsletter'
        verbose_name_plural = 'Suscripciones al Newsletter'
    
    def __str__(self):
        return self.correo
    
# News Category model
class CategoriaNoticia(models.Model):
    id_categoria = models.AutoField(primary_key=True, verbose_name='ID de Categoría')
    nombre = models.CharField(max_length=50, unique=True, verbose_name='Nombre')

    class Meta:
        db_table = 'categorias_noticia'
        verbose_name = 'Categoría de Noticia'
        verbose_name_plural = 'Categorías de Noticia'
    
    def __str__(self):
        return self.nombre
    
# News model
class Noticia(models.Model):
    id_noticia = models.AutoField(primary_key=True, verbose_name='ID de Noticia')
    titulo = models.CharField(max_length=200, verbose_name='Título')
    contenido = models.TextField(verbose_name='Contenido')
    categoria = models.CharField(max_length=100, verbose_name='Categoría')
    imagen_principal = models.ImageField(upload_to='noticias/', null=True, blank=True, verbose_name='Imagen principal')
    alt_imagen_principal = models.CharField(max_length=255, null=True, blank=True, verbose_name='Texto alternativo de la imagen principal')
    vistas = models.IntegerField(default=0, verbose_name='Vistas')
    tiempo_lectura = models.DurationField(verbose_name='Tiempo de lectura')
    es_exclusiva = models.BooleanField(default=False, verbose_name='¿Es exclusiva?')
    fecha_edicion = models.DateTimeField(auto_now=True, verbose_name='Fecha de edición')
    fecha_publicacion = models.DateTimeField(default=timezone.now, verbose_name='Fecha de publicación')

    class Meta:
        db_table = 'noticias'
        verbose_name = 'Noticia'
        verbose_name_plural = 'Noticias'
        indexes = [
            models.Index(fields=['titulo']),
            models.Index(fields=['fecha_publicacion']),
        ]

    def __str__(self):
        return self.titulo

# News-Category relationship (N:M)
class NoticiaCategoria(models.Model):
    id_noticias = models.ForeignKey(Noticia, on_delete=models.CASCADE, null=True, blank=True, verbose_name='Noticia')
    id_categoria = models.ForeignKey(CategoriaNoticia, on_delete=models.CASCADE, null=True, blank=True, verbose_name='Categoría')

    class Meta:
        db_table = 'noticias_categorias'
        unique_together = ('id_noticias', 'id_categoria')
        verbose_name = 'Categoría de Noticia'
        verbose_name_plural = 'Categorías de Noticia'

    def __str__(self):
        return str(self.id_noticias)

# Interview model
class Entrevista(models.Model):
    id_entrevista = models.AutoField(primary_key=True, verbose_name='ID de Entrevista')
    titulo = models.CharField(max_length=200, verbose_name='Título')
    contenido = models.TextField(verbose_name='Contenido')
    imagen = models.ImageField(upload_to='entrevistas/', null=True, blank=True, verbose_name='Imagen')
    alt_imagen = models.CharField(max_length=255, null=True, blank=True, verbose_name='Texto alternativo de la imagen')
    duracion = models.DurationField(verbose_name='Duración')
    vistas = models.IntegerField(default=0, verbose_name='Vistas')
    fecha_edicion = models.DateTimeField(auto_now=True, verbose_name='Fecha de edición')
    fecha_publicacion = models.DateTimeField(default=timezone.now, verbose_name='Fecha de publicación')

    class Meta:
        db_table = 'entrevistas'
        verbose_name = 'Entrevista'
        verbose_name_plural = 'Entrevistas'

    def __str__(self):
        return self.titulo

# Personalized List model
class ListaPersonalizada(models.Model):
    id_lista = models.AutoField(primary_key=True, verbose_name='ID de Lista')
    id_usuario = models.ForeignKey(User, on_delete=models.CASCADE, related_name='listas', null=True, blank=True, verbose_name='Usuario')
    nombre_lista = models.CharField(max_length=100, verbose_name='Nombre de la lista')
    fecha_edicion = models.DateTimeField(auto_now=True, verbose_name='Fecha de edición')
    fecha_creacion = models.DateTimeField(auto_now_add=True, verbose_name='Fecha de creación')

    class Meta:
        db_table = 'listas_personalizadas'
        verbose_name = 'Lista Personalizada'
        verbose_name_plural = 'Listas Personalizadas'

    def __str__(self):
        return self.nombre_lista

# List-Content relationship (N:M)
class ListaContenido(models.Model):
    id_lista = models.ForeignKey(ListaPersonalizada, on_delete=models.CASCADE, null=True, blank=True, verbose_name='Lista')
    id_contenido = models.ForeignKey(Contenido, on_delete=models.CASCADE, null=True, blank=True, verbose_name='Contenido')

    class Meta:
        db_table = 'lista_personalizadas_contenidos'
        unique_together = ('id_lista', 'id_contenido')
        verbose_name = 'Contenido de Lista Personalizada'
        verbose_name_plural = 'Contenidos de Listas Personalizadas'

    def __str__(self):
        return str(self.id_lista) + " " + str(self.id_contenido)
from django.contrib import admin
from django.utils.html import format_html
from .models import (
    SuscripcionUsuario, Perfil, Genero, Contenido, Reparto, 
    Galeria, Valoracion, Comentario, Notificacion, Newsletter,
    CategoriaNoticia, Noticia, Entrevista, Recomendacion, 
    ListaPersonalizada, PlataformaStreaming
)

# Inlines para relaciones
class RepartoInline(admin.TabularInline):
    model = Reparto
    extra = 1
    verbose_name = "Actor/Actriz"
    verbose_name_plural = "Reparto"

class GaleriaInline(admin.TabularInline):
    model = Galeria
    extra = 1
    verbose_name = "Imagen"
    verbose_name_plural = "Galería de imágenes"
    
class ValoracionInline(admin.TabularInline):
    model = Valoracion
    extra = 0
    verbose_name = "Valoración"
    verbose_name_plural = "Valoraciones"
    readonly_fields = ('id_usuario', 'puntuacion', 'fecha_creacion')
    can_delete = False
    
class ComentarioInline(admin.TabularInline):
    model = Comentario
    extra = 0
    verbose_name = "Comentario"
    verbose_name_plural = "Comentarios"
    readonly_fields = ('id_usuario', 'comentario', 'fecha_comentario')
    can_delete = False

class PlataformaStreamingInline(admin.TabularInline):
    model = PlataformaStreaming
    extra = 1
    verbose_name = "Plataforma"
    verbose_name_plural = "Plataformas de streaming"

# Admin para Suscripciones
@admin.register(SuscripcionUsuario)
class SuscripcionUsuarioAdmin(admin.ModelAdmin):
    list_display = ('id_usuario', 'tipo_suscripcion', 'es_premium', 'fecha_fin_suscripcion', 'monto_pagado')
    list_filter = ('tipo_suscripcion', 'es_premium')
    search_fields = ('id_usuario__username', 'id_usuario__email')
    fieldsets = (
        ('Información de Usuario', {
            'fields': ('id_usuario',)
        }),
        ('Detalles de Suscripción', {
            'fields': ('tipo_suscripcion', 'es_premium', 'fecha_fin_suscripcion')
        }),
        ('Información de Pago', {
            'fields': ('metodo_pago', 'monto_pagado')
        }),
    )

# Admin para Perfiles
@admin.register(Perfil)
class PerfilAdmin(admin.ModelAdmin):
    list_display = ('nombre_perfil', 'usuario_email', 'mostrar_avatar', 'fecha_creacion')
    search_fields = ('nombre_perfil', 'id_usuario__username', 'id_usuario__email')
    readonly_fields = ('fecha_creacion', 'fecha_edicion', 'mostrar_avatar')
    
    def usuario_email(self, obj):
        return obj.id_usuario.email
    usuario_email.short_description = 'Email del usuario'
    
    def mostrar_avatar(self, obj):
        if obj.avatar:
            return format_html('<img src="{}" width="50" height="50" />', obj.avatar.url)
        return "Sin avatar"
    mostrar_avatar.short_description = 'Avatar'

# Admin para Géneros
@admin.register(Genero)
class GeneroAdmin(admin.ModelAdmin):
    list_display = ('nombre', 'cantidad_contenidos')
    search_fields = ('nombre',)
    
    def cantidad_contenidos(self, obj):
        return obj.contenidos.count()
    cantidad_contenidos.short_description = 'Cantidad de contenidos'

# Admin para Contenidos
@admin.register(Contenido)
class ContenidoAdmin(admin.ModelAdmin):
    list_display = ('titulo', 'tipo_contenido', 'fecha_estreno', 'puntuacion_imdb', 'es_exclusivo')
    list_filter = ('tipo_contenido', 'generos', 'es_exclusivo')
    search_fields = ('titulo', 'director', 'sinopsis')
    filter_horizontal = ('generos',)
    readonly_fields = ('fecha_creacion', 'fecha_edicion', 'mostrar_poster', 'mostrar_fondo')
    inlines = [RepartoInline, GaleriaInline, PlataformaStreamingInline, ValoracionInline, ComentarioInline]
    
    fieldsets = (
        ('Información Básica', {
            'fields': ('titulo', 'tipo_contenido', 'sinopsis', 'fecha_estreno')
        }),
        ('Detalles Técnicos', {
            'fields': ('duracion', 'director', 'guionistas', 'clasificacion')
        }),
        ('Categorización', {
            'fields': ('generos', 'puntuacion_imdb', 'es_exclusivo')
        }),
        ('Imágenes', {
            'fields': ('imagen_poster', 'mostrar_poster', 'imagen_fondo', 'mostrar_fondo')
        }),
        ('Metadatos', {
            'fields': ('fecha_creacion', 'fecha_edicion'),
            'classes': ('collapse',)
        }),
    )
    
    def mostrar_poster(self, obj):
        if obj.imagen_poster:
            return format_html('<img src="{}" width="100" />', obj.imagen_poster.url)
        return "Sin imagen"
    mostrar_poster.short_description = 'Vista previa del póster'
    
    def mostrar_fondo(self, obj):
        if obj.imagen_fondo:
            return format_html('<img src="{}" width="200" />', obj.imagen_fondo.url)
        return "Sin imagen"
    mostrar_fondo.short_description = 'Vista previa del fondo'

# Admin para Reparto
@admin.register(Reparto)
class RepartoAdmin(admin.ModelAdmin):
    list_display = ('nombre_actor', 'personaje', 'contenido_titulo')
    list_filter = ('id_contenido__tipo_contenido',)
    search_fields = ('nombre_actor', 'personaje', 'id_contenido__titulo')
    
    def contenido_titulo(self, obj):
        return obj.id_contenido.titulo
    contenido_titulo.short_description = 'Contenido'

# Admin para Galería
@admin.register(Galeria)
class GaleriaAdmin(admin.ModelAdmin):
    list_display = ('id_contenido', 'mostrar_imagen', 'descripcion_corta')
    search_fields = ('id_contenido__titulo', 'descripcion_imagen')
    
    def mostrar_imagen(self, obj):
        if obj.imagen:
            return format_html('<img src="{}" width="100" />', obj.imagen.url)
        return "Sin imagen"
    mostrar_imagen.short_description = 'Imagen'
    
    def descripcion_corta(self, obj):
        return obj.descripcion_imagen[:50] + '...' if len(obj.descripcion_imagen) > 50 else obj.descripcion_imagen
    descripcion_corta.short_description = 'Descripción'

# Admin para Valoraciones
@admin.register(Valoracion)
class ValoracionAdmin(admin.ModelAdmin):
    list_display = ('id_usuario', 'id_contenido', 'puntuacion', 'fecha_creacion')
    list_filter = ('puntuacion',)
    search_fields = ('id_usuario__username', 'id_contenido__titulo')
    readonly_fields = ('fecha_creacion', 'fecha_edicion')

# Admin para Comentarios
@admin.register(Comentario)
class ComentarioAdmin(admin.ModelAdmin):
    list_display = ('id_usuario', 'id_contenido', 'comentario_corto', 'fecha_comentario', 'likes', 'dislikes')
    list_filter = ('fecha_comentario',)
    search_fields = ('id_usuario__username', 'id_contenido__titulo', 'comentario')
    readonly_fields = ('fecha_creacion', 'fecha_edicion')
    
    def comentario_corto(self, obj):
        return obj.comentario[:50] + '...' if len(obj.comentario) > 50 else obj.comentario
    comentario_corto.short_description = 'Comentario'

# Admin para Notificaciones
@admin.register(Notificacion)
class NotificacionAdmin(admin.ModelAdmin):
    list_display = ('id_usuario', 'tipo_notificacion', 'mensaje_corto', 'fecha_envio', 'leida')
    list_filter = ('tipo_notificacion', 'leida', 'fecha_envio')
    search_fields = ('id_usuario__username', 'mensaje')
    
    def mensaje_corto(self, obj):
        return obj.mensaje[:50] + '...' if len(obj.mensaje) > 50 else obj.mensaje
    mensaje_corto.short_description = 'Mensaje'

# Admin para Newsletter
@admin.register(Newsletter)
class NewsletterAdmin(admin.ModelAdmin):
    list_display = ('id_usuario', 'fechas_suscripcion', 'estado')
    list_filter = ('estado', 'fechas_suscripcion')
    search_fields = ('id_usuario__username', 'id_usuario__email')

# Admin para Categorías de Noticias
@admin.register(CategoriaNoticia)
class CategoriaNoticiaAdmin(admin.ModelAdmin):
    list_display = ('nombre', 'cantidad_noticias')
    search_fields = ('nombre',)
    
    def cantidad_noticias(self, obj):
        return obj.noticias.count()
    cantidad_noticias.short_description = 'Cantidad de noticias'

# Admin para Noticias
@admin.register(Noticia)
class NoticiaAdmin(admin.ModelAdmin):
    list_display = ('titulo', 'autor', 'mostrar_categorias', 'fecha_publicacion', 'vistas')
    list_filter = ('categorias', 'es_exclusiva', 'fecha_publicacion')
    search_fields = ('titulo', 'contenido', 'autor')
    filter_horizontal = ('categorias',)
    readonly_fields = ('fecha_edicion', 'mostrar_imagen')
    
    fieldsets = (
        ('Información Básica', {
            'fields': ('titulo', 'contenido', 'autor')
        }),
        ('Categorización', {
            'fields': ('categorias', 'es_exclusiva')
        }),
        ('Detalles', {
            'fields': ('imagen_principal', 'mostrar_imagen', 'tiempo_lectura')
        }),
        ('Estadísticas', {
            'fields': ('vistas',)
        }),
        ('Fechas', {
            'fields': ('fecha_publicacion', 'fecha_edicion')
        }),
    )
    
    def mostrar_imagen(self, obj):
        if obj.imagen_principal:
            return format_html('<img src="{}" width="200" />', obj.imagen_principal.url)
        return "Sin imagen"
    mostrar_imagen.short_description = 'Vista previa de la imagen'
    
    def mostrar_categorias(self, obj):
        return ", ".join([c.nombre for c in obj.categorias.all()])
    mostrar_categorias.short_description = 'Categorías'

# Admin para Entrevistas
@admin.register(Entrevista)
class EntrevistaAdmin(admin.ModelAdmin):
    list_display = ('titulo', 'duracion_formateada', 'vistas', 'es_exclusiva', 'fecha_publicacion')
    list_filter = ('es_exclusiva', 'fecha_publicacion')
    search_fields = ('titulo', 'descripcion')
    readonly_fields = ('fecha_edicion', 'mostrar_imagen')
    
    fieldsets = (
        ('Información Básica', {
            'fields': ('titulo', 'descripcion')
        }),
        ('Detalles', {
            'fields': ('imagen', 'mostrar_imagen', 'duracion', 'tiempo_lectura')
        }),
        ('Estadísticas', {
            'fields': ('vistas', 'es_exclusiva')
        }),
        ('Fechas', {
            'fields': ('fecha_publicacion', 'fecha_edicion')
        }),
    )
    
    def mostrar_imagen(self, obj):
        if obj.imagen:
            return format_html('<img src="{}" width="200" />', obj.imagen.url)
        return "Sin imagen"
    mostrar_imagen.short_description = 'Vista previa de la imagen'
    
    def duracion_formateada(self, obj):
        total_seconds = int(obj.duracion.total_seconds())
        hours, remainder = divmod(total_seconds, 3600)
        minutes, seconds = divmod(remainder, 60)
        if hours:
            return f"{hours}h {minutes}m"
        else:
            return f"{minutes}m {seconds}s"
    duracion_formateada.short_description = 'Duración'

# Admin para Recomendaciones
@admin.register(Recomendacion)
class RecomendacionAdmin(admin.ModelAdmin):
    list_display = ('id_contenido', 'puntuacion', 'descripcion_corta', 'fecha_creacion')
    list_filter = ('puntuacion',)
    search_fields = ('id_contenido__titulo', 'descripcion')
    readonly_fields = ('fecha_creacion', 'fecha_edicion')
    
    def descripcion_corta(self, obj):
        return obj.descripcion[:50] + '...' if len(obj.descripcion) > 50 else obj.descripcion
    descripcion_corta.short_description = 'Descripción'

# Admin para Listas Personalizadas
@admin.register(ListaPersonalizada)
class ListaPersonalizadaAdmin(admin.ModelAdmin):
    list_display = ('nombre_lista', 'perfil_usuario', 'cantidad_contenidos', 'fecha_creacion')
    search_fields = ('nombre_lista', 'id_perfil__nombre_perfil', 'id_perfil__id_usuario__username')
    filter_horizontal = ('contenidos',)
    readonly_fields = ('fecha_creacion', 'fecha_edicion')
    
    def perfil_usuario(self, obj):
        return obj.id_perfil.nombre_perfil
    perfil_usuario.short_description = 'Perfil'
    
    def cantidad_contenidos(self, obj):
        return obj.contenidos.count()
    cantidad_contenidos.short_description = 'Cantidad de contenidos'

# Admin para Plataformas de Streaming
@admin.register(PlataformaStreaming)
class PlataformaStreamingAdmin(admin.ModelAdmin):
    list_display = ('nombre_plataforma', 'id_contenido', 'fecha_lanzamiento', 'es_exclusivo')
    list_filter = ('nombre_plataforma', 'es_exclusivo')
    search_fields = ('nombre_plataforma', 'id_contenido__titulo')
    readonly_fields = ('fecha_edicion',)

# Personalización del sitio de administración
admin.site.site_header = 'Administración de Plataforma de Streaming'
admin.site.site_title = 'Panel de Administración'
admin.site.index_title = 'Bienvenido al Panel de Administración'

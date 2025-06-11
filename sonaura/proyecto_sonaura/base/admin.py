from django.contrib import admin
from django.utils.html import format_html
from .models import (
    Perfil, SuscripcionUsuario, PlataformaStreaming, Genero, Contenido, 
    ContenidoGenero, Reparto, Actor, Galeria, Valoracion, Comentario, 
    Notificacion, Newsletter, Noticia, Lista
)

# Inlines para relaciones
class ContenidoGeneroInline(admin.TabularInline):
    model = ContenidoGenero
    extra = 1
    verbose_name = "Género"
    verbose_name_plural = "Géneros"
    fields = ('id_genero',)

    def save_model(self, request, obj, form, change):
        if not obj.creador_id:
            obj.creador = request.user
        super().save_model(request, obj, form, change)

class RepartoInline(admin.TabularInline):
    model = Reparto
    extra = 1
    fields = ('id_contenido',)

    def save_model(self, request, obj, form, change):
        if not obj.creador_id:
            obj.creador = request.user
        super().save_model(request, obj, form, change)

class GaleriaInline(admin.TabularInline):
    model = Galeria
    extra = 1
    fields = ('url_imagen', 'alt_imagen')

    def save_model(self, request, obj, form, change):
        if not obj.creador_id:
            obj.creador = request.user
        super().save_model(request, obj, form, change)

class PlataformaStreamingInline(admin.TabularInline):
    model = PlataformaStreaming
    extra = 1
    fields = ('nombre_plataforma', 'imagen_logo_plataforma', 'alt_imagen_logo_plataforma', 'tipo_acceso', 'precio')

    def save_model(self, request, obj, form, change):
        if not obj.creador_id:
            obj.creador = request.user
        super().save_model(request, obj, form, change)

class ActorInline(admin.TabularInline):
    model = Actor
    extra = 1
    fields = ('nombre_actor', 'personaje', 'imagen_actor')

    def save_model(self, request, obj, form, change):
        if not obj.creador_id:
            obj.creador = request.user
        super().save_model(request, obj, form, change)

# Admin para modelos relacionados con usuarios
@admin.register(Perfil)
class PerfilAdmin(admin.ModelAdmin):
    list_display = ('id_perfil','id_usuario','nombre_perfil','nombre_usuario','apellidos','telefono','pais','fecha_nacimiento','mostrar_avatar','fecha_creacion',)
    search_fields = ('nombre_perfil','nombre_usuario','apellidos','id_usuario__username','telefono','pais',)
    list_filter = ('pais', 'fecha_creacion', 'fecha_edicion')
    readonly_fields = ('fecha_creacion', 'fecha_edicion')

    def mostrar_avatar(self, obj):
        if obj.imagen_avatar:
            return format_html('<img src="{}" width="50" height="50" style="object-fit: cover; border-radius: 50%;" />', obj.imagen_avatar.url)
        return "Sin avatar"
    mostrar_avatar.short_description = "Avatar"

@admin.register(SuscripcionUsuario)
class SuscripcionUsuarioAdmin(admin.ModelAdmin):
    list_display = ('id_suscripcion', 'id_usuario', 'tipo_suscripcion', 'es_premium', 'fecha_fin_suscripcion', 'monto_pagado')
    list_filter = ('es_premium', 'tipo_suscripcion', 'fecha_fin_suscripcion')
    search_fields = ('id_usuario__username', 'tipo_suscripcion')
    date_hierarchy = 'fecha_fin_suscripcion'

# Admin para modelos de catálogo de contenido
@admin.register(Genero)
class GeneroAdmin(admin.ModelAdmin):
    list_display = ('id_genero', 'nombre')
    search_fields = ('nombre',)

    def save_model(self, request, obj, form, change):
        if not obj.creador_id:
            obj.creador = request.user
        super().save_model(request, obj, form, change)

@admin.register(Contenido)
class ContenidoAdmin(admin.ModelAdmin):
    list_display = ('id_contenido', 'titulo','pelicula_serie', 'eslogan', 'año_estreno', 'mostrar_poster', 'puntuacion', 'es_exclusivo')
    list_filter = ('eslogan', 'año_estreno', 'es_exclusivo', 'fecha_creacion', 'pelicula_serie')
    search_fields = ('titulo', 'director', 'sinopsis')
    date_hierarchy = 'fecha_creacion'
    inlines = [ContenidoGeneroInline, RepartoInline, GaleriaInline, PlataformaStreamingInline]
    fieldsets = (
        ('Información básica', {
            'fields': ('titulo', 'pelicula_serie', 'eslogan', 'sinopsis', 'año_estreno', 'duracion')
        }),
        ('Producción', {
            'fields': ('director', 'guionistas')
        }),
        ('Presentación', {
            'fields': ('imagen_poster', 'alt_imagen_poster', 'imagen_fondo', 'alt_imagen_fondo')
        }),
        ('Detalles adicionales', {
            'fields': ('clasificacion', 'puntuacion', 'es_exclusivo')
        }),
    )

    def save_model(self, request, obj, form, change):
        if not obj.creador_id:
            obj.creador = request.user
        super().save_model(request, obj, form, change)

    def mostrar_poster(self, obj):
        if obj.imagen_poster:
            return format_html('<img src="{}" width="50" />', obj.imagen_poster.url)
        return "Sin poster"
    mostrar_poster.short_description = "Poster"

@admin.register(Reparto)
class RepartoAdmin(admin.ModelAdmin):
    list_display = ('id_reparto', 'id_contenido', 'id_actor', 'personaje')
    search_fields = ('personaje', 'id_contenido__titulo', 'id_actor__nombre_actor')

@admin.register(Actor)
class ActorAdmin(admin.ModelAdmin):
    list_display = ('id_actor', 'nombre_actor', 'mostrar_imagen')
    search_fields = ('nombre_actor',)

    def mostrar_imagen(self, obj):
        if obj.imagen_actor:
            return format_html('<img src="{}" width="50" />', obj.imagen_actor.url)
        return "Sin imagen"
    mostrar_imagen.short_description = "Imagen"

@admin.register(PlataformaStreaming)
class PlataformaStreamingAdmin(admin.ModelAdmin):
    list_display = ('id_plataforma', 'nombre_plataforma', 'mostrar_logo', 'tipo_acceso', 'precio')
    search_fields = ('nombre_plataforma',)
    list_filter = ('tipo_acceso',)

    def mostrar_logo(self, obj):
        if obj.imagen_logo_plataforma:
            return format_html('<img src="{}" width="50" />', obj.imagen_logo_plataforma.url)
        return "Sin logo"
    mostrar_logo.short_description = "Logo"

@admin.register(Galeria)
class GaleriaAdmin(admin.ModelAdmin):
    list_display = ('id_imagen', 'id_contenido', 'mostrar_imagen')
    search_fields = ('id_contenido__titulo', 'alt_imagen')

    def mostrar_imagen(self, obj):
        if obj.url_imagen:
            return format_html('<img src="{}" width="100" />', obj.url_imagen.url)
        return "Sin imagen"
    mostrar_imagen.short_description = "Imagen"

# Admin para interacción de usuarios
@admin.register(Valoracion)
class ValoracionAdmin(admin.ModelAdmin):
    list_display = ('id_valoracion', 'id_usuario', 'id_contenido', 'puntuacion', 'fecha_creacion')
    list_filter = ('puntuacion', 'fecha_creacion')
    search_fields = ('id_usuario__username', 'id_contenido__titulo', 'texto_valoracion')
    date_hierarchy = 'fecha_creacion'

@admin.register(Comentario)
class ComentarioAdmin(admin.ModelAdmin):
    list_display = ('id_comentario', 'id_usuario', 'id_contenido', 'fecha_comentario', 'likes', 'dislikes', 'tiene_respuestas')
    list_filter = ('fecha_comentario',)
    search_fields = ('id_usuario__username', 'id_contenido__titulo', 'comentario')
    date_hierarchy = 'fecha_comentario'

    def tiene_respuestas(self, obj):
        return obj.respuestas.exists()
    tiene_respuestas.boolean = True
    tiene_respuestas.short_description = "Tiene respuestas"

@admin.register(Notificacion)
class NotificacionAdmin(admin.ModelAdmin):
    list_display = ('id_notificacion', 'id_usuario', 'tipo_notificacion', 'fecha_envio', 'leida')
    list_filter = ('tipo_notificacion', 'leida', 'fecha_envio')
    search_fields = ('id_usuario__username', 'mensaje')
    date_hierarchy = 'fecha_envio'
    actions = ['marcar_como_leidas']

    def marcar_como_leidas(self, request, queryset):
        queryset.update(leida=True)
    marcar_como_leidas.short_description = "Marcar notificaciones seleccionadas como leídas"

@admin.register(Lista)
class ListaAdmin(admin.ModelAdmin):
    list_display = ('id_usuario', 'id_contenido')

    def contar_contenidos(self, obj):
        return Lista.objects.filter(id_usuario=obj.id_usuario, nombre_lista=obj.nombre_lista).count()
    contar_contenidos.short_description = "Contenidos"

# Admin para noticias y contenido editorial
@admin.register(Newsletter)
class NewsletterAdmin(admin.ModelAdmin):
    list_display = ('id_suscriptor', 'correo', 'fechas_suscripcion', 'estado')
    list_filter = ('estado', 'fechas_suscripcion')
    search_fields = ('correo',)
    date_hierarchy = 'fechas_suscripcion'
    actions = ['activar_suscripciones', 'desactivar_suscripciones']

    def save_model(self, request, obj, form, change):
        if not obj.creador_id:
            obj.creador = request.user
        super().save_model(request, obj, form, change)

    def activar_suscripciones(self, request, queryset):
        queryset.update(estado='activo')
    activar_suscripciones.short_description = "Activar suscripciones seleccionadas"

    def desactivar_suscripciones(self, request, queryset):
        queryset.update(estado='inactivo')
    desactivar_suscripciones.short_description = "Desactivar suscripciones seleccionadas"

@admin.register(Noticia)
class NoticiaAdmin(admin.ModelAdmin):
    list_display = ('id_noticia', 'titulo', 'categoria', 'mostrar_imagen', 'vistas', 'es_exclusiva', 'fecha_publicacion')
    list_filter = ('es_exclusiva', 'fecha_publicacion', 'categoria')
    search_fields = ('titulo', 'contenido')
    date_hierarchy = 'fecha_publicacion'
    fieldsets = (
        ('Contenido', {
            'fields': ('titulo', 'contenido', 'categoria')
        }),
        ('Multimedia', {
            'fields': ('imagen_principal', 'alt_imagen_principal')
        }),
        ('Métricas', {
            'fields': ('vistas', 'tiempo_lectura')
        }),
        ('Publicación', {
            'fields': ('es_exclusiva', 'fecha_publicacion', 'creador')
        }),
    )
    readonly_fields = ('creador',)

    # Method to automatically set the creator
    def save_model(self, request, obj, form, change):
        if not obj.creador_id:
            obj.creador = request.user
        super().save_model(request, obj, form, change)

    # Method to display the image in the admin list view
    def mostrar_imagen(self, obj):
        if obj.imagen_principal:
            return format_html('<img src="{}" width="100" />', obj.imagen_principal.url)
        return "Sin imagen"
    mostrar_imagen.short_description = "Imagen"

# Registrar modelos de relación sin admin personalizado
admin.site.register(ContenidoGenero)
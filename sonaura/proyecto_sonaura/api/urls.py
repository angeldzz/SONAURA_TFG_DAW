# api/urls.py
from django.urls import path, include
from rest_framework.routers import DefaultRouter
from . import views

# Crear un enrutador para las APIs
router = DefaultRouter()
router.register(r'perfiles', views.PerfilViewSet)
router.register(r'suscripciones', views.SuscripcionUsuarioViewSet)
router.register(r'plataformas', views.PlataformaStreamingViewSet)
router.register(r'generos', views.GeneroViewSet)
router.register(r'contenidos', views.ContenidoViewSet)
router.register(r'contenidos-genero', views.ContenidoGeneroViewSet)
router.register(r'repartos', views.RepartoViewSet)
router.register(r'actores', views.ActorViewSet)
router.register(r'galerias', views.GaleriaViewSet)
router.register(r'valoraciones', views.ValoracionViewSet)
router.register(r'comentarios', views.ComentarioViewSet)
router.register(r'notificaciones', views.NotificacionViewSet)
router.register(r'newsletters', views.NewsletterViewSet)
router.register(r'noticias', views.NoticiaViewSet)
router.register(r'entrevistas', views.EntrevistaViewSet)
router.register(r'listas-personalizadas', views.ListaPersonalizadaViewSet)
router.register(r'listas-contenido', views.ListaContenidoViewSet)

urlpatterns = [
    path("", include(router.urls)),  # Incluye las rutas de la API
]
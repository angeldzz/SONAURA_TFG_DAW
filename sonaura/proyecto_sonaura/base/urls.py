from django.urls import path,include
from django.views.generic import TemplateView
from .views import *
urlpatterns = [
        path('',Inicio.as_view(),name='inicio'),#ruta a la pagina de inicio
        path("crear-usuario/", CrearUsuarioView.as_view(), name="crear_usuario"),
        path('peliculas',Peliculas.as_view(),name='peliculas'),#ruta a la pagina de peliculas
        path('series',Series.as_view(),name='series'),#ruta a la pagina de series
        path('detalles/<int:pk>/', Detalle_Pelicula_Serie.as_view(), name='detalles'),  # ruta a la página de detalles con pk
        path('noticias',Noticias.as_view(),name='noticias'),#ruta a la pagina de noticias
        path('noticia/<int:id_noticia>/', DetalleNoticia.as_view(), name='detalle_noticia'),
        path('premium',Premium.as_view(),name='premium'),#ruta a la pagina de noticias
        path('perfil',PerfilView.as_view(),name='perfil'),#ruta a la pagina de noticias
        path('cambiar-password/', CambiarPasswordView.as_view(), name='cambiar_password'),
        path('checkout/', CheckoutView.as_view(), name='checkout'),
        path('success/', SuccessView.as_view(), name='success'),
        path('cancel/', CancelView.as_view(), name='cancel'),
        path('legal/aviso/', TemplateView.as_view(template_name="base/aviso_legal.html"), name='aviso_legal'),
        path('legal/privacidad/', TemplateView.as_view(template_name="base/privacidad.html"), name='privacidad'),
        path('legal/cookies/', TemplateView.as_view(template_name="base/cookies.html"), name='cookies'),
]

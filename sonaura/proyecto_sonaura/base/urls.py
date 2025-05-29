from django.urls import path,include
from .views import *
urlpatterns = [
        path('',Inicio.as_view(),name='inicio'),#ruta a la pagina de inicio
        path("crear-usuario/", CrearUsuarioView.as_view(), name="crear_usuario"),
        path('peliculas',Peliculas.as_view(),name='peliculas'),#ruta a la pagina de peliculas
        path('series',Series.as_view(),name='series'),#ruta a la pagina de series
        path('detalles/<int:pk>/', Detalle_Pelicula_Serie.as_view(), name='detalles'),  # ruta a la página de detalles con pk
        path('noticias',Noticias.as_view(),name='noticias'),#ruta a la pagina de noticias
        path('premium',Premium.as_view(),name='premium'),#ruta a la pagina de noticias
        path('perfil',Perfil.as_view(),name='perfil'),#ruta a la pagina de noticias
        path('checkout/', CheckoutView.as_view(), name='checkout'),
        path('success/', SuccessView.as_view(), name='success'),
        path('cancel/', CancelView.as_view(), name='cancel'),
]

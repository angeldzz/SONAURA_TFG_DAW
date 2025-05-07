from django.urls import path,include
from .views import *
urlpatterns = [
        path('',Inicio.as_view(),name='inicio'),#ruta a la pagina de inicio
        path('peliculas',Peliculas.as_view(),name='peliculas'),#ruta a la pagina de peliculas
        path('series',Series.as_view(),name='series'),#ruta a la pagina de series
        path('detalles',Detalle_Pelicula_Serie.as_view(),name='detalles'),#ruta a la pagina de detalles
        path('noticias',Noticias.as_view(),name='noticias'),#ruta a la pagina de noticias
]

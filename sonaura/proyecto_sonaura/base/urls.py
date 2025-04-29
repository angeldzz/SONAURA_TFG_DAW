from django.urls import path,include
from .views import *
urlpatterns = [
        path('',Inicio.as_view(),name='inicio'),#ruta a la pagina de inicio
        path('detalles',Detalle_Pelicula_Serie.as_view(),name='detalles'),#ruta a la pagina de inicio
]

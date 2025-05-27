from django.views.generic import TemplateView,ListView,DetailView,CreateView,DeleteView,UpdateView
from django.views.generic import View
from django.contrib.auth.models import User
from django.shortcuts import render, redirect
from django.contrib.auth import login
from django.urls import reverse
import logging
from django.contrib import messages
from .models import Contenido, ContenidoGenero, Genero, SuscripcionUsuario, Galeria
from django.utils import timezone

# Configurar logging
logger = logging.getLogger(__name__)
class Inicio(TemplateView):
    template_name = "base/inicio.html"

class CrearUsuarioView(View):
    template_name = 'base/registro.html'  # Nombre del template

    def get(self, request, *args, **kwargs):
        #metodo obligatorio si queremos que tenga post
        return render(request, self.template_name)

    def post(self, request, *args, **kwargs):
        # Maneja la solicitud POST: procesa el formulario
        username = request.POST.get('username')
        first_name = request.POST.get('first_name')
        last_name = request.POST.get('last_name')
        email = request.POST.get('email')
        password = request.POST.get('password')
        confirm_password = request.POST.get('confirm_password')

        contexto = {
            "usuario":username,
            "nombre":first_name,
            "apellidos":last_name,
            "email":email,
            "contra":password,
            "verficiar_contra":confirm_password,
        }
        # Validar que las contraseñas coincidan
        if password != confirm_password:
            messages.error(request, "Las contraseñas no coinciden.")
            return render(request, self.template_name, context=contexto)

        # Verificar si el usuario ya existe
        if User.objects.filter(username=username).exists():
            messages.error(request, "El nombre de usuario ya está en uso.")
            return render(request, self.template_name, context=contexto)


        if User.objects.filter(email=email).exists():
            messages.error(request, "El correo electrónico ya está registrado.")
            return render(request, self.template_name, context=contexto)


        # Crear el nuevo usuario
        try:
            user = User.objects.create_user(username=username,first_name=first_name,last_name=last_name, email=email, password=password)
            user.save()
            # Iniciar sesión automáticamente al usuario después de registrarse (opcional)
            login(request, user)
            messages.success(request, "Usuario creado exitosamente.")
            return redirect(reverse('inicio'))  # Redirige a la página principal
        except Exception as e:
            messages.error(request, f"Error al crear el usuario: {str(e)}")
            return render(request, self.template_name, context=contexto)


class Noticias(TemplateView):
    template_name = "base/noticias.html"

class Peliculas(TemplateView):
    template_name = "base/peliculas.html"

class Series(TemplateView):
    template_name = "base/series.html"

class Detalle_Pelicula_Serie(DetailView):
    model = Contenido
    template_name = "base/detalle_pelicula_serie.html"
    context_object_name = "contenido"

    def get_context_data(self, **kwargs):
        # Recoger contexto
        context = super().get_context_data(**kwargs)
        # Recoger generos asociados al contenido
        generos = Genero.objects.filter(contenidogenero__id_contenido=self.object)
        # Recoger plataformas asociados al contenido
        plataformas = self.object.plataformas.all() if hasattr(self.object, 'plataformas') else []
        # Recoger imágenes de la galería asociadas al contenido
        imagenes_galeria = Galeria.objects.filter(id_contenido=self.object)
        # Diccionario de URLs oficiales
        url_dict = {
            "Netflix": "https://www.netflix.com/",
            "HBO Max": "https://www.hbomax.com/",
            "Prime Video": "https://www.primevideo.com/",
            "Disney+": "https://www.disneyplus.com/",
        }

        # Creamos una lista de plataformas con su url (si corresponde)
        plataformas_info = []
        for plataforma in plataformas:
            url = url_dict.get(plataforma.nombre_plataforma)
            plataformas_info.append({
                "nombre_plataforma": plataforma.nombre_plataforma,
                "imagen_logo_plataforma": plataforma.imagen_logo_plataforma,
                "alt_imagen_logo_plataforma": plataforma.alt_imagen_logo_plataforma,
                "tipo_acceso": plataforma.tipo_acceso,
                "precio": plataforma.precio,
                "url": url,
            })

        context['plataformas'] = plataformas_info
        context['generos'] = generos
        context['imagenes_galeria'] = imagenes_galeria
        return context
    
class Login(TemplateView):
    template_name = "base/login.html"
    
class Premium(TemplateView):
    template_name = "base/premium.html"

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        es_premium = False
        tiene_plan_mensual = False
        diferencia_precio = None

# Verifica si el usuario está autenticado
        if self.request.user.is_authenticated:
# Busca una suscripción premium vigente asociada al usuario
            suscripcion = SuscripcionUsuario.objects.filter(
                id_usuario=self.request.user,
                es_premium=True,
                fecha_fin_suscripcion__gte=timezone.now().date()
            ).first()
            if suscripcion:
                es_premium = True
                if suscripcion.tipo_suscripcion.lower() == 'mensual':
                    tiene_plan_mensual = True
                    diferencia_precio = float(89.99) - float(suscripcion.monto_pagado)
        context['es_premium'] = es_premium
        context['tiene_plan_mensual'] = tiene_plan_mensual
        context['diferencia_precio'] = diferencia_precio
        return context
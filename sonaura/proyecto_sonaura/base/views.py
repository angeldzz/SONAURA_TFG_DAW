from django.views.generic import TemplateView,ListView,DetailView,CreateView,DeleteView,UpdateView
from django.views.generic import View
from django.contrib.auth.models import User
from django.shortcuts import render, redirect
from django.contrib.auth import login
from django.urls import reverse
import logging
from django.contrib import messages

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

class Detalle_Pelicula_Serie(TemplateView):
    template_name = "base/detalle_pelicula_serie.html"
    
class Login(TemplateView):
    template_name = "base/login.html"
    
class Premium(TemplateView):
    template_name = "base/premium.html"
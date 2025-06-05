from django.views.generic import TemplateView, ListView, DetailView, CreateView, DeleteView, UpdateView
from django.views.generic import View
from django.contrib.auth.models import User
from django.shortcuts import render, redirect
from django.contrib.auth import login
from django.urls import reverse
import logging
from django.contrib import messages
from .models import Contenido, ContenidoGenero, Genero, SuscripcionUsuario, Galeria, Perfil
from django.utils import timezone
from django.conf import settings
import stripe
from django.contrib.auth.decorators import login_required
from django.http import JsonResponse
from datetime import datetime, timedelta
import json
from django.utils.decorators import method_decorator
from django.contrib.auth.mixins import LoginRequiredMixin

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

        # Añade la puntuación multiplicada por 2
        context['puntuacion_x2'] = self.object.puntuacion * 2 if self.object.puntuacion is not None else None

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

class PerfilView(TemplateView):
    template_name = "base/perfil.html"

    def get(self, request, *args, **kwargs):
        if not request.user.is_authenticated:
            return redirect(reverse('login'))
        perfil, created = Perfil.objects.get_or_create(id_usuario=request.user)
        context = {
            'perfil': perfil,
        }
        return render(request, self.template_name, context)

    def post(self, request, *args, **kwargs):
        if not request.user.is_authenticated:
            return redirect(reverse('login'))
        perfil, created = Perfil.objects.get_or_create(id_usuario=request.user)

        perfil.nombre_perfil = request.POST.get('nombre_perfil', perfil.nombre_perfil)
        perfil.nombre_usuario = request.POST.get('nombre_usuario', perfil.nombre_usuario)
        perfil.apellidos = request.POST.get('apellidos', perfil.apellidos)
        perfil.telefono = request.POST.get('telefono', perfil.telefono)
        perfil.biografia = request.POST.get('biografia', perfil.biografia)
        perfil.fecha_nacimiento = request.POST.get('fecha_nacimiento', perfil.fecha_nacimiento)
        perfil.pais = request.POST.get('pais', perfil.pais)

        if 'imagen_avatar' in request.FILES:
            perfil.imagen_avatar = request.FILES['imagen_avatar']
            perfil.alt_imagen_avatar = request.POST.get('alt_imagen_avatar', perfil.alt_imagen_avatar)

        perfil.save()
        messages.success(request, "Perfil actualizado exitosamente.")
        return redirect(reverse('perfil'))
    
    

@method_decorator(login_required, name='dispatch')
class CheckoutView(View):
    template_name = 'base/checkout.html'

    def get(self, request, *args, **kwargs):
        plan = request.GET.get('plan')
        if plan not in ['mensual', 'anual']:
            messages.error(request, "Plan no válido.")
            return redirect('premium')
        return render(request, self.template_name, {
            'plan': plan,
            'STRIPE_PUBLIC_KEY': settings.STRIPE_PUBLIC_KEY,  
            'csrf_token': request.COOKIES.get('csrftoken'),  
        })

    def post(self, request, *args, **kwargs):
        stripe.api_key = settings.STRIPE_SECRET_KEY

        plan = request.GET.get('plan')

        if plan not in ['mensual', 'anual']:
            messages.error(request, "Plan no válido.")
            return redirect('premium')

        prices = {
            'mensual': {
                'price_id': settings.STRIPE_PRICE_ID_MONTHLY,
                'amount': 9.99,
                'interval': 'month',
                'duration': 30
            },
            'anual': {
                'price_id': settings.STRIPE_PRICE_ID_YEARLY,
                'amount': 89.99,
                'interval': 'year',
                'duration': 365
            }
        }

        try:
            existing_subscription = SuscripcionUsuario.objects.filter(
                id_usuario=request.user,
                es_premium=True,
                fecha_fin_suscripcion__gte=timezone.now().date()
            ).first()

            if existing_subscription:
                messages.warning(request, "Ya tienes una suscripción activa.")
                return redirect('premium')

            customer = stripe.Customer.list(email=request.user.email, limit=1).data

            if not customer:
                customer = stripe.Customer.create(
                    email=request.user.email,
                    metadata={'user_id': request.user.id}
                )
            else:
                customer = customer[0]

            checkout_session = stripe.checkout.Session.create(
                customer=customer.id,
                payment_method_types=['card'],
                line_items=[{
                    'price': prices[plan]['price_id'],
                    'quantity': 1,
                }],
                mode='subscription',
                success_url=request.build_absolute_uri(
    reverse('success') + '?session_id={CHECKOUT_SESSION_ID}'
),

                cancel_url=request.build_absolute_uri('/cancel'),
                metadata={'plan': plan}
            )

            return JsonResponse({'sessionId': checkout_session.id})

        except Exception as e:
            return JsonResponse({'error': f"Error al iniciar el pago: {str(e)}"}, status=400)

@method_decorator(login_required, name='dispatch')
class SuccessView(TemplateView):
    template_name = 'base/success.html'

    def get(self, request, *args, **kwargs):
        session_id = request.GET.get('session_id')
        try:
            session = stripe.checkout.Session.retrieve(session_id)
            subscription = stripe.Subscription.retrieve(session.subscription)
            
            if subscription.status != 'active':
                messages.error(self.request, "La suscripción no se pudo activar.")
                return redirect('premium')

            plan = session.metadata.get('plan')
            duration = 30 if plan == 'mensual' else 365
            end_date = datetime.now() + timedelta(days=duration)

            SuscripcionUsuario.objects.update_or_create(
                id_usuario=self.request.user,
                defaults={
                    'tipo_suscripcion': plan,
                    'es_premium': True,
                    'fecha_fin_suscripcion': end_date,
                    'metodo_pago': 'stripe',
                    'monto_pagado': 9.99 if plan == 'mensual' else 89.99
                }
            )

            messages.success(self.request, f"¡Suscripción {plan} activada con éxito!")
            return self.render_to_response({'plan': plan})
        except Exception as e:
            messages.error(self.request, f"Error al procesar el pago: {str(e)}")
            return redirect('premium')

class CancelView(TemplateView):
    template_name = 'base/cancel.html'

    def get(self, request, *args, **kwargs):
        messages.warning(self.request, "El pago fue cancelado.")
        return self.render_to_response({})


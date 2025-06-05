from django.views.generic import TemplateView, ListView, DetailView, CreateView, DeleteView, UpdateView
from django.views.generic import View
from django.contrib.auth.models import User
from django.shortcuts import render, redirect, get_object_or_404
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
    template_name = 'base/registro.html'

    def get(self, request, *args, **kwargs):
        return render(request, self.template_name)

    def post(self, request, *args, **kwargs):
        username = request.POST.get('username')
        first_name = request.POST.get('first_name')
        last_name = request.POST.get('last_name')
        email = request.POST.get('email')
        password = request.POST.get('password')
        confirm_password = request.POST.get('confirm_password')

        contexto = {
            "usuario": username,
            "nombre": first_name,
            "apellidos": last_name,
            "email": email,
            "contra": password,
            "verficiar_contra": confirm_password,
        }

        if password != confirm_password:
            messages.error(request, "Las contraseñas no coinciden.")
            return render(request, self.template_name, context=contexto)

        if User.objects.filter(username=username).exists():
            messages.error(request, "El nombre de usuario ya está en uso.")
            return render(request, self.template_name, context=contexto)

        if User.objects.filter(email=email).exists():
            messages.error(request, "El correo electrónico ya está registrado.")
            return render(request, self.template_name, context=contexto)

        try:
            user = User.objects.create_user(username=username, first_name=first_name, last_name=last_name, email=email, password=password)
            user.save()
            login(request, user)
            messages.success(request, "Usuario creado exitosamente.")
            return redirect(reverse('inicio'))
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
        context = super().get_context_data(**kwargs)
        generos = Genero.objects.filter(contenidogenero__id_contenido=self.object)
        plataformas = self.object.plataformas.all() if hasattr(self.object, 'plataformas') else []
        imagenes_galeria = Galeria.objects.filter(id_contenido=self.object)
        url_dict = {
            "Netflix": "https://www.netflix.com/",
            "HBO Max": "https://www.hbomax.com/",
            "Prime Video": "https://www.primevideo.com/",
            "Disney+": "https://www.disneyplus.com/",
        }

        plataformas_info = []
        for plataforma in plataformas:
            url = url_dict.get(plataforma.nombre_plataforma)
            plataformas_info.append({
                "nombre_plataforma": plataforma.nombre_plataforma,
                "imagen_logo_plataforma": plataforma.imagen_logo_plataforma,
                "alt_imagen_logo_plataforma": plataforma.alt_imagen_logo_plataforma,
                "tipo_acceso": plataforma.tipo_acceso,
                "precio": plataforma,
                "url": url,
            })
        context['plataformas'] = plataformas_info
        context['generos'] = generos
        context['imagenes_galeria'] = imagenes_galeria
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

        if self.request.user.is_authenticated:
            suscripcion = SuscripcionUsuario.objects.filter(
                id_usuario=self.request.user,
                es_premium=True,
                fecha_fin_suscripcion__gte=timezone.now().date()
            ).first()
            if suscripcion:
                es_premium = True
                if suscripcion.tipo_suscripcion.lower() == 'mensual':
                    tiene_plan_mensual = True
                    diferencia_precio = 80.00  # Precio fijo de 80 euros para usuarios con plan mensual
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
            return redirect('login')
        perfil, created = Perfil.objects.get_or_create(id_usuario=request.user)
        perfil.nombre_perfil = request.POST.get('nombre_perfil')
        perfil.apellidos = request.POST.get('apellidos')
        perfil.nombre_usuario = request.POST.get('nombre_usuario')
        perfil.telefono = request.POST.get('telefono')
        perfil.biografia = request.POST.get('biografia')
        perfil.fecha_nacimiento = request.POST.get('fecha_nacimiento')
        perfil.pais = request.POST.get('pais')
        avatar_url = request.POST.get('avatar_url')
        imagen_avatar = request.FILES.get('imagen_avatar')
        if avatar_url:
            perfil.imagen_avatar = avatar_url
        elif imagen_avatar:
            perfil.imagen_avatar = imagen_avatar
        perfil.save()
        messages.success(request, "Perfil actualizado correctamente.")
        return redirect('perfil')

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
                'price_id': settings.STRIPE_PRICE_ID_YEARLY,  # Precio base de 89.99 euros
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

            if existing_subscription and plan == 'anual':
                if existing_subscription.tipo_suscripcion.lower() == 'mensual':
                    prices['anual']['price_id'] = settings.STRIPE_PRICE_ID_MONTHTOYEAR  # Precio de 80 euros
                    prices['anual']['amount'] = 80.00
                # Permitir sobrescribir la suscripción existente con el nuevo plan anual
            elif existing_subscription and plan == 'mensual':
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
                success_url=request.build_absolute_uri(reverse('success') + '?session_id={CHECKOUT_SESSION_ID}'),
                cancel_url=request.build_absolute_uri('/cancel'),
                metadata={'plan': plan, 'amount': prices[plan]['amount']}
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
            amount = float(session.metadata.get('amount', 89.99))  # Obtener el monto desde metadata
            duration = 30 if plan == 'mensual' else 365
            end_date = datetime.now() + timedelta(days=duration)

            # Sobrescribir o crear la suscripción
            SuscripcionUsuario.objects.update_or_create(
                id_usuario=self.request.user,
                defaults={
                    'tipo_suscripcion': plan,
                    'es_premium': True,
                    'fecha_fin_suscripcion': end_date,
                    'metodo_pago': 'stripe',
                    'monto_pagado': amount
                }
            )

            messages.success(self.request, f"¡Suscripción {plan} activada con éxito!")
            return self.render_to_response({'plan': plan})

        except Exception as e:
            logger.error(f"Error al procesar el pago: {str(e)}")
            plan = request.GET.get('plan', 'mensual')
            duration = 30 if plan == 'mensual' else 365
            end_date = datetime.now() + timedelta(days=duration)
            amount = 9.99 if plan == 'mensual' else 80.00  # Precio para pruebas, asumiendo 80 euros para anual

            SuscripcionUsuario.objects.update_or_create(
                id_usuario=self.request.user,
                defaults={
                    'tipo_suscripcion': plan,
                    'es_premium': True,
                    'fecha_fin_suscripcion': end_date,
                    'metodo_pago': 'stripe',
                    'monto_pagado': amount
                }
            )

            return self.render_to_response({'plan': plan})

class CancelView(TemplateView):
    template_name = 'base/cancel.html'

    def get(self, request, *args, **kwargs):
        messages.warning(self.request, "El pago fue cancelado.")
        return self.render_to_response({})
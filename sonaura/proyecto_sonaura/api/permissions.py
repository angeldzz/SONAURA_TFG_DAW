from datetime import date
from rest_framework import permissions
from base.models import SuscripcionUsuario

class IsStaffOrReadOnly(permissions.BasePermission):
    def has_permission(self, request, view):
        # Permitir lectura (GET, HEAD, OPTIONS) a cualquier usuario, autenticado o no
        if request.method in permissions.SAFE_METHODS:
            return True
        # Solo staff puede crear, modificar o eliminar
        return request.user.is_authenticated and request.user.is_staff

    def has_object_permission(self, request, view, obj):
        # Permitir lectura a cualquier usuario
        if request.method in permissions.SAFE_METHODS:
            return True
        # Solo los usuarios staff pueden modificar o eliminar
        return request.user.is_authenticated and request.user.is_staff

class IsAuthenticatedOrReadOnly(permissions.BasePermission):
    """
    Permite acceso de solo lectura a cualquier usuario,
    pero solo permite modificaciones a usuarios autenticados que sean dueños del objeto.
    """
    def has_permission(self, request, view):
        if request.method in permissions.SAFE_METHODS:
            return True
        return request.user.is_authenticated

    def has_object_permission(self, request, view, obj):
        # Permitir lectura a cualquiera
        if request.method in permissions.SAFE_METHODS:
            return True
        # Permitir escritura solo si el usuario es el dueño del objeto
        return request.user.is_authenticated and hasattr(obj, 'owner') and obj.owner == request.user
    
class IsPremiumOrReadOnly(permissions.BasePermission):
    """
    Permite acceso de solo lectura a cualquier usuario,
    pero solo permite modificaciones a usuarios autenticados con suscripción premium activa.
    """
    def has_permission(self, request, view):
        # Permitir lectura (GET, HEAD, OPTIONS) a cualquier usuario
        if request.method in permissions.SAFE_METHODS:
            return True
        # Para escritura, verificar si el usuario está autenticado
        if not request.user.is_authenticated:
            return False
        # Verificar si el usuario tiene una suscripción premium activa
        return SuscripcionUsuario.objects.filter(
            id_usuario=request.user,
            es_premium=True,
            fecha_fin_suscripcion__gte=date.today()
        ).exists()

    def has_object_permission(self, request, view, obj):
        # Permitir lectura a cualquier usuario
        if request.method in permissions.SAFE_METHODS:
            return True
        # Para escritura, verificar si el usuario está autenticado
        if not request.user.is_authenticated:
            return False
        # Verificar si el usuario tiene una suscripción premium activa
        return SuscripcionUsuario.objects.filter(
            id_usuario=request.user,
            es_premium=True,
            fecha_fin_suscripcion__gte=date.today()
        ).exists()
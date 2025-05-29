from rest_framework import permissions

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

from rest_framework import permissions

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
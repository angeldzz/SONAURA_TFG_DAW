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

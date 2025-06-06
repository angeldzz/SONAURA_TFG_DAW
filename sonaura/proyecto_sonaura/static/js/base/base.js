// Debug version with detailed error handling and logging
document.addEventListener('DOMContentLoaded', async function () {
    const access = localStorage.getItem('access_token');
    const refresh = localStorage.getItem('refresh_token');
    
    console.log('Access token exists:', !!access);
    console.log('Refresh token exists:', !!refresh);
    
    if (access) {
        const isValid = await verifyAndRefreshToken();
        if (!isValid) {
            await performFullLogout();
        }
    }

    // Función mejorada con debug logging
    async function verifyAndRefreshToken() {
        try {
            console.log('Verificando token...');
            
            // Verificar el token actual
            const verifyResponse = await fetch('/api/token/verify/', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ token: access })
            });

            console.log('Verify response status:', verifyResponse.status);

            if (verifyResponse.ok) {
                console.log('Token válido');
                return true;
            }

            // Token no válido, intentar renovar
            console.log('Token no válido, intentando renovar...');
            
            if (!refresh) {
                console.log('No hay refresh token disponible');
                return false;
            }

            console.log('Enviando refresh token...');
            const refreshResponse = await fetch('/api/token/refresh/', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ refresh: refresh })
            });

            console.log('Refresh response status:', refreshResponse.status);

            if (refreshResponse.ok) {
                const data = await refreshResponse.json();
                console.log('Token renovado exitosamente');
                
                localStorage.setItem('access_token', data.access);
                
                if (data.refresh) {
                    localStorage.setItem('refresh_token', data.refresh);
                    console.log('Refresh token también actualizado');
                }
                
                return true;
            } else {
                // Obtener detalles del error
                const errorData = await refreshResponse.text();
                console.error('Error al renovar token:', {
                    status: refreshResponse.status,
                    statusText: refreshResponse.statusText,
                    error: errorData
                });
                return false;
            }
        } catch (error) {
            console.error('Error en verificación/renovación:', error);
            return false;
        }
    }

    async function performFullLogout() {
        console.log('Realizando logout completo...');
        
        localStorage.removeItem('access_token');
        localStorage.removeItem('refresh_token');
        
        try {
            await fetch('/logout/', {
                method: 'POST',
                headers: {
                    'X-CSRFToken': getCookie('csrftoken')
                },
                credentials: 'same-origin'
            });
            console.log('Logout Django completado');
        } catch (error) {
            console.error('Error durante logout Django:', error);
        }
        
        // Opcional: redirigir
        // window.location.href = '/login/';
    }

    function getCookie(name) {
        let cookieValue = null;
        if (document.cookie && document.cookie !== '') {
            const cookies = document.cookie.split(';');
            for (let i = 0; i < cookies.length; i++) {
                const cookie = cookies[i].trim();
                if (cookie.substring(0, name.length + 1) === (name + '=')) {
                    cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
                    break;
                }
            }
        }
        return cookieValue;
    }
});

// Función de login mejorada con manejo de errores
async function loginUser(username, password) {
    try {
        console.log('Intentando login para usuario:', username);
        
        const response = await fetch('/api/token/', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({
                username: username,
                password: password
            })
        });

        console.log('Login response status:', response.status);

        if (response.ok) {
            const data = await response.json();
            console.log('Login exitoso');
            
            localStorage.setItem('access_token', data.access);
            localStorage.setItem('refresh_token', data.refresh);
            
            return { success: true, data: data };
        } else {
            const errorData = await response.json();
            console.error('Error en login:', {
                status: response.status,
                error: errorData
            });
            
            return { 
                success: false, 
                error: errorData,
                message: getErrorMessage(errorData)
            };
        }
    } catch (error) {
        console.error('Error de red en login:', error);
        return { 
            success: false, 
            error: error.message,
            message: 'Error de conexión'
        };
    }
}

// Función para interpretar errores comunes
function getErrorMessage(errorData) {
    if (errorData.detail) {
        if (errorData.detail.includes('No active account')) {
            return 'Usuario no encontrado o inactivo. Verifica tu usuario y contraseña.';
        }
        if (errorData.detail.includes('credentials')) {
            return 'Credenciales incorrectas. Verifica tu usuario y contraseña.';
        }
    }
    
    if (errorData.non_field_errors) {
        return errorData.non_field_errors[0];
    }
    
    return 'Error de autenticación. Verifica tus credenciales.';
}

// Función para verificar el estado del usuario en Django
async function checkUserStatus(username) {
    try {
        // Esta función requeriría un endpoint adicional en tu API
        const response = await fetch(`/api/user-status/${username}/`);
        
        if (response.ok) {
            const data = await response.json();
            console.log('Estado del usuario:', data);
            return data;
        }
    } catch (error) {
        console.error('Error verificando estado del usuario:', error);
    }
    return null;
}

function borrarTokens(event) {
    event.preventDefault();
    localStorage.removeItem("access_token");
    localStorage.removeItem("refresh_token");
    event.target.submit();
}
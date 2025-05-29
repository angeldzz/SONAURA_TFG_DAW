
        document.addEventListener('DOMContentLoaded', function () {
            // Bootstrap validation
            const forms = document.querySelectorAll('.needs-validation');

            Array.from(forms).forEach(form => {
                form.addEventListener('submit', event => {
                    if (!form.checkValidity() || !passwordsMatch()) {
                        event.preventDefault();
                        event.stopPropagation();

                        // Mostrar mensaje de error personalizado
                        showAlert('Por favor, corrige los errores en el formulario.', 'error');
                    }

                    form.classList.add('was-validated');
                }, false);
            });

            // Password visibility toggle
            const passwordToggles = document.querySelectorAll('.password-toggle');

            passwordToggles.forEach(toggle => {
                toggle.addEventListener('click', function () {
                    const passwordInput = this.previousElementSibling;
                    const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
                    passwordInput.setAttribute('type', type);

                    // Toggle eye icon
                    const icon = this.querySelector('i');
                    icon.classList.toggle('fa-eye');
                    icon.classList.toggle('fa-eye-slash');
                });
            });

            // Password matching validation
            const password = document.getElementById('password');
            const confirmPassword = document.getElementById('confirm_password');

            function passwordsMatch() {
                if (password.value !== confirmPassword.value) {
                    confirmPassword.setCustomValidity('Las contraseñas no coinciden');
                    return false;
                } else {
                    confirmPassword.setCustomValidity('');
                    return true;
                }
            }

            password.addEventListener('input', passwordsMatch);
            confirmPassword.addEventListener('input', passwordsMatch);

            // Password strength meter
            password.addEventListener('input', function () {
                const strength = calculatePasswordStrength(this.value);
                const progressBar = document.getElementById('password-strength');
                const strengthText = document.getElementById('password-strength-text');

                progressBar.style.width = strength.score + '%';
                progressBar.className = 'password-strength-bar strength-' + strength.class;
                strengthText.textContent = 'Fortaleza: ' + strength.text;
            });

            function calculatePasswordStrength(password) {
                let score = 0;
                let strengthClass = 'danger';
                let strengthText = 'Muy débil';

                if (password.length > 0) {
                    // Length check
                    score += Math.min(password.length * 4, 25);

                    // Character variety checks
                    if (/[A-Z]/.test(password)) score += 15;
                    if (/[a-z]/.test(password)) score += 10;
                    if (/[0-9]/.test(password)) score += 15;
                    if (/[/]/.test(password)) score += 15;
                    if (/[^A-Za-z0-9]/.test(password)) score += 20;

                    // Determine text and class based on score
                    if (score >= 80) {
                        strengthClass = 'success';
                        strengthText = 'Muy fuerte';
                    } else if (score >= 60) {
                        strengthClass = 'info';
                        strengthText = 'Fuerte';
                    } else if (score >= 40) {
                        strengthClass = 'warning';
                        strengthText = 'Moderada';
                    } else if (score >= 20) {
                        strengthClass = 'danger';
                        strengthText = 'Débil';
                    }
                }

                return {
                    score: score,
                    class: strengthClass,
                    text: strengthText
                };
            }

            // Input focus effects
            const inputs = document.querySelectorAll('.form-group input');

            inputs.forEach(input => {
                input.addEventListener('focus', function () {
                    this.parentElement.classList.add('focused');
                });

                input.addEventListener('blur', function () {
                    if (this.value === '') {
                        this.parentElement.classList.remove('focused');
                    }
                });

                // Check if input has value on page load
                if (input.value !== '') {
                    input.parentElement.classList.add('focused');
                }
            });

            // Modal functionality
            const modal = document.getElementById('termsModal');
            const termsLink = document.querySelector('.terms-link');
            const closeModal = document.querySelector('.close-modal');
            const acceptBtn = document.querySelector('.modal-accept-btn');
            const termsCheckbox = document.getElementById('terms');

            termsLink.addEventListener('click', function (e) {
                e.preventDefault();
                modal.style.display = 'block';
            });

            closeModal.addEventListener('click', function () {
                modal.style.display = 'none';
            });

            acceptBtn.addEventListener('click', function () {
                termsCheckbox.checked = true;
                modal.style.display = 'none';
            });

            window.addEventListener('click', function (event) {
                if (event.target == modal) {
                    modal.style.display = 'none';
                }
            });

            // Crear estrellas fugaces aleatorias
            function createShootingStar() {
                const shootingStarsContainer = document.querySelector('.shooting-stars');
                const shootingStar = document.createElement('div');
                shootingStar.classList.add('shooting-star');

                // Posición aleatoria
                const startX = Math.random() * 100;
                const startY = Math.random() * 100;
                const angle = Math.random() * 45;

                shootingStar.style.top = `${startY}%`;
                shootingStar.style.left = `${startX}%`;
                shootingStar.style.transform = `rotate(${angle}deg)`;

                shootingStarsContainer.appendChild(shootingStar);

                // Eliminar la estrella después de la animación
                setTimeout(() => {
                    shootingStar.remove();
                }, 1000);
            }

            // Crear estrellas fugaces periódicamente
            setInterval(createShootingStar, 2000);

            // Efecto parallax para los círculos animados
            document.addEventListener('mousemove', function (e) {
                const circles = document.querySelectorAll('.circle');
                const x = e.clientX / window.innerWidth;
                const y = e.clientY / window.innerHeight;

                circles.forEach((circle, index) => {
                    const speed = (index + 1) * 20;
                    circle.style.transform = `translate(${x * speed}px, ${y * speed}px)`;
                });
            });

            // Función para mostrar alertas
            function showAlert(message, type) {
                const alertContainer = document.getElementById('alertMessages');
                const alert = document.createElement('div');
                alert.className = `alert alert-${type}`;
                alert.innerHTML = `
                    <i class="fas ${type === 'error' ? 'fa-exclamation-triangle' : 'fa-check-circle'}"></i>
                    ${message}
                    <button type="button" class="close-alert">&times;</button>
                `;

                alertContainer.appendChild(alert);

                // Auto-cerrar después de 5 segundos
                setTimeout(() => {
                    alert.remove();
                }, 5000);

                // Botón para cerrar manualmente
                const closeBtn = alert.querySelector('.close-alert');
                closeBtn.addEventListener('click', () => {
                    alert.remove();
                });
            }

            const registerForm = document.querySelector('.login-form');
            if (registerForm) {
                registerForm.addEventListener('submit', async function (e) {
                    e.preventDefault();

                    // Validación HTML5 y contraseñas
                    if (!registerForm.checkValidity()) {
                        showAlert('Por favor, corrige los errores en el formulario.', 'error');
                        registerForm.classList.add('was-validated');
                        return;
                    }
                    const password = registerForm.querySelector('input[name="password"]').value;
                    const confirmPassword = registerForm.querySelector('input[name="confirm_password"]').value;
                    if (password !== confirmPassword) {
                        showAlert('Las contraseñas no coinciden.', 'error');
                        return;
                    }

                    // 1. Enviar datos de registro al backend
                    const formData = new FormData(registerForm);
                    const response = await fetch('/crear-usuario/', {
                        method: 'POST',
                        body: formData,
                    });

                    if (!response.ok) {
                        showAlert('No se pudo crear la cuenta. Revisa los datos.', 'error');
                        return;
                    }
                    // 2. Login Django clásico (crea sesión)
                    const username = registerForm.querySelector('input[name="username"]').value;
                    const loginFormData = new FormData();
                    loginFormData.append('username', username);
                    loginFormData.append('password', password);

                    const csrfToken = getCookie('csrftoken');

                    const loginResponse = await fetch('/login/', {
                        method: 'POST',
                        body: loginFormData,
                        headers: {
                            'X-CSRFToken': csrfToken
                        },
                        credentials: 'same-origin'
                    });

                    if (!loginResponse.ok) {
                        showAlert('Error al iniciar sesión después del registro.', 'error');
                        return;
                    }

                    // 3. Pedir el token JWT
                    const tokenResponse = await fetch('/api/token/', {
                        method: 'POST',
                        headers: { 'Content-Type': 'application/json' },
                        body: JSON.stringify({ username, password }) // Cambia a { email, password } si tu backend lo requiere
                    });

                    if (tokenResponse.ok) {
                        const data = await tokenResponse.json();
                        localStorage.setItem('access_token', data.access);
                        localStorage.setItem('refresh_token', data.refresh);
                    } else {
                        const errorData = await tokenResponse.json();
                        showAlert('Error al obtener el token: ' + (errorData.detail || 'Error desconocido'), 'error');
                        return;
                    }

                    // 4. Redirigir al usuario
                    window.location.href = '/';
                });
            }

            function getCookie(name) {
                let cookieValue = null;
                if (document.cookie && document.cookie !== '') {
                    const cookies = document.cookie.split(';');
                    for (let i = 0; i < cookies.length; i++) {
                        const cookie = cookies[i].trim();
                        // Does this cookie string begin with the name we want?
                        if (cookie.substring(0, name.length + 1) === (name + '=')) {
                            cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
                            break;
                        }
                    }
                }
                return cookieValue;
            }
        });
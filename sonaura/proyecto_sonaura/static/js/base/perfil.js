document.addEventListener('DOMContentLoaded', function () {
            // Navegación entre secciones
            const navItems = document.querySelectorAll('.nav-item');
            const sections = document.querySelectorAll('.profile-section');

            navItems.forEach(item => {
                item.addEventListener('click', function (e) {
                    e.preventDefault();

                    // Remover clase active de todos los elementos
                    navItems.forEach(nav => nav.classList.remove('active'));
                    sections.forEach(section => section.classList.remove('active'));

                    // Añadir clase active al elemento clickeado
                    this.classList.add('active');

                    // Mostrar la sección correspondiente
                    const targetSection = this.getAttribute('data-section');
                    document.getElementById(targetSection).classList.add('active');
                });
            });

            // Toggle de contraseñas
            const passwordToggles = document.querySelectorAll('.password-toggle');
            passwordToggles.forEach(toggle => {
                toggle.addEventListener('click', function () {
                    const input = this.previousElementSibling;
                    const icon = this.querySelector('i');

                    if (input.type === 'password') {
                        input.type = 'text';
                        icon.classList.remove('fa-eye');
                        icon.classList.add('fa-eye-slash');
                    } else {
                        input.type = 'password';
                        icon.classList.remove('fa-eye-slash');
                        icon.classList.add('fa-eye');
                    }
                });
            });

            // Validación de fortaleza de contraseña
            const newPasswordInput = document.getElementById('newPassword');
            if (newPasswordInput) {
                newPasswordInput.addEventListener('input', function () {
                    const password = this.value;
                    const strengthBar = document.querySelector('.strength-fill');
                    const strengthText = document.querySelector('.strength-text');

                    let strength = 0;
                    let strengthLabel = 'Muy débil';

                    if (password.length >= 8) strength++;
                    if (/[a-z]/.test(password)) strength++;
                    if (/[A-Z]/.test(password)) strength++;
                    if (/[0-9]/.test(password)) strength++;
                    if (/[^A-Za-z0-9]/.test(password)) strength++;

                    switch (strength) {
                        case 0:
                        case 1:
                            strengthLabel = 'Muy débil';
                            strengthBar.style.width = '20%';
                            strengthBar.style.backgroundColor = '#ff5e78';
                            break;
                        case 2:
                            strengthLabel = 'Débil';
                            strengthBar.style.width = '40%';
                            strengthBar.style.backgroundColor = '#ff9e00';
                            break;
                        case 3:
                            strengthLabel = 'Media';
                            strengthBar.style.width = '60%';
                            strengthBar.style.backgroundColor = '#ffd60a';
                            break;
                        case 4:
                            strengthLabel = 'Fuerte';
                            strengthBar.style.width = '80%';
                            strengthBar.style.backgroundColor = '#00c896';
                            break;
                        case 5:
                            strengthLabel = 'Muy fuerte';
                            strengthBar.style.width = '100%';
                            strengthBar.style.backgroundColor = '#00f5d4';
                            break;
                    }

                    strengthText.textContent = `Seguridad: ${strengthLabel}`;
                });
            }

            // Crear estrellas fugaces
            function createShootingStar() {
                const shootingStarsContainer = document.querySelector('.shooting-stars');
                const shootingStar = document.createElement('div');
                shootingStar.classList.add('shooting-star');

                const startX = Math.random() * 100;
                const startY = Math.random() * 100;
                const angle = Math.random() * 45;

                shootingStar.style.top = `${startY}%`;
                shootingStar.style.left = `${startX}%`;
                shootingStar.style.transform = `rotate(${angle}deg)`;

                shootingStarsContainer.appendChild(shootingStar);

                setTimeout(() => {
                    shootingStar.remove();
                }, 1000);
            }

            setInterval(createShootingStar, 3000);

            // Efecto parallax para círculos
            document.addEventListener('mousemove', function (e) {
                const circles = document.querySelectorAll('.circle');
                const x = e.clientX / window.innerWidth;
                const y = e.clientY / window.innerHeight;

                circles.forEach((circle, index) => {
                    const speed = (index + 1) * 15;
                    circle.style.transform = `translate(${x * speed}px, ${y * speed}px)`;
                });
            });

            cargarActividad(1);

            function cargarActividad(page) {
                fetch(`/api/lista-personalizada/?page=${page}`, {
                    headers: {
                        'Authorization': `Bearer ${localStorage.getItem('access_token')}`
                    }
                })
                .then(response => response.json())
                .then(data => {
                    const activityList = document.getElementById('activity-list');
                    activityList.innerHTML = '';

                    const items = Array.isArray(data.results) ? data.results : [];
                    if (items.length === 0) {
                        activityList.innerHTML = '<p>No hay actividad reciente.</p>';
                    } else {
                        items.forEach(item => {
                            if (item.contenido) {
                                const card = document.createElement('div');
                                card.className = 'activity-item';
                                card.innerHTML = `
                                    <img src="${item.contenido.imagen_poster || '/placeholder.svg?height=100&width=70'}" alt="${item.contenido.titulo}" class="activity-poster">
                                    <div class="activity-info">
                                        <h4>${item.contenido.titulo}</h4>
                                        <div class="activity-rating">
                                            <i class="fas fa-star"></i> ${item.contenido.puntuacion ? item.contenido.puntuacion.toFixed(1) : '-'}
                                        </div>
                                    </div>
                                    <div class="activity-meta">
                                        <span class="meta-year"><i class="fas fa-calendar-alt"></i> ${item.contenido.año_estreno || '-'}</span>
                                        <span class="meta-duration"><i class="fas fa-clock"></i> ${item.contenido.duracion ? item.contenido.duracion + ' min' : '-'}</span>
                                    </div>
                                `;
                                activityList.appendChild(card);
                            }
                        });
                    }

                    // Paginación
                    const pagination = document.getElementById('activity-pagination');
                    pagination.innerHTML = '';
                    if (data.previous) {
                        const prevBtn = document.createElement('button');
                        prevBtn.innerHTML = '<i class="fas fa-chevron-left"></i> Anterior';
                        prevBtn.onclick = () => cargarActividad(page - 1);
                        pagination.appendChild(prevBtn);
                    }
                    if (data.next) {
                        const nextBtn = document.createElement('button');
                        nextBtn.innerHTML = 'Siguiente <i class="fas fa-chevron-right"></i>';
                        nextBtn.onclick = () => cargarActividad(page + 1);
                        pagination.appendChild(nextBtn);
                    }
                });
            }
        });

        // Funciones para el modal de avatar
        function openAvatarModal() {
            document.getElementById('avatarModal').style.display = 'flex';
        }

        function closeAvatarModal() {
            document.getElementById('avatarModal').style.display = 'none';
        }

        function saveAvatar() {
            closeAvatarModal();
            // Envía el formulario principal
            document.querySelector('.profile-form').submit();
        }

        // Selección de avatar predefinido
        document.addEventListener('click', function (e) {
            if (e.target.classList.contains('preset-avatar')) {
                // Remover selección anterior
                document.querySelectorAll('.preset-avatar').forEach(avatar => {
                    avatar.classList.remove('selected');
                });

                // Seleccionar nuevo avatar
                e.target.classList.add('selected');

                // Cambiar el avatar principal
                const avatarImage = document.getElementById('avatarImage');
                avatarImage.src = e.target.src;

                // Guardar solo la ruta relativa en el campo oculto
                const src = e.target.src;
                let relativePath = src;
                if (src.includes('/media/')) {
                    relativePath = src.split('/media/')[1];
                }
                document.getElementById('avatarUrl').value = relativePath;

                // Limpiar el input de archivo por si acaso
                document.getElementById('avatarUpload').value = '';
            }
        });

        // Previsualizar imagen subida en el modal y en el avatar principal
        document.getElementById('avatarUpload').addEventListener('change', function (event) {
            const file = event.target.files[0];
            if (file) {
                const reader = new FileReader();
                reader.onload = function (e) {
                    // Cambia el avatar principal
                    document.getElementById('avatarImage').src = e.target.result;
                    // Limpiar selección de avatar predefinido
                    document.querySelectorAll('.preset-avatar').forEach(avatar => {
                        avatar.classList.remove('selected');
                    });
                    // Limpiar el campo oculto
                    document.getElementById('avatarUrl').value = '';
                };
                reader.readAsDataURL(file);
            }
        });

        // Al hacer click en "Guardar" del modal, cierra el modal
        function saveAvatar() {
            closeAvatarModal();
        }

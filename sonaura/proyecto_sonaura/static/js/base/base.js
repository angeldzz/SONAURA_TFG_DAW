        // Simple tab functionality
        document.addEventListener('DOMContentLoaded', function () {
            // Tabs functionality
            const tabs = document.querySelectorAll('.tab');

            tabs.forEach(tab => {
                tab.addEventListener('click', function () {
                    // Remove active class from all tabs
                    tabs.forEach(t => t.classList.remove('active'));

                    // Add active class to clicked tab
                    this.classList.add('active');

                    // Hide all tab content
                    const tabContents = document.querySelectorAll('.tab-content');
                    tabContents.forEach(content => content.classList.remove('active'));

                    // Show the corresponding tab content
                    const tabId = this.getAttribute('data-tab');
                    document.getElementById(tabId + '-content').classList.add('active');
                });
            });

            // Search toggle
            const searchToggle = document.querySelector('.search-toggle');
            const searchOverlay = document.querySelector('.search-overlay');
            const searchClose = document.querySelector('.search-close');

            searchToggle.addEventListener('click', function () {
                searchOverlay.classList.add('active');
                document.body.classList.add('search-open');
                setTimeout(() => {
                    searchOverlay.querySelector('input').focus();
                }, 300);
            });

            searchClose.addEventListener('click', function () {
                searchOverlay.classList.remove('active');
                document.body.classList.remove('search-open');
            });

            // Mobile menu toggle
            const mobileToggle = document.querySelector('.mobile-toggle');
            const header = document.querySelector('.header');

            mobileToggle.addEventListener('click', function () {
                header.classList.toggle('menu-open');
                document.body.classList.toggle('no-scroll');
            });
        });

        document.addEventListener('DOMContentLoaded', async function () {
            const access = localStorage.getItem('access_token');
            if (access) {
                const response = await fetch('/api/token/verify/', {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify({ token: access })
                });
                if (!response.ok) {
                    // Elimina los tokens JWT
                    localStorage.removeItem('access_token');
                    localStorage.removeItem('refresh_token');
                    // Haz logout en Django (si hay sesión)
                    await fetch('/logout/', {
                        method: 'POST',
                        headers: {
                            'X-CSRFToken': getCookie('csrftoken')
                        },
                        credentials: 'same-origin'
                    });
                }
            }
            // Función para obtener el CSRF de la cookie
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
function borrarTokens(event){
                event.preventDefault();
                localStorage.removeItem('access_token');
                localStorage.removeItem('refresh_token');
                event.target.submit();
            }
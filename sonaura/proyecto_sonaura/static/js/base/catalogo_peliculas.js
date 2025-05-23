document.addEventListener('DOMContentLoaded', function() {
            // Inicializar partículas cósmicas
            initParticles();
            
            // Inicializar carrusel
            initCarousel();
            pelicula_serie = document.getElementById("pelicula-serie").value;
            // Cargar películas
            cargarPeliculas(pelicula_serie);
        });

        function initParticles() {
            const particlesContainer = document.getElementById('particles');
            const particleCount = 300;
            for (let i = 0; i < particleCount; i++) {
                const particle = document.createElement('div');
                particle.classList.add('particle');
                
                // Tamaño aleatorio
                const size = Math.random() * 5 + 2;
                particle.style.width = `${size}px`;
                particle.style.height = `${size}px`;
                
                // Posición aleatoria
                particle.style.left = `${Math.random() * 100}%`;
                particle.style.top = `${Math.random() * 100}%`;
                
                // Retraso aleatorio para la animación
                particle.style.animationDelay = `${Math.random() * 3}s`;
                
                particlesContainer.appendChild(particle);
            }
        }
        function initCarousel() {
    const track = document.getElementById('carouselTrack');
    const slides = Array.from(track.children);
    const nextButton = document.getElementById('nextSlide');
    const prevButton = document.getElementById('prevSlide');
    const indicators = document.querySelectorAll('.carousel-indicator');

    const slidesPerView = 5;
    const totalGroups = Math.ceil(slides.length / slidesPerView);
    let currentIndex = 0;

    const moveToSlide = () => {
        const percentage = -(100 / slidesPerView) * slidesPerView * currentIndex;
        track.style.transform = `translateX(${percentage}%)`;

        indicators.forEach((indicator, index) => {
            indicator.classList.toggle('active', index === currentIndex);
        });

        prevButton.classList.toggle('disabled', currentIndex === 0);
        nextButton.classList.toggle('disabled', currentIndex === totalGroups - 1);
    };

    nextButton.addEventListener('click', () => {
        if (currentIndex < totalGroups - 1) {
            currentIndex++;
            moveToSlide();
        }
    });

    prevButton.addEventListener('click', () => {
        if (currentIndex > 0) {
            currentIndex--;
            moveToSlide();
        }
    });

    indicators.forEach((indicator, index) => {
        indicator.addEventListener('click', () => {
            currentIndex = index;
            moveToSlide();
        });
    });

    moveToSlide();

    setInterval(() => {
        currentIndex = (currentIndex + 1) % totalGroups;
        moveToSlide();
    }, 7000);
        }
        function cargarPeliculas(pelicula_serie) {
            fetch(`http://127.0.0.1:8000/api/contenidos/?pelicula_serie=${pelicula_serie}`)
                .then(response => {
                    if (!response.ok) throw new Error('Error al obtener las películas');
                    return response.json();
                })
                .then(data => {
                    const peliculas = data.results || data;
                    console.log(peliculas);
                    const movieGrid = document.getElementById('movieGrid');
                    movieGrid.innerHTML = ''; // Limpiar contenido anterior

                    const peliculasPorPagina = 15;
                    const peliculasPorFila = 5;
                    const totalPaginas = Math.ceil(peliculas.length / peliculasPorPagina);

                    for (let pagina = 0; pagina < totalPaginas; pagina++) {
                        const catalogPage = document.createElement('div');
                        catalogPage.className = 'catalog-page' + (pagina === 0 ? ' active' : '');
                        catalogPage.setAttribute('data-page', (pagina + 1).toString());

                        const inicio = pagina * peliculasPorPagina;
                        const fin = Math.min(inicio + peliculasPorPagina, peliculas.length);
                        const peliculasPagina = peliculas.slice(inicio, fin);

                        const filas = Math.ceil(peliculasPagina.length / peliculasPorFila);

                        for (let i = 0; i < filas; i++) {
                            const row = document.createElement('div');
                            row.className = 'catalog-row';

                            for (let j = 0; j < peliculasPorFila; j++) {
                                const idx = i * peliculasPorFila + j;
                                if (idx >= peliculasPagina.length) break;
                                const peli = peliculasPagina[idx];

                                // Convertir duración a minutos si es posible
                                let duracionMin = '';
                                if (peli.duracion) {
                                    // peli.duracion ahora es un entero en segundos
                                    const totalMin = peli.duracion / 60;
                                    duracionMin = Math.ceil(totalMin).toString();
                                }

                                const card = document.createElement('div');
                                card.className = 'media-card neon-card';
                                card.innerHTML = `
                                    <div class="card-image">
                                        <img src="${peli.imagen_poster}" alt="${peli.alt_imagen_poster ? peli.alt_imagen_poster : peli.titulo}">
                                        <div class="card-overlay">
                                            <div class="card-actions">
                                                <button class="card-action-btn">
                                                    <i class="fas fa-info-circle"></i>
                                                </button>
                                                <button class="card-action-btn">
                                                    <i class="fas fa-bookmark"></i>
                                                </button>
                                            </div>
                                        </div>
                                        <div class="card-rating">
                                            <div class="rating-circle">
                                                <span>${peli.puntuacion ? peli.puntuacion.toFixed(1) : '-'}</span>
                                            </div>
                                        </div>
                                        <div class="card-badge">${peli.clasificacion || ''}</div>
                                    </div>
                                    <div class="card-content">
                                        <h3>${peli.titulo}</h3>
                                        <div class="card-meta">
                                            <span>${peli.año_estreno || ''}</span>
                                            <span>${duracionMin ? duracionMin + ' min' : ''}</span>
                                        </div>
                                    </div>
                                `;
                                row.appendChild(card);
                            }
                            catalogPage.appendChild(row);
                        }
                        movieGrid.appendChild(catalogPage);
                    }

                    // Inicializa la paginación después de crear las páginas
                    initPagination();
                })
                .catch(error => {
                    console.error('Error:', error);
                });
        }
        function initPagination() {
    const pages = document.querySelectorAll('.catalog-page');
    const pageButtons = document.querySelectorAll('.pagination-btn[data-page]');
    const prevPageBtn = document.getElementById('prevPageBtn');
    const nextPageBtn = document.getElementById('nextPageBtn');

    let currentPage = 1;
    const totalPages = pages.length;

    function updatePage() {
        // Ocultar todas las páginas
        document.querySelectorAll('.catalog-page').forEach(page => {
            page.classList.remove('active');
        });

        // Mostrar la página actual
        const activePage = document.querySelector(`.catalog-page[data-page="${currentPage}"]`);
        if (activePage) {
            activePage.classList.add('active');
        }

        // Actualizar botones de paginación
        pageButtons.forEach(button => {
            const pageNum = parseInt(button.getAttribute('data-page'));
            if (pageNum === currentPage) {
                button.classList.add('active');
            } else {
                button.classList.remove('active');
            }
        });

        prevPageBtn.classList.toggle('disabled', currentPage === 1);
        nextPageBtn.classList.toggle('disabled', currentPage === totalPages);
    }

    pageButtons.forEach(button => {
        button.onclick = () => {
            currentPage = parseInt(button.getAttribute('data-page'));
            updatePage();
        };
    });

    prevPageBtn.onclick = () => {
        if (currentPage > 1) {
            currentPage--;
            updatePage();
        }
    };

    nextPageBtn.onclick = () => {
        if (currentPage < totalPages) {
            currentPage++;
            updatePage();
        }
    };

    updatePage();
}
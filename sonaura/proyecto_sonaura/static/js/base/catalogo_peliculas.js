        document.addEventListener('DOMContentLoaded', function() {
            // Inicializar partículas cósmicas
            initParticles();
            
            // Inicializar carrusel
            initCarousel();
            
            // Inicializar paginación
            initPagination();


            cargarPeliculas();
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
        function cargarPeliculas() {
            
        }
        function initPagination() {
            const pages = document.querySelectorAll('.catalog-page');
            const pageButtons = document.querySelectorAll('.pagination-btn[data-page]');
            const prevPageBtn = document.getElementById('prevPageBtn');
            const nextPageBtn = document.getElementById('nextPageBtn');
            
            let currentPage = 1;
            const totalPages = pages.length;
            
            // Función para actualizar la página visible
            function updatePage() {
                // Ocultar todas las páginas
                pages.forEach(page => {
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
                
                // Actualizar estado de los botones prev/next
                prevPageBtn.classList.toggle('disabled', currentPage === 1);
                nextPageBtn.classList.toggle('disabled', currentPage === totalPages);
            }
            
            // Event listeners para los botones de página
            pageButtons.forEach(button => {
                button.addEventListener('click', () => {
                    currentPage = parseInt(button.getAttribute('data-page'));
                    updatePage();
                });
            });
            
            // Event listeners para prev/next
            prevPageBtn.addEventListener('click', () => {
                if (currentPage > 1) {
                    currentPage--;
                    updatePage();
                }
            });
            
            nextPageBtn.addEventListener('click', () => {
                if (currentPage < totalPages) {
                    currentPage++;
                    updatePage();
                }
            });
            
            // Inicializar la primera página
            updatePage();
        }
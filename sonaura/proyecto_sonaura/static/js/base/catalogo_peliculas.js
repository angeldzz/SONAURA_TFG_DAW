// Definir la variable global pelicula_serie
    let pelicula_serie = document.getElementById("pelicula-serie").value;

    // Inicializar partículas cósmicas
    initParticles();
    
    // Inicializar carrusel
    initCarousel();

    //Llamamos al Top 10
    Top_10();
    
    // Cargar películas
    cargarPeliculas_Series(filtro_anio(), filtro_genero(), filtro_orden(),filtro_valoracion());
    document.getElementById("yearFilter").addEventListener("change", () => 
        cargarPeliculas_Series(filtro_anio(), filtro_genero(), filtro_orden(),filtro_valoracion())
    );
    document.getElementById("genero-filter").addEventListener("change", () => 
        cargarPeliculas_Series(filtro_anio(), filtro_genero(), filtro_orden(),filtro_valoracion())
    );
    document.getElementById("sort-filter").addEventListener("change", () => 
        cargarPeliculas_Series(filtro_anio(), filtro_genero(), filtro_orden(),filtro_valoracion())
    );
    document.getElementById("rating-filter").addEventListener("change", () => 
        cargarPeliculas_Series(filtro_anio(), filtro_genero(), filtro_orden(),filtro_valoracion())
    );


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
    const nextButton = document.getElementById('nextSlide');
    const prevButton = document.getElementById('prevSlide');
    const indicators = document.querySelectorAll('.carousel-indicator');

    const slidesPerView = 5;
    let currentIndex = 0;

    const moveToSlide = () => {
        const slides = track.children.length;
        const totalGroups = Math.ceil(slides / slidesPerView);
        const percentage = -(100 / slidesPerView) * slidesPerView * currentIndex;
        track.style.transform = `translateX(${percentage}%)`;

        indicators.forEach((indicator, index) => {
            indicator.classList.toggle('active', index === currentIndex);
        });

        prevButton.classList.toggle('disabled', currentIndex === 0);
        nextButton.classList.toggle('disabled', currentIndex === totalGroups - 1);
    };

    nextButton.addEventListener('click', () => {
        const slides = track.children.length;
        const totalGroups = Math.ceil(slides / slidesPerView);
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
        const slides = track.children.length;
        const totalGroups = Math.ceil(slides / slidesPerView);
        currentIndex = (currentIndex + 1) % totalGroups;
        moveToSlide();
    }, 7000);
}

function filtro_anio() {  
    const input_anio = document.getElementById("yearFilter").value;
    let filtro = "";

    if (input_anio === "all") {
        filtro = "";
    } else if (input_anio === "older") {
        filtro = "&año_estreno__lt=2020";
    } else {
        filtro = `&año_estreno=${input_anio}`;
    }
    return filtro;
}

function filtro_genero() {  
    const input_genero = document.getElementById("genero-filter").value;
    let filtroGenero = "";

    if (input_genero === "all") {
        filtroGenero = "";
    } else {
        filtroGenero = `&genero=${input_genero}`;
    }
    return filtroGenero;
}

function filtro_orden() {
    const orden = document.getElementById("sort-filter").value;
    let filtroOrden = "";
    if (orden === "rating") {
        filtroOrden = "&ordering=-puntuacion";
    } else if (orden === "newest") {
        filtroOrden = "&ordering=-año_estreno";
    } else if (orden === "oldest") {
        filtroOrden = "&ordering=año_estreno";
    }
    return filtroOrden;
}

function filtro_valoracion() {
    const puntuacion = document.getElementById("rating-filter").value;
    let filtroValoracion = "";
    if (puntuacion === "8") {
        filtroValoracion = "&puntuacion__gte=4&ordering=-puntuacion";
    } else if (puntuacion === "6") {
        filtroValoracion = "&puntuacion__gte=3&puntuacion__lt=4&ordering=puntuacion";
    } else if (puntuacion === "4") {
        filtroValoracion = "&puntuacion__gte=2&puntuacion__lt=3&ordering=puntuacion";
    }
    console.log("Filtro aplicado: ", filtroValoracion);
    return filtroValoracion;
}

function cargarPeliculas_Series(anio_filtro, genero_filtro, orden_filtro = "",valoracion_filtro) {
    
    fetch(`http://127.0.0.1:8000/api/contenidos/?pelicula_serie=${pelicula_serie}${anio_filtro}${genero_filtro}${orden_filtro}${valoracion_filtro}`)
        .then(response => {
            if (!response.ok) throw new Error('Error al obtener las películas');
            return response.json();
        })
        .then(data => {
            console.log(data);
            const peliculas = data.results || data;
            
            const movieGrid = document.getElementById('movieGrid');
            movieGrid.innerHTML = ''; // Limpiar contenido anterior

            const peliculasPorPagina = 15;
            const peliculasPorFila = 5;
            const totalPaginas = Math.ceil(peliculas.length / peliculasPorPagina);

            // Generar dinámicamente los botones de paginación
            const paginationContainer = document.querySelector('.pagination');
            paginationContainer.innerHTML = '';
            
            // Botón anterior
            const prevBtn = document.createElement('button');
            prevBtn.className = 'pagination-btn';
            prevBtn.id = 'prevPageBtn';
            prevBtn.innerHTML = '<i class="fas fa-chevron-left"></i>';
            paginationContainer.appendChild(prevBtn);

            // Botones de página
            for (let i = 1; i <= totalPaginas; i++) {
                const pageBtn = document.createElement('button');
                pageBtn.className = 'pagination-btn' + (i === 1 ? ' active' : '');
                pageBtn.setAttribute('data-page', i);
                pageBtn.textContent = i;
                paginationContainer.appendChild(pageBtn);
            }

            // Botón siguiente
            const nextBtn = document.createElement('button');
            nextBtn.className = 'pagination-btn';
            nextBtn.id = 'nextPageBtn';
            nextBtn.innerHTML = '<i class="fas fa-chevron-right"></i>';
            paginationContainer.appendChild(nextBtn);

            // Generar el catálogo completo
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

                        const card = document.createElement('div');
                        card.className = 'media-card neon-card';
                        card.innerHTML = `
                            <div class="card-image">
                                <img src="${peli.imagen_poster}" alt="${peli.alt_imagen_poster ? peli.alt_imagen_poster : peli.titulo}">
                                <div class="card-overlay">
                                    <div class="card-actions">
                                        <button class="card-action-btn info-btn" data-id="${peli.id_contenido}">
                                            <i class="fas fa-info-circle"></i>
                                        </button>
                                        <button class="card-action-btn bookmark-btn" data-id="${peli.id_contenido}">
                                            <i class="fas fa-bookmark"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="card-rating">
                                    <div class="rating-circle">
                                        <span>${peli.puntuacion * 2 ? peli.puntuacion.toFixed(1) * 2 : '-'}</span>
                                    </div>
                                </div>
                                <div class="card-badge">${peli.generos && peli.generos.length > 0 ? (peli.generos[0].nombre || peli.generos[0].name || '') : ''}</div>
                            </div>
                            <div class="card-content">
                                <h3>${peli.titulo}</h3>
                                <div class="card-meta">
                                    <span>${peli.año_estreno || ''}</span>
                                    <span>${peli.duracion + ' min'}</span>
                                </div>
                            </div>
                        `;
                        row.appendChild(card);
                    }
                    catalogPage.appendChild(row);
                }
                movieGrid.appendChild(catalogPage);
            }

            // Reinicializar el carrusel después de cargar las diapositivas dinámicas
            initCarousel();

            // Inicializa la paginación después de crear las páginas
            initPagination();

            // Añadir event listeners para los botones de información y marcador
            setTimeout(() => {
                document.querySelectorAll('.info-btn').forEach(btn => {
                    btn.addEventListener('click', function() {
                        const id = this.getAttribute('data-id');
                        window.location.href = `/detalles/${id}/`;
                    });
                });
                document.querySelectorAll('.bookmark-btn').forEach(btn => {
                    btn.addEventListener('click', function() {
                        const id = this.getAttribute('data-id');
                        window.location.href = `/premium`;
                    });
                });
            }, 0);
        })
        .catch(error => {
            console.error('Error:', error);
        });
}
function Top_10 () {
    fetch(`http://127.0.0.1:8000/api/contenidos/?pelicula_serie=${pelicula_serie}`)
        .then(response => { 
            if (!response.ok) throw new Error('Error al obtener los contenidos');
            return response.json();
        })
        .then(data => {
            const peliculas = data.results || data;
        // Generar dinámicamente el Top 10 en el carrusel
            const top10 = peliculas
                .sort((a, b) => b.puntuacion - a.puntuacion) // Ordenar de mayor a menor
                .slice(0, 10); // Tomar las 10 primeras

            const carouselTrack = document.getElementById('carouselTrack');
            carouselTrack.innerHTML = ''; // Limpiar contenido anterior

            top10.forEach(peli => {
                const slide = document.createElement('li');
                slide.className = 'carousel-slide';
                slide.innerHTML = `
                    <div class="media-card neon-card">
                        <div class="card-image">
                            <img src="${peli.imagen_poster}" alt="${peli.alt_imagen_poster ? peli.alt_imagen_poster : peli.titulo}">
                            <div class="card-overlay">
                                <div class="card-actions">
                                    <button class="card-action-btn info-btn" data-id="${peli.id_contenido}">
                                        <i class="fas fa-info-circle"></i>
                                    </button>
                                    <button class="card-action-btn bookmark-btn" data-id="${peli.id_contenido}">
                                        <i class="fas fa-bookmark"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="card-rating">
                                <div class="rating-circle">
                                    <span>${peli.puntuacion * 2 ? peli.puntuacion.toFixed(1) * 2 : '-'}</span>
                                </div>
                            </div>
                            <div class="card-badge">${peli.generos && peli.generos.length > 0 ? (peli.generos[0].nombre || peli.generos[0].name || '') : ''}</div>
                        </div>
                        <div class="card-content">
                            <h3>${peli.titulo}</h3>
                            <div class="card-meta">
                                <span>${peli.año_estreno || ''}</span>
                                <span>${peli.duracion + ' min'}</span>
                            </div>
                        </div>
                    </div>
                `;
                carouselTrack.appendChild(slide);
            });
        }).catch(error => {
            console.error('Error al cargar el Top 10:', error);
        }
    );
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
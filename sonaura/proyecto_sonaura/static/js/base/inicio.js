let premium = false;
let premiumLoaded = false;
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

    // Function to fetch and display Top 5 content
    function fetchTop5(pelicula_serie, containerId) {
        fetch(`http://127.0.0.1:8000/api/contenidos/?pelicula_serie=${pelicula_serie}&limit=5`)
            .then(response => {
                if (!response.ok) throw new Error(`Error al obtener ${pelicula_serie}`);
                return response.json();
            })
            .then(data => {
                const items = data.results || data;
                // Sort by rating and take top 5
                const top5 = items
                    .sort((a, b) => b.puntuacion - a.puntuacion)
                    .slice(0, 5);
                const container = document.getElementById(containerId);
                container.innerHTML = '<div class="media-grid"></div>'; // Initialize with media-grid

                const mediaGrid = container.querySelector('.media-grid');
                top5.forEach(item => {
                    const card = document.createElement('div');
                    card.className = 'media-card neon-card';
                    card.innerHTML = `
                        <div class="card-image">
                            <img src="${item.imagen_poster}" alt="${item.alt_imagen_poster || item.titulo}">
                            <div class="card-overlay-inicio">
                                <div class="card-actions-inicio">
                                    <button class="card-action-btn-inicio" onclick="location.href='/detalles/${item.id_contenido}/'">
                                        <a><i class="fas fa-info-circle"></i></a>
                                    </button>
                                    <button class="card-action-btn-inicio bookmark-btn" data-id="${item.id_contenido}">
                                        <i class="fas fa-bookmark"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="card-rating-inicio">
                                <div class="rating-circle">
                                    <span>${item.puntuacion ? (item.puntuacion * 2).toFixed(1) : '-'}</span>
                                </div>
                            </div>
                            <div class="card-badge-inicio">${item.generos && item.generos.length > 0 ? (item.generos[0].nombre || item.generos[0].name || '') : ''}</div>
                        </div>
                        <div class="card-content">
                            <h3>${item.titulo}</h3>
                            <div class="card-meta">
                                <span>${item.año_estreno || ''}</span>
                                <span>${pelicula_serie === 'pelicula' ? (item.duracion ? item.duracion + ' min' : '') : (item.temporadas ? item.temporadas + ' Temporada' + (item.temporadas > 1 ? 's' : '') : '')}</span>
                            </div>
                        </div>
                    `;
                    mediaGrid.appendChild(card);
                });
            })
            .catch(error => {
                console.error(`Error al cargar el Top 5 de ${pelicula_serie}:`, error);
            });
    }

    // Function to fetch and display Top 3 series in hero-visual
    function fetchTop3Series() {
        fetch(`http://127.0.0.1:8000/api/contenidos/?pelicula_serie=serie`)
            .then(response => {
                if (!response.ok) throw new Error('Error al obtener series');
                return response.json();
            })
            .then(data => {
                const items = data.results || data;
                // Sort by rating and take top 3
                const top3 = items
                    .sort((a, b) => b.puntuacion - a.puntuacion)
                    .slice(0, 3);

                const floatingCards = document.querySelector('.floating-cards');
                floatingCards.innerHTML = ''; // Clear previous content

                // Define animation delays
                const delays = ['0s', '0.2s', '0.4s'];
                top3.forEach((item, index) => {
                    const card = document.createElement('div');
                    card.className = 'card-float';
                    card.style = `--delay: ${delays[index]}`;
                    card.innerHTML = `
                        <img src="${item.imagen_poster}" alt="${item.alt_imagen_poster || item.titulo}">
                    `;
                    floatingCards.appendChild(card);
                });
            })
            .catch(error => {
                console.error('Error al cargar el Top 3 de series:', error);
            });
    }

    // Fetch Top 5 movies and series
    fetchTop5('pelicula', 'peliculas-content');
    fetchTop5('serie', 'series-content');
    // Fetch Top 3 series for hero-visual
    fetchTop3Series();
});
async function inicializar() {
    await verificarUsuarioPremium(); // Esperar a que se complete la verificación
}
// Cargar estado premium
async function verificarUsuarioPremium() {
    const token = localStorage.getItem('access_token');

    if (!token) {
        console.log('Usuario no autenticado');
        premium = false;
        premiumLoaded = true;
        return;
    }

    try {
        const response = await fetch('http://127.0.0.1:8000/api/verificar-usuario/', {
            method: 'GET',
            headers: {
                'Authorization': `Bearer ${token}`,
                'Content-Type': 'application/json'
            }
        });

        if (!response.ok) {
            throw new Error('Error al verificar el estado del usuario');
        }

        const data = await response.json();
        console.log('Usuario:', data);

        premium = data.es_premium;
    } catch (error) {
        console.error('Error:', error);
        premium = false;
    }

    premiumLoaded = true;
}
// Llamar a la función inicializar al cargar la página
inicializar();
// Añadir event listeners para los botones de información y marcador
setTimeout(() => {
    document.querySelectorAll('.bookmark-btn').forEach(btn => {
        btn.addEventListener('click', function(e) {
            e.stopPropagation(); // Prevent touch event on card
            const id = this.getAttribute('data-id');
            console.log(id);
            if(premium){
                agregarElementoLista(id);
            }else{
            window.location.href = `/premium`;
            }
        });
    });

    // Añadir soporte para eventos táctiles
    document.querySelectorAll('.media-card').forEach(card => {
        card.addEventListener('touchstart', function(e) {
            // Prevenir comportamiento predeterminado en algunos dispositivos
            e.preventDefault();
            // Alternar la clase active en el card-overlay
            const overlay = this.querySelector('.card-overlay');
            overlay.classList.toggle('active');
        });
    });
}, 100);
async function agregarElementoLista(id) {
    const token = localStorage.getItem('access_token');
    
    try {
        const response = await fetch('/api/lista-personalizada/', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'Authorization': `Bearer ${token}`
            },
            body: JSON.stringify({
                id_contenido: id
            })
        });
        
        if (!response.ok) {
            throw new Error('Error al añadir a la lista');
        }
        
        const data = await response.json();
        abrirModal('Elemento añadido a su lista: ' + data["contenido"]["titulo"]);
    } catch (error) {
        console.error('Error:', error);
        abrirModal('Error al añadir el elemento', error);
    }
}
// Función para abrir el modal
function abrirModal(mensaje = null) {
    const modal = document.getElementById('modalAviso');
    const mensajeElement = document.getElementById('mensajeModalAviso');

    if (mensaje) {
        mensajeElement.innerHTML = mensaje;
    }

    modal.classList.add('active');
    document.body.style.overflow = 'hidden'; // Prevenir scroll del body

    // Focus en el botón de cerrar para accesibilidad
    setTimeout(() => {
        document.getElementById('cerrarModalAviso').focus();
    }, 100);
}

// Función para cerrar el modal
function cerrarModal() {
    const modal = document.getElementById('modalAviso');
    modal.classList.remove('active');
    document.body.style.overflow = ''; // Restaurar scroll del body
}

// Cerrar modal al hacer clic en el overlay
document.getElementById('modalAviso').addEventListener('click', function (e) {
    if (e.target === this) {
        cerrarModal();
    }
});

// Cerrar modal con la tecla Escape
document.addEventListener('keydown', function (e) {
    if (e.key === 'Escape') {
        const modal = document.getElementById('modalAviso');
        if (modal.classList.contains('active')) {
            cerrarModal();
        }
    }
});
function renderNoticias(noticias) {
    const container = document.getElementById('news-dynamic-container');
    if (!container) return;

    // Tomamos las dos primeras como destacadas, el resto secundarias
    const [featured1, featured2, ...secondary] = noticias;

    let html = `
      <div class="news-left-inicio">
        ${featured1 ? `
          <div class="news-featured-inicio">
            <div class="news-image">
              <img src="${featured1.imagen_principal || '/static/img/default_news.jpg'}" alt="${featured1.alt_imagen_principal || featured1.titulo}">
            </div>
            <div class="news-content">
              <h3>${featured1.titulo}</h3>
              <div class="news-meta">
                <span class="news-date"><i class="far fa-calendar-alt"></i> ${new Date(featured1.fecha_publicacion).toLocaleDateString('es-ES')}</span>
                <span class="news-author"><i class="far fa-user"></i> ${featured1.creador}</span>
              </div>
              <p>${featured1.contenido.substring(0, 100)}...</p>
              <a href="/noticia/${featured1.id_noticia}/" class="read-more">Leer artículo completo <i class="fas fa-long-arrow-alt-right"></i></a>
            </div>
          </div>
        ` : ''}
        ${featured2 ? `
          <div class="news-featured-inicio">
            <div class="news-image">
              <img src="${featured2.imagen_principal || '/static/img/default_news.jpg'}" alt="${featured2.alt_imagen_principal || featured2.titulo}">
            </div>
            <div class="news-content">
              <h3>${featured2.titulo}</h3>
              <div class="news-meta">
                <span class="news-date"><i class="far fa-calendar-alt"></i> ${new Date(featured2.fecha_publicacion).toLocaleDateString('es-ES')}</span>
                <span class="news-author"><i class="far fa-user"></i> ${featured2.creador}</span>
              </div>
              <p>${featured2.contenido.substring(0, 100)}...</p>
              <a href="/noticia/${featured2.id_noticia}/" class="read-more">Leer artículo completo <i class="fas fa-long-arrow-alt-right"></i></a>
            </div>
          </div>
        ` : ''}
      </div>
      <div class="news-secondary-inicio">
        ${secondary.slice(0, 3).map(noticia => `
          <div class="news-card-inicio">
            <div class="news-image">
              <img src="${noticia.imagen_principal || '/static/img/default_news.jpg'}" alt="${noticia.alt_imagen_principal || noticia.titulo}">
            </div>
            <div class="news-content">
              <h3>${noticia.titulo}</h3>
              <div class="news-meta">
                <span class="news-date"><i class="far fa-calendar-alt"></i> ${new Date(noticia.fecha_publicacion).toLocaleDateString('es-ES')}</span>
              </div>
              <p>${noticia.contenido.substring(0, 80)}...</p>
              <a href="/noticia/${noticia.id_noticia}/" class="read-more">Leer más <i class="fas fa-long-arrow-alt-right"></i></a>
            </div>
          </div>
        `).join('')}
      </div>
    `;

    container.innerHTML = html;
}

function fetchNoticias() {
    fetch('http://127.0.0.1:8000/api/noticias/?limit=4')
        .then(response => response.json())
        .then(data => {
            const noticias = data.results || data;
            renderNoticias(noticias);
        })
        .catch(error => {
            console.error('Error al cargar las noticias:', error);
        });
}

// Llama a la función al cargar la página
document.addEventListener('DOMContentLoaded', fetchNoticias);

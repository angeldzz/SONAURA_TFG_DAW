document.addEventListener('DOMContentLoaded', function() {
    // Obtener el ID del contenido desde el input oculto
    const contenidoId = document.getElementById('contenido-id').value;
    // Función para cargar el reparto dinámicamente
    function cargarReparto(contenidoId) {
        fetch(`http://127.0.0.1:8000/api/repartos/?id_contenido=${contenidoId}`)
            .then(response => {
                if (!response.ok) {
                    throw new Error('Error al obtener el reparto');
                }
                return response.json();
            })
            .then(data => {
                // Manejar tanto si la respuesta tiene 'results' (paginada) como si es un array directo
                const reparto = data.results || data;

                const castGrid = document.querySelector('.cast-grid');
                castGrid.innerHTML = ''; // Limpiar contenido anterior

                if (reparto.length === 0) {
                    const noCastMessage = document.createElement('p');
                    noCastMessage.textContent = 'No hay información de reparto disponible para este contenido.';
                    castGrid.appendChild(noCastMessage);
                    return;
                }

                reparto.forEach(item => {
                    // Verificar que actor y personaje existan
                    if (item.actor && item.personaje) {
                        const castCard = document.createElement('div');
                        castCard.className = 'cast-card';

                        // Usar imagen_actor si existe, sino un placeholder
                        const imagenActor = item.actor.imagen_actor || '/placeholder.svg?height=150&width=150';
                        const altImagen = item.actor.nombre_actor || 'Actor';

                        castCard.innerHTML = `
                            <div class="cast-image">
                                <img src="${imagenActor}" alt="${altImagen}">
                            </div>
                            <div class="cast-info">
                                <h4>${item.actor.nombre_actor}</h4>
                                <p>${item.personaje}</p>
                            </div>
                        `;

                        castGrid.appendChild(castCard);
                    }
                });
            })
            .catch(error => {
                console.error('Error al cargar el reparto:', error);
                const castGrid = document.querySelector('.cast-grid');
                castGrid.innerHTML = '<p>Error al cargar el reparto. Por favor, intenta de nuevo más tarde.</p>';
            });
    }
    function cargarDetalleContenido(contenidoId){
        fetch(`http://127.0.0.1:8000/api/contenidos/${contenidoId}`)
            .then(response => {
                if (!response.ok) {
                    throw new Error('Error al obtener el contenido');
                }
                return response.json();
            })
            .then(data => {
                genero_contenido = data.generos[0].nombre;
                cargarPeliculasSimilares(genero_contenido);
            })
            .catch(error => {
                console.error('Error al cargar el contenido:', error);
                const castGrid = document.querySelector('.cast-grid');
                castGrid.innerHTML = '<p>Error al cargar el contenido. Por favor, intenta de nuevo más tarde.</p>';
            });
    }
    function cargarPeliculasSimilares(genero) {
        // Construir la URL con parámetros para filtrar por género y limitar a 3 resultados
        const url = `http://127.0.0.1:8000/api/contenidos/?genero=${encodeURIComponent(genero)}&limit=3`;
        
        fetch(url)
            .then(response => {
                if (!response.ok) {
                    throw new Error('Error al obtener los contenidos similares');
                }
                return response.json();
            })
            .then(data => {
                console.log('Contenidos similares:', data.results);
                // Aquí puedes procesar los 3 contenidos obtenidos
            })
            .catch(error => {
                console.error('Error al cargar contenidos similares:', error);
                const castGrid = document.querySelector('.cast-grid');
                if (castGrid) {
                    castGrid.innerHTML = '<p>Error al cargar los contenidos similares. Por favor, intenta de nuevo más tarde.</p>';
                }
            });
    }
    // Llamar a la función para cargar el reparto si existe contenidoId
    if (contenidoId) {
        cargarDetalleContenido(contenidoId);
        cargarReparto(contenidoId);
    } else {
        console.error('No se encontró el ID del contenido');
        const castGrid = document.querySelector('.cast-grid');
        castGrid.innerHTML = '<p>Error: No se encontró el contenido.</p>';
    }
});
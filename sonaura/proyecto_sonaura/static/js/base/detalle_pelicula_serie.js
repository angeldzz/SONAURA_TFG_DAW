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
                console.log('Reparto:', reparto);

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

    // Llamar a la función para cargar el reparto si existe contenidoId
    if (contenidoId) {
        cargarReparto(contenidoId);
    } else {
        console.error('No se encontró el ID del contenido');
        const castGrid = document.querySelector('.cast-grid');
        castGrid.innerHTML = '<p>Error: No se encontró el contenido.</p>';
    }
});
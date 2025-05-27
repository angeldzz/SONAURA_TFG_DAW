document.addEventListener('DOMContentLoaded', function() {
    const contenidoId = document.getElementById('contenido-id').value;
    const commentsList = document.querySelector('.comments-list');
    const commentForm = document.querySelector('.comment-form');
    const submitCommentButton = commentForm.querySelector('.btn-primary');
    const commentTextarea = commentForm.querySelector('textarea');
    const starRating = commentForm.querySelector('.star-rating');
    const loadMoreButton = document.querySelector('.load-more button');
    let currentPage = 1;
    const commentsPerPage = 10;

    // Función para cargar comentarios
    function cargarComentarios(contenidoId, page = 1) {
        fetch(`http://127.0.0.1:8000/api/comentarios/?id_contenido=${contenidoId}&page=${page}`)
            .then(response => {
                if (!response.ok) {
                    throw new Error('Error al obtener los comentarios');
                }
                return response.json();
            })
            .then(data => {
                const comentarios = data.results || data;
                console.log('Comentarios:', comentarios);

                if (page === 1) {
                    commentsList.innerHTML = ''; // Limpiar si es la primera página
                }

                if (comentarios.length === 0 && page === 1) {
                    commentsList.innerHTML = '<p>No hay comentarios disponibles para este contenido.</p>';
                    loadMoreButton.parentElement.style.display = 'none';
                    return;
                }

                // Filtrar comentarios principales (sin padre)
                const comentariosPrincipales = comentarios.filter(c => !c.id_comentario_padre);

                comentariosPrincipales.forEach(comentario => {
                    const commentElement = document.createElement('div');
                    commentElement.className = 'comment';

                    const imagenAvatar = comentario.id_usuario ? `/media/avatares/${comentario.id_usuario}.jpg` : '/placeholder.svg?height=50&width=50';
                    const nombreUsuario = comentario.id_usuario || 'Anónimo';
                    const fecha = new Date(comentario.fecha_comentario).toLocaleDateString('es-ES', {
                        day: 'numeric',
                        month: 'long',
                        year: 'numeric'
                    });

                    // Generar estrellas según la puntuación
                    const puntuacion = comentario.puntuacion || 0;
                    let estrellas = '';
                    for (let i = 1; i <= 5; i++) {
                        if (i <= Math.floor(puntuacion)) {
                            estrellas += '<i class="fas fa-star"></i>';
                        } else if (i === Math.ceil(puntuacion) && puntuacion % 1 !== 0) {
                            estrellas += '<i class="fas fa-star-half-alt"></i>';
                        } else {
                            estrellas += '<i class="far fa-star"></i>';
                        }
                    }

                    commentElement.innerHTML = `
                        <div class="comment-avatar">
                            <img src="${imagenAvatar}" alt="Avatar de ${nombreUsuario}">
                        </div>
                        <div class="comment-content">
                            <div class="comment-header">
                                <h4>${nombreUsuario}</h4>
                                <div class="comment-rating">${estrellas}</div>
                            </div>
                            <div class="comment-date">${fecha}</div>
                            <p>${comentario.comentario}</p>
                            <div class="comment-actions">
                                <button data-id="${comentario.id_comentario}" class="like-comment">
                                    <i class="far fa-thumbs-up"></i> <span>${comentario.likes}</span>
                                </button>
                                <button data-id="${comentario.id_comentario}" class="dislike-comment">
                                    <i class="far fa-thumbs-down"></i> <span>${comentario.dislikes}</span>
                                </button>
                                <button data-id="${comentario.id_comentario}" class="reply-comment">
                                    <i class="far fa-comment"></i> Responder
                                </button>
                            </div>
                            <div class="reply-form" style="display: none; margin-top: 1rem;">
                                <textarea placeholder="Escribe tu respuesta aquí..." style="width: 100%; height: 80px; padding: 0.5rem; border-radius: 4px;"></textarea>
                                <button class="btn-primary" style="margin-top: 0.5rem;">Enviar respuesta</button>
                            </div>
                            <div class="replies" style="margin-left: 2rem;"></div>
                        </div>
                    `;

                    // Cargar respuestas
                    const respuestas = comentarios.filter(c => c.id_comentario_padre === comentario.id_comentario);
                    const repliesContainer = commentElement.querySelector('.replies');
                    respuestas.forEach(respuesta => {
                        const replyElement = document.createElement('div');
                        replyElement.className = 'comment';
                        const replyAvatar = respuesta.id_usuario ? `/media/avatares/${respuesta.id_usuario}.jpg` : '/placeholder.svg?height=50&width=50';
                        const replyNombre = respuesta.id_usuario || 'Anónimo';
                        const replyFecha = new Date(respuesta.fecha_comentario).toLocaleDateString('es-ES', {
                            day: 'numeric',
                            month: 'long',
                            year: 'numeric'
                        });
                        const replyPuntuacion = respuesta.puntuacion || 0;
                        let replyEstrellas = '';
                        for (let i = 1; i <= 5; i++) {
                            if (i <= Math.floor(replyPuntuacion)) {
                                replyEstrellas += '<i class="fas fa-star"></i>';
                            } else if (i === Math.ceil(replyPuntuacion) && replyPuntuacion % 1 !== 0) {
                                replyEstrellas += '<i class="fas fa-star-half-alt"></i>';
                            } else {
                                replyEstrellas += '<i class="far fa-star"></i>';
                            }
                        }

                        replyElement.innerHTML = `
                            <div class="comment-avatar">
                                <img src="${replyAvatar}" alt="Avatar de ${replyNombre}">
                            </div>
                            <div class="comment-content">
                                <div class="comment-header">
                                    <h4>${replyNombre}</h4>
                                    <div class="comment-rating">${replyEstrellas}</div>
                                </div>
                                <div class="comment-date">${replyFecha}</div>
                                <p>${respuesta.comentario}</p>
                                <div class="comment-actions">
                                    <button data-id="${respuesta.id_comentario}" class="like-comment">
                                        <i class="far fa-thumbs-up"></i> <span>${respuesta.likes}</span>
                                    </button>
                                    <button data-id="${respuesta.id_comentario}" class="dislike-comment">
                                        <i class="far fa-thumbs-down"></i> <span>${respuesta.dislikes}</span>
                                    </button>
                                </div>
                            </div>
                        `;
                        repliesContainer.appendChild(replyElement);
                    });

                    commentsList.appendChild(commentElement);
                });

                loadMoreButton.parentElement.style.display = data.next ? 'block' : 'none';
            })
            .catch(error => {
                console.error('Error al cargar los comentarios:', error);
                commentsList.innerHTML = '<p>Error al cargar los comentarios. Por favor, intenta de nuevo más tarde.</p>';
                loadMoreButton.parentElement.style.display = 'none';
            });
    }

    // Función para cargar valoraciones
    function cargarValoraciones(contenidoId) {
        fetch(`http://127.0.0.1:8000/api/valoraciones/?id_contenido=${contenidoId}`)
            .then(response => {
                if (!response.ok) {
                    throw new Error('Error al obtener las valoraciones');
                }
                return response.json();
            })
            .then(data => {
                const valoraciones = data.results || data;
                if (valoraciones.length === 0) {
                    document.querySelector('#valoraciones .ratings-summary').innerHTML = '<p>No hay valoraciones disponibles.</p>';
                    return;
                }

                // Calcular promedio
                const promedio = valoraciones.reduce((sum, v) => sum + v.puntuacion, 0) / valoraciones.length;
                const totalValoraciones = valoraciones.length;

                // Calcular distribución
                const distribucion = [0, 0, 0, 0, 0];
                valoraciones.forEach(v => {
                    const index = Math.floor(v.puntuacion) - 1;
                    if (index >= 0 && index < 5) distribucion[index]++;
                });
                const porcentajes = distribucion.map(count => (count / totalValoraciones * 100).toFixed(0));

                // Generar estrellas para el promedio
                let estrellasPromedio = '';
                for (let i = 1; i <= 5; i++) {
                    if (i <= Math.floor(promedio)) {
                        estrellasPromedio += '<i class="fas fa-star"></i>';
                    } else if (i === Math.ceil(promedio) && promedio % 1 !== 0) {
                        estrellasPromedio += '<i class="fas fa-star-half-alt"></i>';
                    } else {
                        estrellasPromedio += '<i class="far fa-star"></i>';
                    }
                }

                // Actualizar HTML
                document.querySelector('#valoraciones .ratings-summary').innerHTML = `
                    <div class="rating-big">
                        <div class="rating-number">${promedio.toFixed(1)}</div>
                        <div class="rating-stars">${estrellasPromedio}</div>
                        <div class="rating-count">Basado en ${totalValoraciones} valoraciones</div>
                    </div>
                    <div class="rating-bars">
                        ${distribucion.map((count, index) => `
                            <div class="rating-bar-item">
                                <div class="rating-label">${5 - index} <i class="fas fa-star"></i></div>
                                <div class="rating-bar">
                                    <div class="rating-fill" style="width: ${porcentajes[4 - index]}%"></div>
                                </div>
                                <div class="rating-percent">${porcentajes[4 - index]}%</div>
                            </div>
                        `).join('')}
                    </div>
                `;
            })
            .catch(error => {
                console.error('Error al cargar las valoraciones:', error);
                document.querySelector('#valoraciones .ratings-summary').innerHTML = '<p>Error al cargar las valoraciones.</p>';
            });
    }

    // Función para enviar comentario y valoración
    function enviarComentario() {
        const comentarioTexto = commentTextarea.value.trim();
        const puntuacion = Array.from(starRating.querySelectorAll('i'))
            .filter(star => star.classList.contains('selected')).length;

        if (!comentarioTexto) {
            alert('Por favor, escribe un comentario.');
            return;
        }

        // Enviar valoración
        const valoracionData = {
            id_contenido: contenidoId,
            puntuacion: puntuacion,
            texto_valoracion: comentarioTexto
        };

        fetch('http://127.0.0.1:8000/api/valoraciones/', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'Authorization': `Bearer ${localStorage.getItem('auth_token')}` // Ajusta según tu sistema de autenticación
            },
            body: JSON.stringify(valoracionData)
        })
            .then(response => {
                if (!response.ok) {
                    throw new Error('Error al enviar la valoración');
                }
                return response.json();
            })
            .then(() => {
                // Enviar comentario
                const comentarioData = {
                    id_contenido: contenidoId,
                    comentario: comentarioTexto
                };

                return fetch('http://127.0.0.1:8000/api/comentarios/', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                        'Authorization': `Bearer ${localStorage.getItem('auth_token')}`
                    },
                    body: JSON.stringify(comentarioData)
                });
            })
            .then(response => {
                if (!response.ok) {
                    throw new Error('Error al enviar el comentario');
                }
                return response.json();
            })
            .then(data => {
                console.log('Comentario enviado:', data);
                commentTextarea.value = ''; // Limpiar textarea
                starRating.querySelectorAll('i').forEach(star => star.classList.remove('selected', 'fas'));
                starRating.querySelectorAll('i').forEach(star => star.classList.add('far'));
                cargarComentarios(contenidoId, 1); // Recargar comentarios
                cargarValoraciones(contenidoId); // Actualizar valoraciones
            })
            .catch(error => {
                console.error('Error:', error);
                alert('Error al enviar el comentario o valoración. Por favor, verifica que estás autenticado.');
            });
    }

    // Manejar la selección de estrellas
    starRating.querySelectorAll('i').forEach((star, index) => {
        star.addEventListener('click', function() {
            starRating.querySelectorAll('i').forEach(s => {
                s.classList.remove('fas', 'selected');
                s.classList.add('far');
            });
            for (let i = 0; i <= index; i++) {
                starRating.children[i].classList.remove('far');
                starRating.children[i].classList.add('fas', 'selected');
            }
        });
    });

    // Manejar el envío del comentario
    submitCommentButton.addEventListener('click', enviarComentario);

    // Manejar la carga de más comentarios
    loadMoreButton.addEventListener('click', () => {
        currentPage++;
        cargarComentarios(contenidoId, currentPage);
    });

    // Manejar likes, dislikes y respuestas
    commentsList.addEventListener('click', function(event) {
        if (event.target.closest('.like-comment')) {
            const commentId = event.target.closest('.like-comment').dataset.id;
            fetch(`http://127.0.0.1:8000/api/comentarios/${commentId}/like/`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'Authorization': `Bearer ${localStorage.getItem('auth_token')}`
                }
            })
                .then(response => {
                    if (!response.ok) {
                        throw new Error('Error al dar like');
                    }
                    return response.json();
                })
                .then(data => {
                    event.target.closest('.like-comment').querySelector('span').textContent = data.likes;
                })
                .catch(error => {
                    console.error('Error al dar like:', error);
                    alert('Error al dar like. Por favor, verifica que estás autenticado.');
                });
        }

        if (event.target.closest('.dislike-comment')) {
            const commentId = event.target.closest('.dislike-comment').dataset.id;
            fetch(`http://127.0.0.1:8000/api/comentarios/${commentId}/dislike/`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'Authorization': `Bearer ${localStorage.getItem('auth_token')}`
                }
            })
                .then(response => {
                    if (!response.ok) {
                        throw new Error('Error al dar dislike');
                    }
                    return response.json();
                })
                .then(data => {
                    event.target.closest('.dislike-comment').querySelector('span').textContent = data.dislikes;
                })
                .catch(error => {
                    console.error('Error al dar dislike:', error);
                    alert('Error al dar dislike. Por favor, verifica que estás autenticado.');
                });
        }

        if (event.target.closest('.reply-comment')) {
            const commentId = event.target.closest('.reply-comment').dataset.id;
            const replyForm = event.target.closest('.comment').querySelector('.reply-form');
            replyForm.style.display = replyForm.style.display === 'none' ? 'block' : 'none';

            const submitReplyButton = replyForm.querySelector('.btn-primary');
            submitReplyButton.onclick = function() {
                const replyText = replyForm.querySelector('textarea').value.trim();
                if (!replyText) {
                    alert('Por favor, escribe una respuesta.');
                    return;
                }

                const replyData = {
                    id_contenido: contenidoId,
                    comentario: replyText,
                    id_comentario_padre: commentId
                };

                fetch('http://127.0.0.1:8000/api/comentarios/', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                        'Authorization': `Bearer ${localStorage.getItem('auth_token')}`
                    },
                    body: JSON.stringify(replyData)
                })
                    .then(response => {
                        if (!response.ok) {
                            throw new Error('Error al enviar la respuesta');
                        }
                        return response.json();
                    })
                    .then(data => {
                        console.log('Respuesta enviada:', data);
                        replyForm.querySelector('textarea').value = '';
                        replyForm.style.display = 'none';
                        cargarComentarios(contenidoId, 1);
                    })
                    .catch(error => {
                        console.error('Error al enviar la respuesta:', error);
                        alert('Error al enviar la respuesta. Por favor, verifica que estás autenticado.');
                    });
            };
        }
    });

    // Cargar comentarios y valoraciones iniciales
    if (contenidoId) {
        cargarComentarios(contenidoId);
        cargarValoraciones(contenidoId);
    } else {
        commentsList.innerHTML = '<p>Error: No se encontró el contenido.</p>';
        loadMoreButton.parentElement.style.display = 'none';
        document.querySelector('#valoraciones .ratings-summary').innerHTML = '<p>Error: No se encontró el contenido.</p>';
    }
});
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

                    // Usar avatar_url del API o fallback a placeholder
                    const imagenAvatar = comentario.avatar_url || '/placeholder.svg?height=50&width=50';
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
                            <img src="${imagenAvatar}" alt="Avatar de ${nombreUsuario}" onerror="this.src='/placeholder.svg?height=50&width=50'">
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
                        // Usar avatar_url del API o fallback a placeholder
                        const replyAvatar = respuesta.avatar_url || '/placeholder.svg?height=50&width=50';
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
                                <img src="${replyAvatar}" alt="Avatar de ${replyNombre}" onerror="this.src='/placeholder.svg?height=50&width=50'">
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
                    document.querySelector('#valoraciones .ratings-summary').innerHTML = '<p>Valoraciones actualmente basadas en datos de internet, se el primero en valorar.</p>';
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

    // Función para enviar comentario y/o valoración
    function enviarComentario() {
        const comentarioTexto = commentTextarea.value.trim();
        const puntuacion = Array.from(starRating.querySelectorAll('i'))
            .filter(star => star.classList.contains('selected')).length;

        // Permitir enviar solo valoración o solo comentario
        if (!comentarioTexto && puntuacion === 0) {
            mostrarAviso('Por favor, escribe un comentario o selecciona una valoración.');
            return;
        }

        // Si hay valoración, envía primero la valoración
        let valoracionPromise = Promise.resolve();
        if (puntuacion > 0) {
            const valoracionData = {
                id_contenido: contenidoId,
                puntuacion: puntuacion,
                texto_valoracion: comentarioTexto // Puedes dejarlo vacío si quieres
            };
            valoracionPromise = fetch('http://127.0.0.1:8000/api/valoraciones/', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'Authorization': `Bearer ${localStorage.getItem('access_token')}`
                },
                body: JSON.stringify(valoracionData)
            })
            .then(response => {
                if (!response.ok) {
                    if (response.status === 401) {
                        mostrarAviso('Debes iniciar sesión para valorar.');
                        throw new Error('No autorizado');
                    }
                    return response.json().then(err => {
                        if (response.status === 500) {
                            throw new Error('Ya has valorado este contenido.');
                        }
                        throw new Error('Error al enviar la valoración');
                    });
                }
                return response.json();
            });
        }

        // Si hay comentario, envía el comentario después (o solo si no hay valoración)
        valoracionPromise
            .then(() => {
                if (comentarioTexto) {
                    const comentarioData = {
                        id_contenido: contenidoId,
                        comentario: comentarioTexto
                    };
                    return fetch('http://127.0.0.1:8000/api/comentarios/', {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json',
                            'Authorization': `Bearer ${localStorage.getItem('access_token')}`
                        },
                        body: JSON.stringify(comentarioData)
                    })
                    .then(response => {
                        if (!response.ok) {
                            if (response.status === 401) {
                                mostrarAviso('Debes iniciar sesión para comentar.');
                                throw new Error('No autorizado');
                            }
                            throw new Error('Error al enviar el comentario');
                        }
                        return response.json();
                    });
                }
            })
            .then(() => {
                commentTextarea.value = '';
                starRating.querySelectorAll('i').forEach(star => star.classList.remove('selected', 'fas'));
                starRating.querySelectorAll('i').forEach(star => star.classList.add('far'));
                cargarComentarios(contenidoId, 1);
                cargarValoraciones(contenidoId);
            })
            .catch(error => {
                console.error('Error:', error);
                mostrarAviso(error);
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
                    'Authorization': `Bearer ${localStorage.getItem('access_token')}`
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
                    mostrarAviso('Error al dar like. Por favor, verifica que estás autenticado.');
                });
        }

        if (event.target.closest('.dislike-comment')) {
            const commentId = event.target.closest('.dislike-comment').dataset.id;
            fetch(`http://127.0.0.1:8000/api/comentarios/${commentId}/dislike/`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'Authorization': `Bearer ${localStorage.getItem('access_token')}`
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
                    mostrarAviso('Error al dar dislike. Por favor, verifica que estás autenticado.');
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
                    mostrarAviso('Por favor, escribe una respuesta.');
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
                        'Authorization': `Bearer ${localStorage.getItem('access_token')}`
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
                        replyForm.querySelector('textarea').value = '';
                        replyForm.style.display = 'none';
                        cargarComentarios(contenidoId, 1);
                    })
                    .catch(error => {
                        console.error('Error al enviar la respuesta:', error);
                        mostrarAviso('Error al enviar la respuesta. Por favor, verifica que estás autenticado.');
                    });
            };
        }
    });

    // Carga comentarios y valoraciones iniciales
    if (contenidoId) {
        cargarComentarios(contenidoId);
        cargarValoraciones(contenidoId);
    } else {
        commentsList.innerHTML = '<p>Error: No se encontró el contenido.</p>';
        loadMoreButton.parentElement.style.display = 'none';
        document.querySelector('#valoraciones .ratings-summary').innerHTML = '<p>Error: No se encontró el contenido.</p>';
    }

    // Modal de avisos
    function mostrarAviso(mensaje) {
        const modalAviso = document.getElementById('modalAviso');
        const mensajeModalAviso = modalAviso.querySelector('#mensajeModalAviso');
        if (mensajeModalAviso) {
            mensajeModalAviso.innerHTML = mensaje;
        }
        if (modalAviso) {
            modalAviso.classList.add('active');
            document.body.style.overflow = 'hidden';
            setTimeout(() => {
                const cerrarBtn = document.getElementById('cerrarModalAviso');
                if (cerrarBtn) {
                    cerrarBtn.focus();
                }
            }, 100);
        }
    }

    // Cerrar el modal
    const modalAviso = document.getElementById('modalAviso');
    const cerrarModalAviso = document.getElementById('cerrarModalAviso');
    if (cerrarModalAviso && modalAviso) {
        cerrarModalAviso.addEventListener('click', function() {
            modalAviso.classList.remove('active');
            document.body.style.overflow = '';
        });

        window.addEventListener('click', function(event) {
            if (event.target === modalAviso) {
                modalAviso.classList.remove('active');
                document.body.style.overflow = '';
            }
        });
    }

    // Cerrar modal con tecla Escape
    document.addEventListener('keydown', function(event) {
        if (event.key === 'Escape' && modalAviso && modalAviso.classList.contains('active')) {
            modalAviso.classList.remove('active');
            document.body.style.overflow = '';
        }
    });
});
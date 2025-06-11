document.addEventListener('DOMContentLoaded', function() {
    // Barra de progreso de lectura
    const progressBar = document.getElementById('reading-progress');
    const article = document.querySelector('.article-content');
    
    function updateReadingProgress() {
        const articleTop = article.offsetTop;
        const articleHeight = article.offsetHeight;
        const windowHeight = window.innerHeight;
        const scrollTop = window.pageYOffset;
        
        const progress = Math.min(
            Math.max((scrollTop - articleTop + windowHeight) / articleHeight * 100, 0),
            100
        );
        
        progressBar.style.width = progress + '%';
    }
    
    window.addEventListener('scroll', updateReadingProgress);
    updateReadingProgress();

    // Incrementar vistas (solo una vez por sesión)
    const noticiaId = document.querySelector('.article-detail').dataset.noticiaId;
    if (!sessionStorage.getItem(`noticia_${noticiaId}_viewed`)) {
        const csrfToken = document.querySelector('[name=csrfmiddlewaretoken]').value;
        
        fetch(`/api/noticias/${noticiaId}/incrementar-vistas/`, {
            method: 'POST',
            headers: {
                'X-CSRFToken': csrfToken,
                'Content-Type': 'application/json',
            },
        }).then(() => {
            sessionStorage.setItem(`noticia_${noticiaId}_viewed`, 'true');
        });
    }
});

// Función para compartir artículo
function shareArticle() {
    const title = document.querySelector('.article-title').innerText;
    const url = window.location.href;
    
    if (navigator.share) {
        navigator.share({
            title: title,
            text: title,
            url: url
        });
    } else {
        // Fallback para navegadores que no soportan Web Share API
        navigator.clipboard.writeText(url).then(() => {
            alert('Enlace copiado al portapapeles');
        });
    }
}

// Función para guardar/quitar de favoritos
function toggleBookmark() {
    const button = event.target.closest('button');
    const icon = button.querySelector('i');
    
    if (icon.classList.contains('far')) {
        icon.classList.remove('far');
        icon.classList.add('fas');
        button.innerHTML = '<i class="fas fa-bookmark"></i> Guardado';
        
        // Aquí puedes agregar la lógica para guardar en favoritos
        // Por ejemplo, una petición AJAX a tu backend
        saveToFavorites();
    } else {
        icon.classList.remove('fas');
        icon.classList.add('far');
        button.innerHTML = '<i class="far fa-bookmark"></i> Guardar';
        
        // Aquí puedes agregar la lógica para quitar de favoritos
        removeFromFavorites();
    }
}

// Función para guardar en favoritos (implementación de ejemplo)
function saveToFavorites() {
    const noticiaId = document.querySelector('.article-detail').dataset.noticiaId;
    const csrfToken = document.querySelector('[name=csrfmiddlewaretoken]').value;
    
    // Esta es una implementación de ejemplo, deberías adaptarla a tu API
    fetch(`/api/noticias/${noticiaId}/favoritos/`, {
        method: 'POST',
        headers: {
            'X-CSRFToken': csrfToken,
            'Content-Type': 'application/json',
        },
    });
}

// Función para quitar de favoritos (implementación de ejemplo)
function removeFromFavorites() {
    const noticiaId = document.querySelector('.article-detail').dataset.noticiaId;
    const csrfToken = document.querySelector('[name=csrfmiddlewaretoken]').value;
    
    // Esta es una implementación de ejemplo, deberías adaptarla a tu API
    fetch(`/api/noticias/${noticiaId}/favoritos/`, {
        method: 'DELETE',
        headers: {
            'X-CSRFToken': csrfToken,
            'Content-Type': 'application/json',
        },
    });
}
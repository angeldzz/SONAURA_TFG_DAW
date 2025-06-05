document.addEventListener("DOMContentLoaded", function () {
  // Search toggle
  const searchToggle = document.querySelector(".search-toggle");
  const searchOverlay = document.querySelector(".search-overlay");
  const searchClose = document.querySelector(".search-close");

  searchToggle.addEventListener("click", function () {
    searchOverlay.classList.add("active");
    document.body.classList.add("search-open");
    setTimeout(() => {
      searchOverlay.querySelector("input").focus();
    }, 300);
  });

  searchClose.addEventListener("click", function () {
    searchOverlay.classList.remove("active");
    document.body.classList.remove("search-open");
  });

  // Mobile menu toggle
  const mobileToggle = document.querySelector(".mobile-toggle");
  const header = document.querySelector(".header");

  mobileToggle.addEventListener("click", function () {
    header.classList.toggle("menu-open");
    document.body.classList.toggle("no-scroll");
  });
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

// Token verification and logout logic
document.addEventListener('DOMContentLoaded', async function () {
    const access = localStorage.getItem('access_token');
    if (access) {
        const response = await fetch('/api/token/verify/', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ token: access })
        });
        if (!response.ok) {
            // Remove JWT tokens
            localStorage.removeItem('access_token');
            localStorage.removeItem('refresh_token');
            // Perform Django logout
            await fetch('/logout/', {
                method: 'POST',
                headers: {
                    'X-CSRFToken': getCookie('csrftoken')
                },
                credentials: 'same-origin'
            });
        }
    }

    // Function to get CSRF token from cookies
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
function borrarTokens(event) {
    event.preventDefault();
    localStorage.removeItem("access_token");
    localStorage.removeItem("refresh_token");
    event.target.submit();
  }

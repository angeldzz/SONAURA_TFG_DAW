document.addEventListener("DOMContentLoaded", function () {
  // Password visibility toggle
  const passwordToggles = document.querySelectorAll(".password-toggle");

  passwordToggles.forEach((toggle) => {
    toggle.addEventListener("click", function () {
      const passwordInput = this.previousElementSibling;
      const type =
        passwordInput.getAttribute("type") === "password" ? "text" : "password";
      passwordInput.setAttribute("type", type);

      // Toggle eye icon
      const icon = this.querySelector("i");
      icon.classList.toggle("fa-eye");
      icon.classList.toggle("fa-eye-slash");
    });
  });

  // Input focus effects
  const inputs = document.querySelectorAll(".form-group input");

  inputs.forEach((input) => {
    input.addEventListener("focus", function () {
      this.parentElement.classList.add("focused");
    });

    input.addEventListener("blur", function () {
      if (this.value === "") {
        this.parentElement.classList.remove("focused");
      }
    });

    // Check if input has value on page load
    if (input.value !== "") {
      input.parentElement.classList.add("focused");
    }
  });

  // Crear estrellas fugaces aleatorias
  function createShootingStar() {
    const shootingStarsContainer = document.querySelector(".shooting-stars");
    const shootingStar = document.createElement("div");
    shootingStar.classList.add("shooting-star");

    // Posición aleatoria
    const startX = Math.random() * 100;
    const startY = Math.random() * 100;
    const angle = Math.random() * 45;

    shootingStar.style.top = `${startY}%`;
    shootingStar.style.left = `${startX}%`;
    shootingStar.style.transform = `rotate(${angle}deg)`;

    shootingStarsContainer.appendChild(shootingStar);

    // Eliminar la estrella después de la animación
    setTimeout(() => {
      shootingStar.remove();
    }, 1000);
  }

  // Crear estrellas fugaces periódicamente
  setInterval(createShootingStar, 2000);

  // Efecto parallax para los círculos animados
  document.addEventListener("mousemove", function (e) {
    const circles = document.querySelectorAll(".circle");
    const x = e.clientX / window.innerWidth;
    const y = e.clientY / window.innerHeight;

    circles.forEach((circle, index) => {
      const speed = (index + 1) * 20;
      circle.style.transform = `translate(${x * speed}px, ${y * speed}px)`;
    });
  });

  // --- INICIO: LOGIN CON TOKEN JWT ---
  const loginForm = document.querySelector(".login-form");
  if (loginForm) {
    loginForm.addEventListener("submit", async function (e) {
      e.preventDefault();

      const username = loginForm.querySelector('input[name="username"]').value;
      const password = loginForm.querySelector('input[name="password"]').value;

      // 1. Login Django clásico (crea sesión)
      const formData = new FormData();
      formData.append("username", username);
      formData.append("password", password);
      formData.append(
        "csrfmiddlewaretoken",
        loginForm.querySelector("[name=csrfmiddlewaretoken]").value
      );

      try {
        const loginResponse = await fetch("/login/", {
          method: "POST",
          body: formData,
        });

        if (!loginResponse.ok) {
          // Mostrar error en el formulario
          mostrarError("Nombre de usuario o contraseña incorrectos");
          return;
        }

        // 2. Pedir el token JWT
        const tokenResponse = await fetch("/api/token/", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ username, password }),
        });

        if (tokenResponse.ok) {
          const data = await tokenResponse.json();
          localStorage.setItem("access_token", data.access);
          localStorage.setItem("refresh_token", data.refresh);
          // Redirigir solo si todo es exitoso
          window.location.href = "/";
        } else {
          const errorData = await tokenResponse.json();
          mostrarError(
            "Error al obtener el token: " +
              (errorData.detail || "Error desconocido")
          );
          return; // Detener la ejecución si falla la obtención del token
        }
      } catch (error) {
        console.error("Error en el proceso de login:", error);
        mostrarError(
          "Ocurrió un error inesperado. Por favor, intenta de nuevo."
        );
        return; // Detener la ejecución en caso de error de red u otro
      }
    });
  }

// Función para mostrar error en el formulario
function mostrarError() {
    let errorDiv = document.querySelector(".error-message");
    const msg = "Credenciales incorrectas: el nombre de usuario o la contraseña son incorrectos";
    if (!errorDiv) {
        errorDiv = document.createElement("div");
        errorDiv.className = "error-message";
        errorDiv.innerHTML = `<i class="fas fa-exclamation-circle"></i><span></span>`;
        loginForm.prepend(errorDiv);
    }
    errorDiv.querySelector("span").textContent = msg;
}
});

// Configuración del countdown
const MAINTENANCE_END = new Date()
MAINTENANCE_END.setHours(MAINTENANCE_END.getHours() + 6) // 6 horas desde ahora

// Elementos del DOM
const hoursElement = document.getElementById("hours")
const minutesElement = document.getElementById("minutes")
const secondsElement = document.getElementById("seconds")
const notificationForm = document.getElementById("notificationForm")
const successMessage = document.getElementById("successMessage")
const loadingOverlay = document.getElementById("loadingOverlay")

// Función para actualizar el countdown
function updateCountdown() {
  const now = new Date().getTime()
  const distance = MAINTENANCE_END.getTime() - now

  if (distance > 0) {
    const hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60))
    const minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60))
    const seconds = Math.floor((distance % (1000 * 60)) / 1000)

    hoursElement.textContent = hours.toString().padStart(2, "0")
    minutesElement.textContent = minutes.toString().padStart(2, "0")
    secondsElement.textContent = seconds.toString().padStart(2, "0")
  } else {
    // El mantenimiento ha terminado
    hoursElement.textContent = "00"
    minutesElement.textContent = "00"
    secondsElement.textContent = "00"

    // Mostrar mensaje de finalización
    showMaintenanceComplete()
  }
}

// Función para mostrar mensaje de mantenimiento completado
function showMaintenanceComplete() {
  const mainMessage = document.querySelector(".main-message")
  const countdownSection = document.querySelector(".countdown-section")

  mainMessage.innerHTML = `
        <h2 class="maintenance-title">
            <span class="glitch-text" data-text="¡COMPLETADO!">¡COMPLETADO!</span>
        </h2>
        <p class="maintenance-subtitle">
            El mantenimiento ha finalizado. Redirigiendo...
        </p>
        <div class="status-indicator">
            <div class="pulse-dot" style="background: #00ff88; box-shadow: 0 0 10px #00ff88;"></div>
            <span style="color: #00ff88;">Sistema restaurado</span>
        </div>
    `

  countdownSection.style.display = "none"

  // Redireccionar después de 3 segundos
  setTimeout(() => {
    window.location.href = "/"
  }, 3000)
}

// Función para manejar el formulario de notificación
function handleNotificationForm(e) {
  e.preventDefault()

  const email = document.getElementById("email").value
  const button = e.target.querySelector(".notify-btn")
  const originalText = button.innerHTML

  // Mostrar estado de carga
  button.innerHTML = '<i class="fas fa-spinner fa-spin"></i> Enviando...'
  button.disabled = true

  // Simular envío (aquí integrarías con tu backend)
  setTimeout(() => {
    // Mostrar mensaje de éxito
    successMessage.classList.add("show")
    notificationForm.style.display = "none"

    // Guardar email en localStorage
    localStorage.setItem("notificationEmail", email)

    // Restaurar botón después de un momento
    setTimeout(() => {
      button.innerHTML = originalText
      button.disabled = false
    }, 2000)
  }, 2000)
}

// Función para crear efectos de partículas adicionales
function createParticleEffect() {
  const particlesContainer = document.querySelector(".floating-particles")

  setInterval(() => {
    const particle = document.createElement("div")
    particle.className = "particle"
    particle.style.left = Math.random() * 100 + "%"
    particle.style.animationDuration = Math.random() * 3 + 3 + "s"
    particle.style.animationDelay = "0s"

    particlesContainer.appendChild(particle)

    // Remover partícula después de la animación
    setTimeout(() => {
      if (particle.parentNode) {
        particle.parentNode.removeChild(particle)
      }
    }, 6000)
  }, 2000)
}

// Función para animar las herramientas
function animateTools() {
  const tools = document.querySelectorAll(".tool-icon")

  tools.forEach((tool, index) => {
    tool.addEventListener("mouseenter", () => {
      tool.style.transform = "scale(1.2) rotate(180deg)"
      tool.style.boxShadow = "0 0 30px var(--accent-cyan)"
    })

    tool.addEventListener("mouseleave", () => {
      tool.style.transform = "scale(1) rotate(0deg)"
      tool.style.boxShadow = "var(--neon-glow)"
    })
  })
}

// Función para efectos de scroll
function handleScrollEffects() {
  const observer = new IntersectionObserver(
    (entries) => {
      entries.forEach((entry) => {
        if (entry.isIntersecting) {
          entry.target.style.opacity = "1"
          entry.target.style.transform = "translateY(0)"
        }
      })
    },
    {
      threshold: 0.1,
      rootMargin: "0px 0px -50px 0px",
    },
  )

  // Observar elementos para animaciones de entrada
  document
    .querySelectorAll(".improvement-card, .notification-card, .contact-section, .social-section")
    .forEach((el) => {
      el.style.opacity = "0"
      el.style.transform = "translateY(30px)"
      el.style.transition = "all 0.6s ease"
      observer.observe(el)
    })
}

// Función para manejar el estado de carga
function handleLoadingState() {
  // Simular tiempo de carga
  setTimeout(() => {
    loadingOverlay.classList.add("hidden")
  }, 1500)
}

// Función para efectos de sonido (opcional)
function playNotificationSound() {
  // Crear un contexto de audio simple
  const audioContext = new (window.AudioContext || window.webkitAudioContext)()
  const oscillator = audioContext.createOscillator()
  const gainNode = audioContext.createGain()

  oscillator.connect(gainNode)
  gainNode.connect(audioContext.destination)

  oscillator.frequency.setValueAtTime(800, audioContext.currentTime)
  oscillator.frequency.setValueAtTime(600, audioContext.currentTime + 0.1)

  gainNode.gain.setValueAtTime(0.3, audioContext.currentTime)
  gainNode.gain.exponentialRampToValueAtTime(0.01, audioContext.currentTime + 0.2)

  oscillator.start(audioContext.currentTime)
  oscillator.stop(audioContext.currentTime + 0.2)
}

// Función para detectar si el usuario está inactivo
function handleUserActivity() {
  let inactivityTimer
  const inactivityTime = 300000 // 5 minutos

  function resetTimer() {
    clearTimeout(inactivityTimer)
    inactivityTimer = setTimeout(() => {
      // Mostrar mensaje de inactividad
      showInactivityMessage()
    }, inactivityTime)
  }

  function showInactivityMessage() {
    const message = document.createElement("div")
    message.className = "inactivity-message"
    message.innerHTML = `
            <div style="
                position: fixed;
                top: 20px;
                right: 20px;
                background: var(--glass-bg);
                backdrop-filter: blur(15px);
                border: 1px solid var(--accent-cyan);
                border-radius: 10px;
                padding: 1rem;
                color: var(--text-primary);
                z-index: 1000;
                animation: slideIn 0.5s ease;
            ">
                <i class="fas fa-info-circle" style="color: var(--accent-cyan); margin-right: 0.5rem;"></i>
                ¿Sigues ahí? El mantenimiento continúa...
            </div>
        `

    document.body.appendChild(message)

    setTimeout(() => {
      if (message.parentNode) {
        message.parentNode.removeChild(message)
      }
    }, 5000)
  }
  // Eventos para detectar actividad
  ;["mousedown", "mousemove", "keypress", "scroll", "touchstart"].forEach((event) => {
    document.addEventListener(event, resetTimer, true)
  })

  resetTimer()
}

// Función para guardar estadísticas de visita
function trackVisit() {
  const visitData = {
    timestamp: new Date().toISOString(),
    userAgent: navigator.userAgent,
    referrer: document.referrer,
    viewport: {
      width: window.innerWidth,
      height: window.innerHeight,
    },
  }

  // Guardar en localStorage para análisis posterior
  const visits = JSON.parse(localStorage.getItem("maintenanceVisits") || "[]")
  visits.push(visitData)
  localStorage.setItem("maintenanceVisits", JSON.stringify(visits))
}

// Event Listeners
document.addEventListener("DOMContentLoaded", () => {
  // Inicializar funciones
  handleLoadingState()
  updateCountdown()
  animateTools()
  handleScrollEffects()
  createParticleEffect()
  handleUserActivity()
  trackVisit()

  // Actualizar countdown cada segundo
  setInterval(updateCountdown, 1000)

  // Manejar formulario de notificación
  notificationForm.addEventListener("submit", handleNotificationForm)

  // Efectos adicionales para redes sociales
  document.querySelectorAll(".social-link").forEach((link) => {
    link.addEventListener("click", (e) => {
      e.preventDefault()

      // Efecto visual al hacer clic
      link.style.transform = "scale(0.95)"
      setTimeout(() => {
        link.style.transform = ""
      }, 150)

      // Aquí podrías abrir la red social correspondiente
      const platform = link.dataset.platform
      console.log(`Abriendo ${platform}...`)
    })
  })

  // Efecto de typing para el subtítulo
  const subtitle = document.querySelector(".maintenance-subtitle")
  const originalText = subtitle.textContent
  subtitle.textContent = ""

  let i = 0
  const typeWriter = () => {
    if (i < originalText.length) {
      subtitle.textContent += originalText.charAt(i)
      i++
      setTimeout(typeWriter, 50)
    }
  }

  setTimeout(typeWriter, 1000)
})

// Manejar errores globales
window.addEventListener("error", (e) => {
  console.error("Error en página de mantenimiento:", e.error)
})

// Función para mostrar mensajes de estado del sistema
function showSystemStatus() {
  const statusMessages = [
    "Optimizando base de datos...",
    "Actualizando servidores...",
    "Mejorando seguridad...",
    "Instalando nuevas funciones...",
    "Verificando integridad del sistema...",
    "Casi terminamos...",
  ]

  let currentMessage = 0
  const statusElement = document.querySelector(".status-indicator span")

  setInterval(() => {
    statusElement.style.opacity = "0"

    setTimeout(() => {
      statusElement.textContent = statusMessages[currentMessage]
      statusElement.style.opacity = "1"
      currentMessage = (currentMessage + 1) % statusMessages.length
    }, 500)
  }, 4000)
}

// Inicializar mensajes de estado después de cargar
setTimeout(showSystemStatus, 3000)

// Smooth scrolling for anchor links
document.querySelectorAll('a[href^="#"]').forEach((anchor) => {
  anchor.addEventListener("click", function (e) {
    e.preventDefault()
    const target = document.querySelector(this.getAttribute("href"))
    if (target) {
      target.scrollIntoView({
        behavior: "smooth",
        block: "start",
      })
    }
  })
})

// Scroll to top functionality
const scrollToTopBtn = document.getElementById("scrollToTop")

window.addEventListener("scroll", () => {
  if (window.pageYOffset > 300) {
    scrollToTopBtn.classList.add("visible")
  } else {
    scrollToTopBtn.classList.remove("visible")
  }
})

scrollToTopBtn.addEventListener("click", () => {
  window.scrollTo({
    top: 0,
    behavior: "smooth",
  })
})

// Animate sections on scroll
const observerOptions = {
  threshold: 0.1,
  rootMargin: "0px 0px -50px 0px",
}

const observer = new IntersectionObserver((entries) => {
  entries.forEach((entry) => {
    if (entry.isIntersecting) {
      entry.target.classList.add("animate")
    }
  })
}, observerOptions)

document.querySelectorAll(".content-section").forEach((section) => {
  observer.observe(section)
})

// Cookie Settings Modal
function openCookieSettings() {
  document.getElementById("cookieModal").classList.add("active")
  document.body.style.overflow = "hidden"
}

function closeCookieSettings() {
  document.getElementById("cookieModal").classList.remove("active")
  document.body.style.overflow = "auto"
}

function acceptAll() {
  // Set all cookies to accepted
  document.getElementById("modal-functional").checked = true
  document.getElementById("modal-analytics").checked = true
  document.getElementById("modal-advertising").checked = true

  // Update main page toggles
  document.getElementById("functional-cookies").checked = true
  document.getElementById("analytics-cookies").checked = true
  document.getElementById("advertising-cookies").checked = true

  // Save preferences
  savePreferences()
  showAlert("Todas las cookies han sido aceptadas", "success")
  closeCookieSettings()
}

function rejectAll() {
  // Set all non-essential cookies to rejected
  document.getElementById("modal-functional").checked = false
  document.getElementById("modal-analytics").checked = false
  document.getElementById("modal-advertising").checked = false

  // Update main page toggles
  document.getElementById("functional-cookies").checked = false
  document.getElementById("analytics-cookies").checked = false
  document.getElementById("advertising-cookies").checked = false

  // Save preferences
  savePreferences()
  showAlert("Se han rechazado todas las cookies no esenciales", "info")
  closeCookieSettings()
}

function acceptSelected() {
  // Get modal settings
  const functional = document.getElementById("modal-functional").checked
  const analytics = document.getElementById("modal-analytics").checked
  const advertising = document.getElementById("modal-advertising").checked

  // Update main page toggles
  document.getElementById("functional-cookies").checked = functional
  document.getElementById("analytics-cookies").checked = analytics
  document.getElementById("advertising-cookies").checked = advertising

  // Save preferences
  savePreferences()
  showAlert("Preferencias de cookies guardadas correctamente", "success")
  closeCookieSettings()
}

function savePreferences() {
  const preferences = {
    functional: document.getElementById("functional-cookies").checked,
    analytics: document.getElementById("analytics-cookies").checked,
    advertising: document.getElementById("advertising-cookies").checked,
    timestamp: new Date().toISOString(),
  }

  localStorage.setItem("cookiePreferences", JSON.stringify(preferences))
  console.log("Cookie preferences saved:", preferences)
}

function loadPreferences() {
  const saved = localStorage.getItem("cookiePreferences")
  if (saved) {
    const preferences = JSON.parse(saved)

    // Update toggles
    document.getElementById("functional-cookies").checked = preferences.functional
    document.getElementById("analytics-cookies").checked = preferences.analytics
    document.getElementById("advertising-cookies").checked = preferences.advertising

    // Update modal toggles
    document.getElementById("modal-functional").checked = preferences.functional
    document.getElementById("modal-analytics").checked = preferences.analytics
    document.getElementById("modal-advertising").checked = preferences.advertising
  }
}

function showAlert(message, type = "info") {
  // Create alert element
  const alert = document.createElement("div")
  alert.className = `alert alert-${type} floating-alert`
  alert.innerHTML = `
        <i class="fas fa-${type === "success" ? "check-circle" : "info-circle"}"></i>
        <span>${message}</span>
    `

  // Add styles for floating alert
  alert.style.cssText = `
        position: fixed;
        top: 100px;
        right: 20px;
        z-index: 3000;
        min-width: 300px;
        animation: slideIn 0.3s ease-out;
    `

  document.body.appendChild(alert)

  // Remove after 3 seconds
  setTimeout(() => {
    alert.style.animation = "slideOut 0.3s ease-in"
    setTimeout(() => {
      document.body.removeChild(alert)
    }, 300)
  }, 3000)
}

// Sync toggles between main page and modal
document.getElementById("functional-cookies").addEventListener("change", function () {
  document.getElementById("modal-functional").checked = this.checked
  savePreferences()
})

document.getElementById("analytics-cookies").addEventListener("change", function () {
  document.getElementById("modal-analytics").checked = this.checked
  savePreferences()
})

document.getElementById("advertising-cookies").addEventListener("change", function () {
  document.getElementById("modal-advertising").checked = this.checked
  savePreferences()
})

// Close modal when clicking outside
document.getElementById("cookieModal").addEventListener("click", function (e) {
  if (e.target === this) {
    closeCookieSettings()
  }
})

// Close modal with Escape key
document.addEventListener("keydown", (e) => {
  if (e.key === "Escape") {
    closeCookieSettings()
  }
})

// Load preferences on page load
document.addEventListener("DOMContentLoaded", () => {
  loadPreferences()

  // Add CSS for floating alerts
  const style = document.createElement("style")
  style.textContent = `
        @keyframes slideIn {
            from {
                transform: translateX(100%);
                opacity: 0;
            }
            to {
                transform: translateX(0);
                opacity: 1;
            }
        }
        
        @keyframes slideOut {
            from {
                transform: translateX(0);
                opacity: 1;
            }
            to {
                transform: translateX(100%);
                opacity: 0;
            }
        }
        
        .floating-alert {
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
            border-radius: var(--radius);
        }
    `
  document.head.appendChild(style)
})

// Table responsive behavior
function makeTablesResponsive() {
  const tables = document.querySelectorAll(".cookies-table")
  tables.forEach((table) => {
    const wrapper = table.parentElement
    if (table.scrollWidth > wrapper.clientWidth) {
      wrapper.style.overflowX = "auto"
    }
  })
}

window.addEventListener("resize", makeTablesResponsive)
document.addEventListener("DOMContentLoaded", makeTablesResponsive)

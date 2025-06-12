document.addEventListener("DOMContentLoaded", () => {
  // Declare particlesJS variable
  const particlesJS = window.particlesJS

  // Inicializar partículas
  particlesJS("particles-js", {
    particles: {
      number: {
        value: 80,
        density: {
          enable: true,
          value_area: 800,
        },
      },
      color: {
        value: "#9d4edd",
      },
      shape: {
        type: "circle",
        stroke: {
          width: 0,
          color: "#000000",
        },
        polygon: {
          nb_sides: 5,
        },
      },
      opacity: {
        value: 0.5,
        random: true,
        anim: {
          enable: true,
          speed: 1,
          opacity_min: 0.1,
          sync: false,
        },
      },
      size: {
        value: 3,
        random: true,
        anim: {
          enable: true,
          speed: 2,
          size_min: 0.1,
          sync: false,
        },
      },
      line_linked: {
        enable: true,
        distance: 150,
        color: "#9d4edd",
        opacity: 0.2,
        width: 1,
      },
      move: {
        enable: true,
        speed: 1,
        direction: "none",
        random: true,
        straight: false,
        out_mode: "out",
        bounce: false,
        attract: {
          enable: false,
          rotateX: 600,
          rotateY: 1200,
        },
      },
    },
    interactivity: {
      detect_on: "canvas",
      events: {
        onhover: {
          enable: true,
          mode: "grab",
        },
        onclick: {
          enable: true,
          mode: "push",
        },
        resize: true,
      },
      modes: {
        grab: {
          distance: 140,
          line_linked: {
            opacity: 0.5,
          },
        },
        bubble: {
          distance: 400,
          size: 40,
          duration: 2,
          opacity: 8,
          speed: 3,
        },
        repulse: {
          distance: 200,
          duration: 0.4,
        },
        push: {
          particles_nb: 4,
        },
        remove: {
          particles_nb: 2,
        },
      },
    },
    retina_detect: true,
  })

  // Calendario
  const calendarGrid = document.getElementById("calendarGrid")
  const currentMonthSpan = document.querySelector(".current-month")
  const prevMonthBtn = document.getElementById("prevMonth")
  const nextMonthBtn = document.getElementById("nextMonth")

  const currentDate = new Date()
  const months = [
    "Enero",
    "Febrero",
    "Marzo",
    "Abril",
    "Mayo",
    "Junio",
    "Julio",
    "Agosto",
    "Septiembre",
    "Octubre",
    "Noviembre",
    "Diciembre",
  ]

  // Datos de ejemplo para estrenos
  const releases = {
    "2025-01-15": [
      { title: "Furiosa", type: "movie", genre: "accion" },
      { title: "The Batman 2", type: "movie", genre: "accion" },
    ],
    "2025-01-22": [{ title: "Deadpool 3", type: "movie", genre: "accion" }],
    "2025-01-28": [{ title: "Inside Out 2", type: "movie", genre: "animacion" }],
    "2025-02-05": [{ title: "Avatar 3", type: "movie", genre: "ciencia-ficcion" }],
    "2025-02-14": [{ title: "Spider-Man 4", type: "movie", genre: "accion" }],

    // NUEVOS ESTRENOS
    "2025-06-13": [{ title: "Cómo entrenar a tu dragón", type: "movie", genre: "animacion" }],
    "2025-06-20": [{ title: "28 años después", type: "movie", genre: "terror" }],
    "2025-06-27": [{ title: "Padre no hay más que uno 5: Nido repleto", type: "movie", genre: "comedia" }],
    "2025-07-02": [{ title: "JURASSIC WORLD: EL RENACER", type: "movie", genre: "aventura" }],
    "2025-07-11": [{ title: "SUPERMAN", type: "movie", genre: "superhéroes" }],
    "2025-07-25": [{ title: "LOS 4 FANTÁSTICOS: PRIMEROS PASOS", type: "movie", genre: "superhéroes" }],
    "2025-08-01": [{ title: "AGÁRRALO COMO PUEDAS", type: "movie", genre: "comedia" }],
    "2025-08-08": [{ title: "KARATE KID: LEGENDS", type: "movie", genre: "acción" }],
    "2025-08-15": [{ title: "MERCY", type: "movie", genre: "thriller" }],
        // ESTRENOS DE SERIES Y STREAMING
    "2025-06-01": [{ title: "Sisi: Emperatriz de Austria T3 (Disney+)", type: "serie", genre: "historia" }],
    "2025-06-02": [{ title: "SkyMed T3 (SkyShowtime)", type: "serie", genre: "drama" }],
    "2025-06-05": [
      { title: "Chespirito: Sin querer queriendo (Max)", type: "serie", genre: "biografía" },
      { title: "Matices (SkyShowtime)", type: "serie", genre: "drama" }
    ],
    "2025-06-09": [{ title: "Tierra de mafiosos (SkyShowtime)", type: "serie", genre: "crimen" }],
    "2025-06-12": [{ title: "FUBAR T2 (Netflix)", type: "serie", genre: "acción" }],
    "2025-06-18": [
      { title: "The Buccaneers: aristócratas por amor (Apple TV+)", type: "serie", genre: "romance" },
      { title: "Éramos mentirosos (Prime Video)", type: "serie", genre: "misterio" }
    ],
    "2025-06-19": [{ title: "Aguas turbias (Netflix)", type: "serie", genre: "thriller" }],
    "2025-06-25": [{ title: "Ironheart (Disney+)", type: "serie", genre: "superhéroes" }],
    "2025-06-26": [
      { title: "The Bear T4 (Disney+)", type: "serie", genre: "drama" },
      { title: "Los sin nombre (Movistar Plus+)", type: "serie", genre: "thriller" }
    ],
    "2025-06-27": [{ title: "El juego del calamar T3 (Netflix)", type: "serie", genre: "suspenso" }],
    "2025-07-18": [{ title: "Superestar", type: "serie", genre: "comedia" }],

  }

  function generateCalendar(year, month) {
    const firstDay = new Date(year, month, 1)
    const lastDay = new Date(year, month + 1, 0)
    const daysInMonth = lastDay.getDate()
    const startingDayOfWeek = firstDay.getDay()

    calendarGrid.innerHTML = ""

    // Días de la semana
    const dayHeaders = ["Dom", "Lun", "Mar", "Mié", "Jue", "Vie", "Sáb"]
    dayHeaders.forEach((day) => {
      const dayHeader = document.createElement("div")
      dayHeader.className = "calendar-header"
      dayHeader.textContent = day
      dayHeader.style.cssText = `
                background: rgba(157, 78, 221, 0.2);
                padding: 1rem;
                text-align: center;
                font-weight: 600;
                color: var(--primary-light);
            `
      calendarGrid.appendChild(dayHeader)
    })

    // Días del mes anterior
    const prevMonth = month === 0 ? 11 : month - 1
    const prevYear = month === 0 ? year - 1 : year
    const prevMonthLastDay = new Date(prevYear, prevMonth + 1, 0).getDate()

    for (let i = startingDayOfWeek - 1; i >= 0; i--) {
      const dayElement = createDayElement(prevMonthLastDay - i, true)
      calendarGrid.appendChild(dayElement)
    }

    // Días del mes actual
    for (let day = 1; day <= daysInMonth; day++) {
      const dayElement = createDayElement(day, false, year, month)
      calendarGrid.appendChild(dayElement)
    }

    // Días del próximo mes
    const remainingCells = 42 - (startingDayOfWeek + daysInMonth)
    for (let day = 1; day <= remainingCells; day++) {
      const dayElement = createDayElement(day, true)
      calendarGrid.appendChild(dayElement)
    }

    currentMonthSpan.textContent = `${months[month]} ${year}`
  }

  function createDayElement(day, isOtherMonth, year, month) {
    const dayElement = document.createElement("div")
    dayElement.className = "calendar-day"

    const dayNumber = document.createElement("div")
    dayNumber.className = `day-number ${isOtherMonth ? "other-month" : ""}`
    dayNumber.textContent = day

    // Marcar día actual
    const today = new Date()
    if (!isOtherMonth && year === today.getFullYear() && month === today.getMonth() && day === today.getDate()) {
      dayNumber.classList.add("today")
    }

    dayElement.appendChild(dayNumber)

    // Agregar eventos si no es de otro mes
    if (!isOtherMonth && year && month !== undefined) {
      const dateKey = `${year}-${String(month + 1).padStart(2, "0")}-${String(day).padStart(2, "0")}`
      if (releases[dateKey]) {
        releases[dateKey].forEach((release) => {
          const eventElement = document.createElement("div")
          eventElement.className = `calendar-event ${release.type}`
          eventElement.textContent = release.title
          eventElement.addEventListener("click", () => {
            showReleaseDetails(release)
          })
          dayElement.appendChild(eventElement)
        })
      }
    }

    return dayElement
  }

  

  // Event listeners para navegación del calendario
  prevMonthBtn.addEventListener("click", () => {
    currentDate.setMonth(currentDate.getMonth() - 1)
    generateCalendar(currentDate.getFullYear(), currentDate.getMonth())
  })

  nextMonthBtn.addEventListener("click", () => {
    currentDate.setMonth(currentDate.getMonth() + 1)
    generateCalendar(currentDate.getFullYear(), currentDate.getMonth())
  })

  // Generar calendario inicial
  generateCalendar(currentDate.getFullYear(), currentDate.getMonth())

  // Filtros del calendario
  const genreFilter = document.getElementById("genreFilter")
  const typeFilter = document.getElementById("typeFilter")

  function applyFilters() {
    const selectedGenre = genreFilter.value
    const selectedType = typeFilter.value

    document.querySelectorAll(".calendar-event").forEach((event) => {
      const eventData = event.textContent
      // Aquí aplicarías la lógica de filtrado real
      event.style.display = "block"
    })
  }

  genreFilter.addEventListener("change", applyFilters)
  typeFilter.addEventListener("change", applyFilters)

  // Toggle vista del calendario
  const viewBtns = document.querySelectorAll(".view-btn")
  viewBtns.forEach((btn) => {
    btn.addEventListener("click", () => {
      viewBtns.forEach((b) => b.classList.remove("active"))
      btn.classList.add("active")

      if (btn.dataset.view === "week") {
        // Implementar vista semanal
        console.log("Vista semanal activada")
      } else {
        // Vista mensual
        generateCalendar(currentDate.getFullYear(), currentDate.getMonth())
      }
    })
  })

  // Mi Lista - Ordenamiento
  const sortList = document.getElementById("sortList")
  const myListGrid = document.getElementById("myListGrid")

  sortList.addEventListener("change", () => {
    const sortBy = sortList.value
    const items = Array.from(myListGrid.children)

    items.sort((a, b) => {
      switch (sortBy) {
        case "title":
          return a.querySelector("h4").textContent.localeCompare(b.querySelector("h4").textContent)
        case "year":
          const yearA = Number.parseInt(a.querySelector(".year").textContent)
          const yearB = Number.parseInt(b.querySelector(".year").textContent)
          return yearB - yearA
        case "rating":
          const ratingA = Number.parseFloat(a.querySelector(".rating").textContent.split(" ")[1])
          const ratingB = Number.parseFloat(b.querySelector(".rating").textContent.split(" ")[1])
          return ratingB - ratingA
        default:
          return 0
      }
    })

    items.forEach((item) => myListGrid.appendChild(item))
  })

  // Toggle vista de Mi Lista
  const viewOptions = document.querySelectorAll(".view-option")
  viewOptions.forEach((option) => {
    option.addEventListener("click", () => {
      viewOptions.forEach((opt) => opt.classList.remove("active"))
      option.classList.add("active")

      if (option.dataset.view === "list") {
        myListGrid.classList.add("list-view")
      } else {
        myListGrid.classList.remove("list-view")
      }
    })
  })

  // Botones de acción en Mi Lista
  document.querySelectorAll(".play-btn").forEach((btn) => {
    btn.addEventListener("click", (e) => {
      e.stopPropagation()
      const title = btn.closest(".list-item").querySelector("h4").textContent
      console.log(`Reproduciendo: ${title}`)
    })
  })

  document.querySelectorAll(".remove-btn").forEach((btn) => {
    btn.addEventListener("click", (e) => {
      e.stopPropagation()
      const item = btn.closest(".list-item")
      const title = item.querySelector("h4").textContent

      if (confirm(`¿Eliminar "${title}" de tu lista?`)) {
        item.style.animation = "fadeOut 0.3s ease"
        setTimeout(() => item.remove(), 300)
      }
    })
  })

  // Botones de notificación en estrenos
  document.querySelectorAll(".btn-notify").forEach((btn) => {
    btn.addEventListener("click", () => {
      const card = btn.closest(".highlight-card")
      const title = card.querySelector("h4").textContent

      btn.innerHTML = '<i class="fas fa-check"></i> Notificado'
      btn.style.background = "var(--green)"
      btn.disabled = true

      // Simular notificación
      setTimeout(() => {
        alert(`Te notificaremos cuando "${title}" esté disponible`)
      }, 500)
    })
  })

  // Botones añadir a lista
  document.querySelectorAll(".btn-add-list").forEach((btn) => {
    btn.addEventListener("click", () => {
      const card = btn.closest(".highlight-card")
      const title = card.querySelector("h4").textContent

      btn.innerHTML = '<i class="fas fa-check"></i> En Mi Lista'
      btn.style.background = "var(--green)"
      btn.disabled = true

      setTimeout(() => {
        alert(`"${title}" añadido a tu lista`)
      }, 500)
    })
  })

  // Animaciones de estadísticas
  function animateStats() {
    // Animar barras de géneros
    document.querySelectorAll(".genre-fill").forEach((fill) => {
      const width = fill.style.width
      fill.style.width = "0%"
      setTimeout(() => {
        fill.style.width = width
      }, 500)
    })

    // Animar barras de actividad
    document.querySelectorAll(".bar").forEach((bar, index) => {
      const height = bar.style.height
      bar.style.height = "0%"
      setTimeout(
        () => {
          bar.style.height = height
        },
        700 + index * 100,
      )
    })
  }

  // Intersection Observer para animaciones
  const observerOptions = {
    root: null,
    rootMargin: "0px",
    threshold: 0.1,
  }

  const observer = new IntersectionObserver((entries) => {
    entries.forEach((entry) => {
      if (entry.isIntersecting) {
        entry.target.classList.add("animate-in")

        // Animar estadísticas cuando entren en vista
        if (entry.target.classList.contains("stats-dashboard")) {
          setTimeout(animateStats, 500)
        }

        observer.unobserve(entry.target)
      }
    })
  }, observerOptions)

  // Observar elementos para animaciones
  const animateElements = document.querySelectorAll(
    ".list-item, .stat-widget, .access-card, .highlight-card, .stats-dashboard",
  )
  animateElements.forEach((el) => {
    observer.observe(el)
  })

  // Botones de contenido exclusivo
  document.querySelectorAll(".btn-watch").forEach((btn) => {
    btn.addEventListener("click", () => {
      const title = btn.closest(".access-card").querySelector("h3").textContent
      console.log(`Reproduciendo contenido exclusivo: ${title}`)
    })
  })

  document.querySelectorAll(".btn-save").forEach((btn) => {
    btn.addEventListener("click", () => {
      const icon = btn.querySelector("i")
      if (icon.classList.contains("fa-bookmark")) {
        icon.classList.remove("fa-bookmark")
        icon.classList.add("fa-bookmark", "fas")
        btn.style.color = "var(--yellow)"
      } else {
        icon.classList.remove("fas")
        icon.classList.add("far")
        btn.style.color = ""
      }
    })
  })

  // Efecto de escritura para el nombre de usuario
  function typeWriter(element, text, speed = 100) {
    let i = 0
    element.textContent = ""

    function type() {
      if (i < text.length) {
        element.textContent += text.charAt(i)
        i++
        setTimeout(type, speed)
      }
    }

    type()
  }

  // Aplicar efecto de escritura al nombre de usuario
  const userName = document.querySelector(".user-name")
  if (userName) {
    const originalText = userName.textContent
    setTimeout(() => {
      typeWriter(userName, originalText, 150)
    }, 1000)
  }

  // Actualizar progreso de visualización
  function updateWatchProgress() {
    const progressBars = document.querySelectorAll(".progress-fill")
    progressBars.forEach((bar) => {
      const currentWidth = Number.parseInt(bar.style.width)
      if (currentWidth < 100) {
        // Simular progreso aleatorio
        const newProgress = Math.min(currentWidth + Math.random() * 5, 100)
        bar.style.width = `${newProgress}%`
      }
    })
  }

  // Actualizar progreso cada 30 segundos (simulación)
  setInterval(updateWatchProgress, 30000)

  console.log("SONAURA Premium Dashboard cargado correctamente")
})

// Función para añadir efecto CSS fadeOut
const style = document.createElement("style")
style.textContent = `
    @keyframes fadeOut {
        from { opacity: 1; transform: scale(1); }
        to { opacity: 0; transform: scale(0.8); }
    }
`
document.head.appendChild(style)

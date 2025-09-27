# 🎬 SONAURA

**Una aplicación web moderna dedicada a los amantes del cine y las series**

SONAURA es una plataforma interactiva que te ayuda a tomar decisiones informadas sobre qué ver, ofreciendo un espacio donde puedes consultar valoraciones, emitir opiniones y disfrutar de una experiencia intuitiva y moderna.

## ✨ Características Principales

- **Exploración de Contenido**: Amplio catálogo de películas y series con información detallada
- **Sistema de Valoraciones**: Consulta y contribuye con puntuaciones de la comunidad
- **Top 5 Dinámico**: Las producciones mejor valoradas siempre actualizadas
- **Interacción Social**: Lee y comparte reseñas con otros usuarios
- **Noticias de Entretenimiento**: Mantente al día con las últimas novedades del cine y series
- **Suscripción Premium**: Acceso exclusivo a listas personalizadas y calendario de estrenos
- **Diseño Responsivo**: Experiencia optimizada en todos los dispositivos

## 🎯 Tipos de Usuario

### Visitante
- Visualizar catálogo completo
- Consultar detalles y opiniones
- Explorar el Top 5

### Usuario Registrado
- Valorar contenido
- Comentar y opinar
- Editar perfil personal
- Opción de suscripción premium

### Usuario Premium
- Listas personalizadas
- Calendario de estrenos exclusivo
- Acceso a contenido premium

### Administrador
- Gestión integral de contenido
- Moderación de usuarios y comentarios
- Edición de fichas de películas y series

## 🛠️ Tecnologías Utilizadas

### Frontend
- **HTML5**: Estructura semántica y accesible
- **CSS3**: Estilos modernos con variables globales y animaciones
- **JavaScript**: Interactividad y efectos visuales dinámicos
- **Font Awesome**: Iconografía vectorial

### Backend
- **Django**: Framework web robusto basado en Python
- **Python 3.12.6**: Lenguaje de programación principal
- **Patrón MTV**: Model-Template-View para arquitectura limpia

### Base de Datos
- **MySQL**: Sistema de gestión de base de datos relacional
- **Django ORM**: Abstracción para manejo de datos

## 📋 Requisitos Previos

- Python 3.12.6
- Git
- Editor de código (recomendado: Visual Studio Code)
- Conexión a internet
- XAMPP o similar para MySQL

## 🚀 Instalación

### 1. Clonar el Repositorio
```bash
git clone https://github.com/angeldzz/TFG_HTML
cd sonaura
```

### 2. Configurar Entorno Virtual
```bash
# Activar entorno virtual
Scripts\activate  # Windows
# o
source venv/bin/activate  # Linux/Mac
```

### 3. Instalar Dependencias
```bash
pip install -r requirements.txt
```

### 4. Configurar Base de Datos
1. Acceder a `localhost/phpmyadmin`
2. Crear usuario con credenciales del archivo `.env`
3. Importar el archivo `sonaura_BBDD.sql`

### 5. Ejecutar la Aplicación
```bash
python manage.py runserver
```

Acceder a `http://127.0.0.1:8000/` en tu navegador.

## 📁 Estructura del Proyecto

```
proyecto_sonaura/
├── manage.py
├── db.sqlite3
├── proyecto_sonaura/
│   ├── settings.py
│   ├── urls.py
│   └── wsgi.py
├── base/
│   ├── models.py
│   ├── views.py
│   ├── urls.py
│   ├── admin.py
│   └── templates/base/
├── static/
│   ├── css/base/
│   └── js/base/
└── requirements.txt
```

## 🎨 Diseño y UX

### Paleta de Colores
- **Primario**: `#9d4edd` (Morado medio)
- **Secundario**: `#00f5d4` (Verde neón)
- **Acento**: `#ffd60a` (Amarillo para valoraciones)
- **Fondos oscuros**: `#0a0118`, `#150b2e`

### Tipografía
- **Fuente principal**: Outfit, sans-serif
- **Diseño responsive** adaptado a todos los dispositivos

## 🔧 Funcionalidades Técnicas

- **Autenticación completa**: Registro, login, recuperación de contraseña
- **Sistema de permisos**: Control de acceso por roles
- **Validaciones robustas**: Frontend y backend
- **Seguridad**: Hash PBKDF2 para contraseñas, protección CSRF
- **Panel de administración**: Gestión integral desde Django Admin

## 🧪 Testing

El proyecto incluye un plan completo de pruebas:
- Pruebas funcionales (login, registro, interacciones)
- Validación de formularios
- Pruebas de seguridad básica
- Control de acceso por roles
- Usabilidad en dispositivos móviles

## 📖 Documentación

- **Manual de Instalación**: Guía paso a paso para configurar el entorno
- **Manual de Usuario**: Instrucciones completas para el uso de la plataforma
- **Glosario Técnico**: Definiciones de términos clave

## 👥 Colaboradores

- **Marta Moreno** - Desarrolladora
- **Sergio Alcaide** - Desarrollador

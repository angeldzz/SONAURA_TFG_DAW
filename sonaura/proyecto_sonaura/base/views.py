from django.views.generic import TemplateView,ListView,DetailView,CreateView,DeleteView,UpdateView

class Inicio(TemplateView):
    template_name = "base/inicio.html"

class Noticias(TemplateView):
    template_name = "base/noticias.html"

class Peliculas(TemplateView):
    template_name = "base/peliculas.html"

class Series(TemplateView):
    template_name = "base/series.html"

class Detalle_Pelicula_Serie(TemplateView):
    template_name = "base/detalle_pelicula_serie.html"
    
class Login(TemplateView):
    template_name = "base/login.html"
from django.views.generic import TemplateView,ListView,DetailView,CreateView,DeleteView,UpdateView

class Inicio(TemplateView):
    template_name = "base/inicio.html"

class Detalle_Pelicula_Serie(TemplateView):
    template_name = "base/detalle_pelicula_serie.html"
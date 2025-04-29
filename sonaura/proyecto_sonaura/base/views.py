from django.views.generic import TemplateView,ListView,DetailView,CreateView,DeleteView,UpdateView

class Inicio(TemplateView):
    template_name = "base/inicio.html"
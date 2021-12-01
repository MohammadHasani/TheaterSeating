from django.shortcuts import render
from django.views import View
from django.views.generic import DetailView

from hall.models import Hall
from seance.models import Seance


class HallView(View):
    def get(self, request, *args, **kwargs):
        hall_objs = Hall.objects.all()
        return render(request, 'hall/index.html', {'halls': hall_objs})


class HallDetailView(DetailView):
    context_object_name = 'hall'
    queryset = Hall.objects.all()

    def get(self, request, *args, **kwargs):
        result = super(HallDetailView, self).get(request, *args, **kwargs)
        result.context_data['seances'] = Seance.objects.filter(hall=result.context_data['object'])
        return result

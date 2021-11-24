from django.shortcuts import render
from django.views import View


class TicketView(View):
    def get(self, request, *args, **kwargs):
        return render(request, 'ticket/index.html')

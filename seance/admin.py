from django.contrib import admin

from .models import Seance


class SeanceAdmin(admin.ModelAdmin):
    list_display = ('name', 'hall', 'start_date_time', 'end_date_time')


admin.site.register(Seance, SeanceAdmin)

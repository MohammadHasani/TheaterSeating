from django.contrib import admin

from .models import Seat


class SeatAdmin(admin.ModelAdmin):
    list_display = ('number', 'row', 'rank')
    list_filter = ('row__section', 'row__position','row__section__hall')


admin.site.register(Seat, SeatAdmin)

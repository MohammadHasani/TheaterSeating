from django.contrib import admin

from .models import Row


class RowAdmin(admin.ModelAdmin):
    list_display = ('number', 'section', 'position', 'name', 'id')
    list_filter = ('section', 'position')


admin.site.register(Row, RowAdmin)

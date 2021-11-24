from django.db import models


class Row(models.Model):
    section = models.ForeignKey('section.Section', on_delete=models.CASCADE)
    number = models.CharField(max_length=32)

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        unique_together = ('section', 'number')

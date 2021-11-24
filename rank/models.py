from django.db import models


class Rank(models.Model):
    hall = models.ForeignKey("hall.Hall", on_delete=models.CASCADE)
    name = models.CharField(max_length=200)

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        unique_together = ('hall', 'name')

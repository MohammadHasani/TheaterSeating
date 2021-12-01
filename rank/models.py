from django.core.validators import MaxValueValidator, MinValueValidator
from django.db import models


class Rank(models.Model):
    hall = models.ForeignKey("hall.Hall", on_delete=models.CASCADE)
    name = models.CharField(max_length=200)
    color = models.CharField(max_length=16, default='gray')
    price = models.DecimalField(decimal_places=1, max_digits=9,
                                validators=[MaxValueValidator(10000), MinValueValidator(0)])

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        unique_together = ('hall', 'name')

    def __str__(self):
        return self.name + ' | ' + self.hall.name

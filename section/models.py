from django.db import models
from django.utils.translation import gettext as _
from model_utils.choices import Choices


class Section(models.Model):
    POSITION_CHOICES = Choices((0, 'middle', _('Middle')),
                               (1, 'left', _('Left')),
                               (2, 'right', _('Right')),
                               )

    hall = models.ForeignKey("hall.Hall", null=False, on_delete=models.CASCADE)
    name = models.CharField(max_length=200, null=False)
    position = models.IntegerField(choices=POSITION_CHOICES, default=POSITION_CHOICES.middle)

    is_curve = models.BooleanField(default=False)

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        unique_together = ('hall', 'name', 'position')

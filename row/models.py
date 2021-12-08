from django.db import models
from django.utils.translation import gettext as _
from model_utils import Choices


class Row(models.Model):
    POSITION_CHOICES = Choices((0, 'middle', _('Middle')),
                               (1, 'left', _('Left')),
                               (2, 'right', _('Right')),
                               )
    section = models.ForeignKey('section.Section', on_delete=models.CASCADE)
    number = models.IntegerField(db_index=True)
    name = models.CharField(max_length=200, blank=True, null=True)
    position = models.IntegerField(choices=POSITION_CHOICES, default=POSITION_CHOICES.middle, db_index=True)

    is_high_row = models.BooleanField(default=False)

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        unique_together = ('section', 'number', 'position')

    def __str__(self):
        name = '(' + self.name + ')' if self.name else ''
        return str(
            self.number) + name + ' | ' + 'position: ' + self.POSITION_CHOICES[
                   self.position] + ' -- ' + self.section.hall.name + ' | ' + self.section.name

    @staticmethod
    def get_positioned_rows(rows):
        middle_rows = list(rows.filter(position=Row.POSITION_CHOICES.middle))
        right_rows = list(rows.filter(position=Row.POSITION_CHOICES.right))
        left_rows = list(rows.filter(position=Row.POSITION_CHOICES.left))
        return middle_rows, right_rows, left_rows


    # @staticmethod
    # def

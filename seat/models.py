from django.db import models


class Seat(models.Model):
    row = models.ForeignKey('row.Row', on_delete=models.CASCADE)
    rank = models.ForeignKey('rank.Rank', on_delete=models.CASCADE)

    number = models.IntegerField()

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        unique_together = ('row', 'number')

    @property
    def is_aisle_seat(self):
        return

    @property
    def is_front_row_seat(self):
        return self.row.number == 1

    @property
    def is_high_seat(self):
        return self.row.is_high_row

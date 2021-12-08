from django.db import models


class Seat(models.Model):
    row = models.ForeignKey('row.Row', on_delete=models.CASCADE)
    rank = models.ForeignKey('rank.Rank', on_delete=models.CASCADE)

    number = models.IntegerField()

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        unique_together = ('row', 'number')

    def __str__(self):
        return str(self.id)

    def save(self, *args, **kwargs):
        if self.row.section.hall != self.rank.hall:
            raise ValueError('The Rank and Row are not in related to each other.')

        return super(Seat, self).save(*args, **kwargs)

    @property
    def is_aisle_seat(self):
        return

    @property
    def is_front_row_seat(self):
        return self.row.number == 1

    @property
    def is_high_seat(self):
        return self.row.is_high_row

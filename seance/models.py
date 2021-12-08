from django.db import models


class Seance(models.Model):
    name = models.CharField(max_length=200)
    hall = models.ForeignKey("hall.Hall", on_delete=models.CASCADE)
    start_date_time = models.DateTimeField()
    end_date_time = models.DateTimeField()

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        unique_together = ('hall', 'start_date_time', 'end_date_time')

    def save(self, *args, **kwargs):
        # is_time_free = Seance.objects.filter(
        #     Q(Q(start_date_time__lte=self.start_date_time) and Q(start_date_time__gte=self.start_date_time)) or Q(
        #         Q(start_date_time__lte=self.end_date_time) and Q(end_date_time__gte=self.end_date_time)))
        # if is_time_free:
        #     raise ValueError(_('This time is not free. Please choose a different time.'))

        return super(Seance, self).save(*args, **kwargs)

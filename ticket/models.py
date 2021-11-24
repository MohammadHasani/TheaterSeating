from django.db import models
from django.utils.translation import gettext as _
from django.db.models import Q

class Ticket(models.Model):
    # sanse
    user = models.ForeignKey('user.User', on_delete=models.CASCADE)
    seat = models.ForeignKey('seat.Seat', on_delete=models.CASCADE)

    # user can buy ticket for others. this is information of ticket owner and it is optional
    first_name = models.CharField(max_length=100, blank=True, null=True)
    last_name = models.CharField(max_length=160, blank=True, null=True)
    email = models.CharField(max_length=160, blank=True, null=True)

    is_reserved = models.BooleanField(default=False)

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def objects(self):
        pass
    #
    # def seating_algorithm(self):
    #     # aval bayad negah konim
    #     # have to ovverride ovbject


class Seance(models.Model):
    hall = models.ForeignKey("hall.Hall", on_delete=models.CASCADE)
    start_date_time = models.DateTimeField()
    end_date_time = models.DateTimeField()

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        unique_together =('hall','start_date_time','end_date_time')


    def save(self, *args, **kwargs):

        is_time_free = Seance.objects.filter(Q (Q(start_date_time__lte=self.start_date_time) and  Q(start_date_time__gte=self.start_date_time)) or Q(Q(start_date_time__lte=self.end_date_time) and  Q(end_date_time__gte=self.end_date_time))  )
        if is_time_free:
            raise ValueError(_('This time is not free. Please choose a different time.'))

        return super(Seance, self).save(*args, **kwargs)
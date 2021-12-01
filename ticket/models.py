from django.db import models

from seance.models import Seance
from seat.models import Seat
from user.models import User


class AvailableTicketManager(models.Manager):
    def get_queryset(self):
        return super(AvailableTicketManager, self).get_queryset().filter(is_reserved=False, is_blocked=False)


class TicketManager(models.Manager):
    def get_queryset(self):
        return super(TicketManager, self).get_queryset()


class Ticket(models.Model):
    user = models.ForeignKey('user.User', on_delete=models.CASCADE)

    seance = models.ForeignKey(Seance, on_delete=models.CASCADE)
    seat = models.ForeignKey('seat.Seat', on_delete=models.CASCADE)

    # user can buy ticket for others. this is information of ticket owner and it is optional
    first_name = models.CharField(max_length=100, blank=True, null=True)
    last_name = models.CharField(max_length=160, blank=True, null=True)
    email = models.CharField(max_length=160, blank=True, null=True)

    is_reserved = models.BooleanField(default=False)
    is_blocked = models.BooleanField(default=False)

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    available_object = AvailableTicketManager()
    objects = TicketManager()

    class Meta:
        unique_together = ('seance', 'seat')

    def save(self, *args, **kwargs):
        if self.seance.hall != self.seat.row.section.hall:
            raise ValueError("the seat is not related to the hall.")

        return super(Ticket, self).save(*args, **kwargs)

    @classmethod
    def get_free_seats(cls, seance_obj, order_by='row'):
        occupied_tickets = cls.objects.filter(seance=seance_obj)
        occupied_seats = [ticket.seat.id for ticket in occupied_tickets]

        free_seats = Seat.objects.filter(row__section__hall=seance_obj.hall).exclude(
            id__in=occupied_seats).order_by(order_by)
        return free_seats

    @staticmethod
    def is_seat_occupied_situation(seat_obj, seance_obj):
        ticket = Ticket.available_object.filter(seance=seance_obj, seat=seat_obj)
        return True if ticket else False

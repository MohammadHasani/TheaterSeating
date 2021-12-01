from rest_framework.exceptions import ValidationError
from rest_framework.generics import ListAPIView

from .models import Ticket
from .serializers import ListTicketSerializer


class ListTicketView(ListAPIView):
    serializer_class = ListTicketSerializer

    def get_queryset(self):
        try:
            seance_name = self.kwargs.get('seance_name')
            user_id = self.kwargs.get('user_id')
            return Ticket.objects.filter(user__id=user_id, seance__name=seance_name)
        except Exception as e:
            raise ValidationError({'ticket': str(e)})

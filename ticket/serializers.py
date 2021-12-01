from rest_framework import serializers

from ticket.models import Ticket


class ListTicketSerializer(serializers.ModelSerializer):
    hall = serializers.SerializerMethodField('get_hall')
    user = serializers.SerializerMethodField('get_user')

    def get_hall(self, obj):
        return obj.seance.hall.name

    def get_user(self, obj):
        return {'id': obj.user.id, 'email': obj.user.email}

    class Meta:
        model = Ticket
        fields = ['id', 'seat', 'user', 'seance', 'hall', ]
        depth = 1

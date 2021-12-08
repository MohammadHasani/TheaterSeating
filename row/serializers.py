from rest_framework import serializers

from seat.serializers import CreateSeatSerializer
from .models import Row


class CreateRowSerializer(serializers.ModelSerializer):
    seats = CreateSeatSerializer(many=True)

    class Meta:
        model = Row
        fields = ['id', 'seats', 'name', 'number', 'position', ]
        read_only_fields = ['id', ]
        depth = 1

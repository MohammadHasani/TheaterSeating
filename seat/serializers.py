from rest_framework import serializers

from .models import Seat


class CreateSeatSerializer(serializers.ModelSerializer):
    class Meta:
        model = Seat
        fields = ['id', 'number']
        read_only_fields = ['id', ]
        depth = 1

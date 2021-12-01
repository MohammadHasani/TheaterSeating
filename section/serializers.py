from rest_framework import serializers

from hall.models import Hall
from row.serializers import CreateRowSerializer
from .models import Section


class CreateSectionSerializer(serializers.ModelSerializer):
    rows = CreateRowSerializer(many=True)

    class Meta:
        model = Section
        fields = ['id', 'rows', 'name', 'number', 'hall', 'is_left_space', 'is_right_space', 'is_back_space',
                  'is_front_space',
                  'is_curve']
        read_only_fields = ['id', ]
        depth = 1

    def create(self, validated_data):
        hall = Hall.objects.get(id=self.context['extra_data'][0]['hall'])
        validated_data['hall'] = hall
        rows_data = validated_data.pop('rows')
        result = super(CreateSectionSerializer, self).create(validated_data)
        return result

from rest_framework import serializers
from rest_framework.exceptions import ValidationError

from user.models import User
from .models import Hall


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ['id', 'email']
        depth = 1


class CreateHall(serializers.ModelSerializer):
    user = UserSerializer(read_only=True)

    class Meta:
        model = Hall
        fields = ['id', 'user', 'name', 'address', 'created_at', 'updated_at']
        read_only_fields = ['id', 'created_at', 'updated_at']
        depth = 1

    def create(self, validated_data):
        try:
            user = User.objects.get(id=self.context['request'].data['user'])
            validated_data['user'] = user

            return super(CreateHall, self).create(validated_data)
        except User.DoesNotExist:
            raise ValidationError({'user': 'this user does not exists.'})


class GetHallWithRowAndSeat(serializers.ModelSerializer):
    user = UserSerializer(read_only=True)

    class Meta:
        model = Hall
        fields = ['id', 'user', 'name', 'address', 'created_at', 'updated_at']
        read_only_fields = ['id', 'created_at', 'updated_at']
        depth = 1

    def create(self, validated_data):
        try:
            user = User.objects.get(id=self.context['request'].data['user'])
            validated_data['user'] = user

            return super(CreateHall, self).create(validated_data)
        except User.DoesNotExist:
            raise ValidationError({'user': 'this user does not exists.'})

    def to_representation(self, instance):
        serializer = GetHallWithRowAndSeat(instance)
        return serializer.data


class CreateHallWithRowAndSeat(serializers.ModelSerializer):
    user = UserSerializer(read_only=True)

    class Meta:
        model = Hall
        fields = ['id', 'user', 'name', 'address']
        read_only_fields = ['id',]
        depth = 1

    def create(self, validated_data):
        user = User.objects.get(id=self.context['request'].data['user'])
        validated_data['user'] = user
        result = super(CreateHallWithRowAndSeat, self).create(validated_data)
        return result

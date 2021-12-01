from rest_framework.exceptions import ValidationError
from rest_framework.generics import ListCreateAPIView, CreateAPIView

from section.serializers import CreateSectionSerializer
from .models import Hall
#
# from publics.permissions import IsOwnerOrReadOnly, IsAuthenticatedOrIsRequestFromOurMicroservice
# from publics import generics as PublicGeneric
#
#
# class CashcoolAccountsListCreate(generics.ListCreateAPIView):
#     permission_classes = [IsAuthenticated]
#
#     def get_queryset(self):
#         return CWalletRegular.objects.filter(user_id=self.request.user.id)
#
#     def get_serializer_class(self):
#         if self.request.method == 'GET':
#             return CashcoolAccountsListSerializer
#
#         elif self.request.method == 'POST':
#             return CashcoolAccountsCreateSerializer
from .serializers import CreateHall, CreateHallWithRowAndSeat


# from django.http import JsonResponse
# from django.shortcuts import get_object_or_404
# from django.utils.translation import gettext as _
#
# from rest_framework import generics, status
# from rest_framework.permissions import IsAuthenticated
# from rest_framework.exceptions import ValidationError
# from rest_framework.response import Response
# from publics.functions import check_if_phone_number_or_cashtag
# from .serializers import CashcoolAccountsCreateSerializer, CashcoolAccountsListSerializer, \
#     CashCoolAccountDetailSerializer, \
#     CashCoolAccountDetailReadOnlySerializer, GetOrCreateCwalletByPhoneNumberSerializer, \
#     AbsentUserCashCoolAccountDetailSerializer, CashCoolAccountDetailWithPhoneNumberReadOnlySerializer


class HallListCreate(ListCreateAPIView):
    queryset = Hall.objects.all()
    serializer_class = CreateHall


class CreateHallWithRowAndSeatView(CreateAPIView):
    queryset = Hall.objects.all()
    serializer_class = CreateHallWithRowAndSeat

    def create(self, request, *args, **kwargs):
        try:
            sections = request.data.pop('sections')
            result = super(CreateHallWithRowAndSeatView, self).create(request, *args, **kwargs)
            for sec in sections:
                sec['hall'] = result.data['id']

            section_obj = CreateSectionSerializer(data=sections, many=True,
                                                  context={'request': request, 'extra_data': sections})
            if section_obj.is_valid():
                section_obj.save()

            return result
        except KeyError:
            raise ValidationError({'sections': 'sections is required'})

from django.urls import path

from . import api_views, views

app_name = 'hall'

urlpatterns = [
    path('', api_views.HallListCreate.as_view(), name='hall_list_create'),
    path('detail/', api_views.CreateHallWithRowAndSeatView.as_view(), name='hall_list_create_with_seats'),
    path('list/', views.HallView.as_view(), name='hall_list'),
    path('list/<path:pk>', views.HallDetailView.as_view(), name='hall_detail'),
]

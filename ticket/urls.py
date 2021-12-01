from django.urls import path

from . import views, api_views

app_name = 'ticket'

urlpatterns = [
    path('', views.TicketView.as_view(), name='ticket_view'),
    path('fake/', views.FakerView.as_view(), name='faker_view'),
    path('seating_algorithm/', views.SeatingAlgorithm.as_view(), name='faker_view_html'),
    path('seating_algorithm_hard_code/', views.SeatingAlgorithmHardCode.as_view(), name='faker_view'),
]

urlpatterns += [
    path('wallet/<int:user_id>/<str:seance_name>/', api_views.ListTicketView.as_view(), name='list_ticket_view'),
]

import json
from urllib.parse import urlencode

from django.contrib.auth.decorators import login_required
from django.http import HttpResponse
from django.shortcuts import render, redirect
from django.urls import reverse
from django.utils.decorators import method_decorator
from django.views import View

from fake_factory.functions import seating_algorithm
from hall.models import Hall
from public.functions import get_degree_of_every_row_for_curved_sections, set_seat_list_occupied_situation
from rank.models import Rank
from row.models import Row
from seance.models import Seance
from seat.models import Seat
from section.models import Section
from ticket.models import Ticket
from user.models import User


class TicketView(View):
    def get(self, request, *args, **kwargs):
        try:
            seance_name = request.GET.get('seance_name')
            seance_obj = Seance.objects.get(name=seance_name)

            hall = seance_obj.hall
            sections = Section.objects.filter(hall=hall)

            ranks = Rank.objects.filter(hall=hall)

            section_list = []
            for i in sections:
                # seat_rawـlist = Seat.objects.raw("""select * from seat_seat
                # FULL OUTER JOIN ticket_ticket
                # on ticket_ticket.seat_id = seat_seat.id
                # where seat_seat.id in (select id from seat_seat where row_id in (select id from row_row where section_id ={section_id}))
                # order by seat_seat.id""".format(section_id=i.id))

                section_classes = i.generate_classes_string_for_templates()

                rows = Row.objects.filter(section=i).distinct('number')
                rows_list = list(rows)

                middle_rows, right_rows, left_rows = Row.get_positioned_rows(rows)

                positioned_row = {}
                degrees_list = [[10, 2], [20, 5], [22, 3]]
                positioned_row['middle_rows_list_degree'] = get_degree_of_every_row_for_curved_sections(section=i,
                                                                                                        position='middle',
                                                                                                        rows=middle_rows,
                                                                                                        degrees=degrees_list)

                degrees_list = [[-10, 2], [-12, 5], [-14, 3]]
                positioned_row['right_rows_list_degree'] = get_degree_of_every_row_for_curved_sections(section=i,
                                                                                                       position='right',
                                                                                                       rows=right_rows,
                                                                                                       degrees=degrees_list,
                                                                                                       start_x_degree=150)

                degrees_list = [[10, 2], [12, 5], [14, 3]]
                positioned_row['left_rows_list_degree'] = get_degree_of_every_row_for_curved_sections(section=i,
                                                                                                      position='left',
                                                                                                      rows=left_rows,
                                                                                                      degrees=degrees_list,
                                                                                                      start_x_degree=-150)
                filtered_rows = []
                for j in rows_list:
                    middle_seats = Seat.objects.filter(row__number=j.number, row__section=j.section,
                                                       row__position=Row.POSITION_CHOICES.middle)
                    middle_seats = set_seat_list_occupied_situation(list(middle_seats), seance_obj)

                    right_seats = Seat.objects.filter(row__number=j.number, row__section=j.section,
                                                      row__position=Row.POSITION_CHOICES.right)
                    right_seats = set_seat_list_occupied_situation(list(right_seats), seance_obj)

                    left_seats = Seat.objects.filter(row__number=j.number, row__section=j.section,
                                                     row__position=Row.POSITION_CHOICES.left)
                    left_seats = set_seat_list_occupied_situation(list(left_seats), seance_obj)

                    filtered_rows.append(
                        {'middle_seats': middle_seats, 'right_seats': right_seats, 'left_seats': left_seats})

                section_list.append(
                    {'filtered_rows': filtered_rows, 'name': i.name, 'number': i.number,
                     'is_front_space': i.is_front_space,
                     'is_back_space': i.is_back_space, 'is_left_space': i.is_left_space,
                     'is_right_space': i.is_right_space, 'classes': section_classes, 'positioned_row': positioned_row})

            return render(request, 'ticket/index.html', {'sections': section_list, 'ranks': ranks})
        except Exception as e:
            return HttpResponse(str(e))

    @method_decorator(login_required)
    def post(self, request, *args, **kwargs):
        seats = request.POST.get('seats')
        seats = seats.split(',')
        seats = [int(i) for i in seats if i != '']

        seance_name = request.GET.get('seance_name')
        seance_obj = Seance.objects.get(name=seance_name)
        for i in seats:
            seat_obj = Seat.objects.get(id=i)
            ticket = Ticket.objects.create(user=request.user, seance=seance_obj, seat=seat_obj)
        url_param = urlencode(request.GET, doseq=True)
        return redirect(reverse('ticket:ticket_view') + '?' + url_param)


class FakerView(View):
    def get(self, request, *args, **kwargs):
        admin = User.objects.get(id=1)
        new_hall = Hall.objects.create(user=admin, name='Kerman Theater')
        new_rank = Rank.objects.create(hall=new_hall, name="economy", price='10000')

        sections = [
            # {'name': 'main hall', 'rows': {Row.POSITION_CHOICES.middle: 5}, 'seats': {'middle': 5}, 'properties': {
            #     'is_front_space': True, 'is_back_space': True, 'is_left_space': True, 'is_right_space': True}},
            {'name': '1 hall', 'rows': {Row.POSITION_CHOICES.middle: 2, Row.POSITION_CHOICES.left: 2,
                                        Row.POSITION_CHOICES.right: 2},
             'seats': {Row.POSITION_CHOICES.middle: 2, Row.POSITION_CHOICES.left: 1,
                       Row.POSITION_CHOICES.right: 1}, 'properties': {
                'is_front_space': True, 'is_back_space': True, 'is_left_space': True, 'is_right_space': True}},

            {'name': '2 hall', 'rows': {Row.POSITION_CHOICES.middle: 2, Row.POSITION_CHOICES.left: 2,
                                        Row.POSITION_CHOICES.right: 2},
             'seats': {Row.POSITION_CHOICES.middle: 2, Row.POSITION_CHOICES.left: 1,
                       Row.POSITION_CHOICES.right: 1}, 'properties': {
                'is_front_space': True, 'is_back_space': True, 'is_left_space': True, 'is_right_space': True}},

            {'name': '3 hall', 'rows': {Row.POSITION_CHOICES.middle: 3, Row.POSITION_CHOICES.left: 3,
                                        Row.POSITION_CHOICES.right: 3},
             'seats': {Row.POSITION_CHOICES.middle: 3, Row.POSITION_CHOICES.left: 2,
                       Row.POSITION_CHOICES.right: 2}, 'properties': {
                'is_front_space': True, 'is_back_space': True, 'is_left_space': True, 'is_right_space': True}},
            # {'name': 'back hall', 'rows': {Row.POSITION_CHOICES.middle: 5}, 'seats': {'middle': 5}, 'properties': {
            #     'is_front_space': True, 'is_back_space': True, 'is_left_space': True, 'is_right_space': True}},
        ]

        for index, section in enumerate(sections):
            sec_obj = Section.objects.create(name=section['name'], number=index + 1, hall=new_hall,
                                             **section['properties'])
            for row_position, row_numbers in section['rows'].items():
                for row_number in range(row_numbers):
                    row_obj = Row.objects.create(section=sec_obj, position=row_position, number=row_number)
                    for seat in range(section['seats'][row_position]):
                        seat_obj = Seat.objects.create(row=row_obj, number=seat, rank=new_rank)

        return HttpResponse('done')


class SeatingAlgorithmHardCode(View):
    def get(self, request, *args, **kwargs):
        task_result = seating_algorithm([2, 4, 5, 150, 200], 'Grand Theatre')
        task_id = task_result.task_id
        # Print Task ID
        print(f'Celery Task ID: {task_id}')
        return render(request, 'progress.html', {'task_id': task_id})


class SeatingAlgorithm(View):
    def get(self, request, *args, **kwargs):
        seance_obj = Seance.objects.all()
        return render(request, 'ticket/seating_algorithm.html', {'seance': seance_obj})

    def post(self, request, *args, **kwargs):
        try:
            json_str = json.loads(request.POST.get('input_json'))
            seance_name = request.POST.get('seance')
            task_result = seating_algorithm(json_str, seance_name)
            task_id = task_result.task_id
            seance_obj = Seance.objects.get(name=seance_name)
            return render(request, 'progress.html', {'task_id': task_id, 'seance_obj': seance_obj})
        except Exception as e:
            return HttpResponse(str(e))

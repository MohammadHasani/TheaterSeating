from re import sub

from row.models import Row
from ticket.models import Ticket


def snake_case(string):
    return '_'.join(
        sub('([A-Z][a-z]+)', r' \1',
            sub('([A-Z]+)', r' \1',
                string.replace('-', ' '))).split()).lower()


def get_degree_of_every_row_for_curved_sections(section, degrees, position, rows=None, start_x_degree=0):
    '''
    degrees: [[10,2],[20,5],[22,3]]
    '''
    if position not in ['right', 'left', 'middle']:
        raise ValueError('position is not correct')

    if not rows:
        rows = Row.objects.filter(section=section)

    is_curve = getattr(section, 'is_' + position + '_curve')
    if not is_curve:
        return None

    row_len = len(rows)

    degree_to_sum_list = []
    for i in degrees:
        for j in range(0, i[1]):
            if len(degree_to_sum_list) == row_len:
                break

            degree_to_sum_list.append(i[0])
            last_number = i[0]

    if len(degree_to_sum_list) < len(rows):
        for i in range(0, (len(rows) - len(degree_to_sum_list))):
            degree_to_sum_list.append(last_number)

    degree_list = []
    for i, j in enumerate(rows):
        degree_list.append(start_x_degree)

        start_x_degree = start_x_degree + degree_to_sum_list[i]

    return degree_list


def set_seat_occupied_situation(seat_obj, seance_obj):
    ticket = Ticket.available_object.filter(seance=seance_obj, seat=seat_obj)
    seat_obj.is_occupied = True if ticket else False
    return seat_obj


def set_seat_list_occupied_situation(seat_list_obj, seance_obj):
    seat_list_obj = [set_seat_occupied_situation(seat, seance_obj) for seat in seat_list_obj]
    return seat_list_obj

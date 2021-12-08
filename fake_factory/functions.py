from fake_factory.models import fake
from seance.models import Seance
from ticket.models import Ticket
from ticket.tasks import create_ticket
from user.models import User


def seating_algorithm(list_of_users: list, seance_name):
    try:
        seance_obj = Seance.objects.get(name=seance_name)
        free_seats = Ticket.get_free_seats(seance_obj)
        distinct_rows = free_seats.values('row').distinct().order_by('row_id')
        row_list = [free_seats.filter(row_id=dis_row['row']).order_by('id') if dis_row['row'] % 2 == 0 else
                    free_seats.filter(row_id=dis_row['row']).order_by('-id') for dis_row in distinct_rows]

        seat_list = []
        for index, free_seats in enumerate(row_list):
            for j in free_seats:
                seat_list.append(j)

        task_seat_list = []
        seat_index = 0
        for index, numbers in enumerate(list_of_users):
            user = User.objects.create(email=fake.email(), password=fake.password())
            for num in range(numbers):
                # ticket_obj = Ticket.objects.create(seat=seat_list[seat_index], seance=seance_obj, user=user)
                task_seat_list.append(seat_list[seat_index].id)
                seat_index = seat_index + 1
        task_result = create_ticket.delay(task_seat_list, seance_name, )
        return task_result

    except Seance.DoesNotExist:
        raise ValueError("Seance %s not found" % seance_name)

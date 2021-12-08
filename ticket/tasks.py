from __future__ import absolute_import

from celery import shared_task
from celery_progress.backend import ProgressRecorder

from seance.models import Seance
from ticket.models import Ticket


# neo4j_import_task = import_bulk_users.delay(user.id, sieve_data)


@shared_task(bind=True)
def create_ticket(self, seat_list: list, seance_name):
    progress_observer = ProgressRecorder(self)
    """
    This method import contacts to neo4j database.
    because of constraint that run after django running server, phone number and user id is unique and can't be duplicate.

    :return: list
    """
    # after every change in share tasks, reset celery to avoid wasting 5 hours:)))).
    seance_obj = Seance.objects.get(name=seance_name)

    ticket_obj_list = []
    total_work_to_do = len(seat_list)
    for index, st in enumerate(seat_list):
        ticket = Ticket.objects.create(user_id=1, seat_id=st, seance=seance_obj)
        ticket_obj_list.append(ticket.id)
        progress_observer.set_progress(index, total_work_to_do)
    return

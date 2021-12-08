from __future__ import absolute_import

import os

from celery import Celery
from django.conf import settings

# set the default Django settings module for the 'celery' program.
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'theater_seating.settings')

app = Celery('theater_seating', broker='redis://redis:6379/0')

# Using a string here means the worker will not have to
# pickle the object when using Windows.
app.config_from_object('django.conf:settings', namespace='CELERY')
app.autodiscover_tasks(lambda: settings.INSTALLED_APPS)
app.conf.result_backend = 'redis://redis:6379/0'


@app.task(bind=True)
def debug_task(self):
    print(f'Request: {self.request!r}')

# class Backup:
#     @staticmethod
#     @app.on_after_configure.connect
#     def setup_periodic_tasks(sender, **kwargs):
#         sender.add_periodic_task(crontab(minute=0, hour='*/6'), Backup.backup_db.s(), name='add every 10')
#
#     @staticmethod
#     @app.task
#     def backup_db():
#         call_command('dbbackup')

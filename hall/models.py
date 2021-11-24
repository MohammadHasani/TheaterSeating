from django.db import models


class Hall(models.Model):
    user = models.ForeignKey('user.User', on_delete=models.CASCADE)

    name = models.CharField(max_length=200, null=False, unique=True)
    address = models.CharField(max_length=600, null=True)
    # longitude = models.CharField(max_length=50)
    # latitude = models.CharField(max_length=100)

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name

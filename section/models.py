from django.db import models


class Section(models.Model):
    hall = models.ForeignKey("hall.Hall", null=False, on_delete=models.CASCADE)
    name = models.CharField(max_length=200, null=False)

    is_curve = models.BooleanField(default=False)

    is_front_space = models.BooleanField(default=False)
    is_back_space = models.BooleanField(default=False)
    is_right_space = models.BooleanField(default=False)
    is_left_space = models.BooleanField(default=False)

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        unique_together = ('hall', 'name')

    def __str__(self):
        return self.hall.name + ' | ' + self.name

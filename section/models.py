from django.db import models

from public.functions import snake_case


class Section(models.Model):
    hall = models.ForeignKey("hall.Hall", null=False, on_delete=models.CASCADE)
    name = models.CharField(max_length=200, null=False)
    number = models.IntegerField()

    is_left_curve = models.BooleanField(default=False)
    is_right_curve = models.BooleanField(default=False)
    is_middle_curve = models.BooleanField(default=False)

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

    def generate_classes_string_for_templates(self):
        section_classes = snake_case(self.name)

        section_classes += ' front_space' if self.is_front_space else ''
        section_classes += ' back_space' if self.is_back_space else ''
        section_classes += ' left_space' if self.is_left_space else ''
        section_classes += ' right_space' if self.is_right_space else ''

        return section_classes

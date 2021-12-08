from rest_framework.exceptions import ValidationError
from rest_framework.generics import CreateAPIView

from .models import Section
from .serializers import CreateSectionSerializer


class CreateSectionWithRowAndSeatView(CreateAPIView):
    queryset = Section.objects.all()
    serializer_class = CreateSectionSerializer

    def create(self, request, *args, **kwargs):
        try:
            rows = request.data.pop('rows')
            result = super(CreateSectionWithRowAndSeatView, self).create(request, *args, **kwargs)
            for rw in rows:
                rw['section'] = result.data['id']

            row_view = CreateRowView.as_view()
            row_view = row_view(request, *args, **kwargs)

            row_obj = CreateSectionSerializer(data=rows, many=True)
            if row_obj.is_valid():
                row_obj.save()

            return result
        except KeyError:
            raise ValidationError({'sections': 'sections is required'})

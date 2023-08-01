from django import forms
from .models import Indicators

class IndicatorForm(forms.ModelForm):
    class Meta:
        model = Indicators
        fields = [
            'name',
            'unit',
            'year',
            'group',
            'theme',
            'district',
            'province',
            'urbanisation',
            'source',
            'gender',
            'sector_of_employment',
            'age_range',
            'value',
        ]

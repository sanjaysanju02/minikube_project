from django import forms
from .models import Registration

class RegistrationForm(forms.ModelForm):
    class Meta:
        model = Registration
        fields = ['full_name', 'age', 'gender', 'father_name', 'mobile_number', 'location']

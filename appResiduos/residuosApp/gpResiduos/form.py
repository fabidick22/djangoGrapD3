from django.forms import Form, ModelForm, PasswordInput, CharField
from gpResiduos.models import *
from django import forms


class formDatosDetalle(Form):
    anio = CharField(label="", required=True, widget=forms.Select(choices=anio, attrs={'id': 'anio',
                                                                                       'class': 'form-control fields-pl',
                                                                                       'placeholder': 'Ano'}))

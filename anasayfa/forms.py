from django import forms
from .models import IletisimMesaji

class IletisimForm(forms.ModelForm):
    class Meta:
        model = IletisimMesaji
        fields = ['ad', 'soyad', 'email', 'telefon', 'mesaj']
        widgets = {
            'ad': forms.TextInput(attrs={
                'placeholder': 'Adınız',
                'class': 'form-control'
            }),
            'soyad': forms.TextInput(attrs={
                'placeholder': 'Soyadınız', 
                'class': 'form-control'
            }),
            'email': forms.EmailInput(attrs={
                'placeholder': 'E-Posta',
                'class': 'form-control'
            }),
            'telefon': forms.TextInput(attrs={
                'placeholder': 'Telefon Numaranız',
                'class': 'form-control'
            }),
            'mesaj': forms.Textarea(attrs={
                'placeholder': 'Mesajınız...',
                'class': 'form-control',
                'rows': 4
            }),
        }
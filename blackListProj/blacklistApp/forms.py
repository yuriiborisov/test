from django import forms

class BClientAddForm(forms.Form):
    name = forms.CharField(max_length=100,required=True)
    phone = forms.CharField(widget=forms.Textarea,required=True)
    comment = forms.CharField(max_length=100,required=True)

from django.forms import ModelForm

from .models import Bookmark


class BookmarkForm(ModelForm):
    class Meta:
        model = Bookmark
        exclude = ('date_created', 'date_updated', 'owner')
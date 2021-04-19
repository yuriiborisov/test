from django.contrib import admin
# from app.models import Relationship, Event, User
from django import forms
from django.contrib.auth.models import Group
from django.contrib.auth.admin import UserAdmin
from django.contrib.auth.forms import ReadOnlyPasswordHashField

from .models import BlackClient,AbonentProfile,Comment,Tags

class BlackClientAdmin(admin.ModelAdmin):
    list_display = ['name', 'phone','get_abonents_that_added']

    # prepopulated_fields = {'name': ('phone', )}
#
class TagsAdmin(admin.ModelAdmin):
    list_display = ['tag_name']

class CommentAdmin(admin.ModelAdmin):
    list_display = ['comment']

class AbonentProfileAdmin(admin.ModelAdmin):
    list_display = ['user', 'bio','location','birth_date']
admin.site.register(BlackClient,BlackClientAdmin)
admin.site.register(Tags,TagsAdmin)
admin.site.register(Comment,CommentAdmin)
admin.site.register(AbonentProfile,AbonentProfileAdmin)

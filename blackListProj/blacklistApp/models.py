from django.db import models
from django.contrib.auth.models import User,UserManager
from django.db.models.signals import post_save
from django.dispatch import receiver
from django.urls import reverse
from phone_field import PhoneField
# from django_regex.validators import compress
import re

class AbonentProfile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    bio = models.TextField(max_length=500, blank=True)
    location = models.CharField(max_length=30, blank=True)
    birth_date = models.DateField(null=True, blank=True)

@receiver(post_save, sender=User)
def create_user_profile(sender, instance, created, **kwargs):
    if created:
        AbonentProfile.objects.create(user=instance)

@receiver(post_save, sender=User)
def save_user_profile(sender, instance, **kwargs):
    instance.abonentprofile.save()

class Tags(models.Model):
    tag_name = models.CharField(max_length=200, db_index=True)
    def __str__(self):
        return self.tag_name


class BlackClient(models.Model):

    name = models.CharField(max_length=200, db_index=True)
    phone = models.CharField(max_length=200, db_index=True)
    # abonent_added = models.ForeignKey( User,models.SET_NULL,blank=True,null=True,)
    abonent_added =  models.ManyToManyField(User)
    tags_added = models.ManyToManyField(Tags)
    # comments = models.ManyToManyField(Comment)

    # def get_beautiful_phone(self):
    #     ph_items=re.match(r"^(\w{1}\d{1})(\d{3})(\d{3})(\d{2})(\d{2})",self.phone)
    #     # code=re.sub(r"^\w{1}\d{1}",self.phone)
    #     beauty_phone = ph_items[0]+"("+ph_items[1]+")"+" "+ph_items[2]+"-"+ph_items[3]+"-"+ph_items[4]
    #     return beauty_phone


    def get_absolute_url(self):
        return reverse('BClcard', args=[self.id])

    def get_abonents_that_added(self):
        return "\n".join([p.username for p in self.abonent_added.all()])

    def get_comments(self):
        return "\n".join([p.comment for p in self.comments.all()])

    def get_abonents_that_added2(self):
        return self.abonent_added.all()

    def get_rate(self):
        # comments = Comment()
        comments_list = []
        comments = Comment.objects.select_related('bclient','abonent_added')
        for itemcomment in comments:
            if itemcomment.bclient == self:
                comments_list.append(itemcomment)
        return comments_list.__len__()



    def get_absolute_url2(self):
           return reverse('BList')
    class Meta:
        ordering = ['phone']
        verbose_name = 'BlackКлиент'
        verbose_name_plural = 'BlackКлиенты'
        # verbose_subcategory = 'Подкатегория'

    def __str__(self):
        return self.phone

    def abonents_list(self):
        return self.abonent_added.all()

class Comment(models.Model):
    comment = models.CharField(max_length=500, db_index=True)
    abonent_added = models.ForeignKey(User,on_delete=models.CASCADE)
    bclient = models.ForeignKey(BlackClient, on_delete=models.CASCADE,default=None)
    def __str__(self):
        return self.comment
from django.shortcuts import render, get_object_or_404
from django.contrib.auth.models import User
from django.http import HttpResponse, HttpResponseRedirect
from .models import AbonentProfile,BlackClient,Comment,Tags
# from hitcount.views import HitCountDetailView
from django.contrib.auth.decorators import login_required
import re
import sys
from django.http import Http404
from django.shortcuts import render_to_response

import operator
from functools import reduce
from django.db.models import Q
from django.urls import reverse


@login_required
def homepage(request):
    # abonentProfile = get_object_or_404(AbonentProfile)
    # bio = abonentProfile.bio
    # blackclientObject=get_object_or_404(BlackClient)
    # blackclientlist2 = []
    blackclientlist = BlackClient.objects.all()
    # blackclientlist = BlackClient.objects.



    #
    # for blackclientitem in blackclientlist:
    #     # if(blackclientitem.abonent_added==User.):
    #         blackclientlist2.append(blackclientitem)
    context = {'blackclientlist': blackclientlist}
    return render(request, 'blackListApp/list.html',context)

@login_required
def blacklist(request):
    blackclientlist = BlackClient.objects.all()
    comments = BlackClient.get_rate(BlackClient)
    comment=Comment.abonent_added
    existed_tags = Tags.objects.all()
    context = {'blackclientlist': blackclientlist,
               'comments': comments,
               'comment':comment,
               'tags_list':existed_tags}

    return render(request, 'blackListApp/blacklist.html', context)



@login_required
def blackclient_card(request,id):
    blackclient= get_object_or_404(BlackClient,id=id)
    tags = blackclient.tags_added.all()
    comments_list=[]
    comments = Comment.objects.select_related('bclient','abonent_added')
    user_exist=False
    stre=""
    for itemcomment in comments:
        if itemcomment.bclient == blackclient:
            comments_list.append(itemcomment)

    context = {'blackclient': blackclient,
               'comments': comments_list,
               'tags': tags,
               }


    for item in blackclient.abonent_added.all():
        # stre+=str(item)+"<br>"
        if item==request.user:
            user_exist=True
            break
        else:
            user_exist=False
    if(user_exist):
        return render(request, 'blackListApp/blackclient_card.html', context)
    else:
        return HttpResponse('<h1>Page not found</h1> ')

@login_required
def create(request):
    if request.method == "POST":


        bclient = BlackClient()
        bcomment = Comment()
        cleaned_info = bclient.clean()
        bclient.name = request.POST.get("name")
        phone_to_parse = request.POST.get("phone")
        phone_parsed = re.sub(r"[()\-\s]", "", phone_to_parse)
        bclient.phone = phone_parsed

        # bclient.phone = request.POST.get("phone")
        # if bclient.name == "" or bclient.phone.__sizeof__()<2 or  bcomment.comment == "":
        #     pass
        # else:
        new_tags=[]
        existed_tags=[]
        tags = request.POST.get("tags[]")
        if BlackClient.objects.filter(phone=bclient.phone).exists():
                bclient_existed = BlackClient.objects.get(phone=bclient.phone)
                bclient_existed.abonent_added.add(request.user)
                bclient_existed.save()
                bcomment.abonent_added = request.user
                bcomment.comment = request.POST.get("comment")
                bcomment.bclient = get_object_or_404(BlackClient,phone=bclient.phone)

                new_tags=request.POST.getlist("tags[]")
                existed_tags= bclient_existed.tags_added.all()
                ex_t=[]
                for i in existed_tags:
                    ex_t.append(i.tag_name)

                new_tags_that_not_existed = list(set(new_tags) - set(ex_t))
                existed_tags = Tags.objects.all()
                tags = request.POST.getlist('tags[]')
                for itemt in existed_tags:
                    for itemt2 in new_tags_that_not_existed:
                        if itemt.tag_name == itemt2:
                            bclient_existed.tags_added.add(itemt)
                #     bclient_existed.tags_added.add(itemtag)
                #     bclient_existed.save()
                bcomment.save()
        else:

                phone_to_parse = request.POST.get("phone")
                phone_parsed = re.sub(r"[()\-\s]", "", phone_to_parse)
                bclient.name = request.POST.get("name")
                bclient.phone = phone_parsed
                # bclient.phone = request.POST.get("phone")
                bclient.save()
                bclient.abonent_added.add(request.user)
                bclient.save()
                bcomment.abonent_added =request.user
                bcomment.comment = request.POST.get("comment")
                bcomment.bclient = bclient
                bcomment.save()

                existed_tags=Tags.objects.all()
                tags=request.POST.getlist('tags[]')
                for itemt in existed_tags:
                    for itemt2 in tags:
                        if itemt.tag_name==itemt2:
                            bclient.tags_added.add(itemt)

                # for item in tags:

                bclient.save()
        context = {'blackclient': BlackClient,
                   'tags':tags,}
        # bcomment.save()
    return render(request, 'blackListApp/bclient_added.html',context)
    # return HttpResponseRedirect(reverse('BList'))
    # return HttpResponseRedirect("")


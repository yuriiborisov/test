from rest_framework.response import  Response
from rest_framework.views import  APIView
from blacklistApp.models import AbonentProfile,BlackClient,Comment,Tags
from django.contrib.auth.models import User
from .serializer import BclientSerializer,AbonentsSerializer

class ApiBClientView(APIView):
    def get(self,request):
        bclients = BlackClient.objects.all()
        serializer = BclientSerializer(bclients,many=True)

        return Response({"bclients": serializer.data})

class ApiAbonentsView(APIView):
    def get(self,request):
        abonents = User.objects.all()
        serializer = AbonentsSerializer(abonents,many=True)

        return Response({"abonents": serializer.data})
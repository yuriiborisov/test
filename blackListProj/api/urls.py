from django.contrib import admin
from django.urls import path, include
from .views import ApiBClientView,ApiAbonentsView

#app_name = "bclients"

urlpatterns = [
    path('admin/', admin.site.urls),
    path('bclients/',ApiBClientView.as_view()),
    path('abonents/', ApiAbonentsView.as_view()),
]
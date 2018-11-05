from django.urls import path

from . import views
from django.views.generic.base import RedirectView
from django.conf import settings

urlpatterns = [
    path('AJAX/get_next_que_num', views.get_next_que_num, name='get_next_que_num'),

]

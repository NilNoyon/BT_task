from django.urls import path
from . import views

urlpatterns = [

    path('', views.index, name='index'),
    path('get-random-user/', views.getUser, name='getUser'),
    path('get-random-user-list/', views.userList, name='userList'),

]
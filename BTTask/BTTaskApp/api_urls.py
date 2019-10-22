from rest_framework import routers
from . import api_views
from django.urls import path, include
from BTTaskApp.views import *
router = routers.DefaultRouter()


urlpatterns = [
	path('get_random_user', api_views.GetRandomUser.as_view(),name='api_get_random_user'),
	path('api_user_list', api_views.GetRandomUser.as_view(),name='api_get_user_list'),
	path('api_user_detail', api_views.UserDetail.as_view(),name='api_get_user_detail'),
]
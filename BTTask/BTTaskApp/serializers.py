from django.contrib.auth.models import User, Group
from rest_framework import serializers

from django.core import mail
from django.template.loader import render_to_string
from django.utils.html import strip_tags

from BTTaskApp.models import *

class RandomUserListSerializer(serializers.ModelSerializer):
    class Meta:
        model = RandomUser
        fields = '__all__'

class UserDetailSerializer(serializers.ModelSerializer):
	class Meta:
		model = RandomUser
		fields = '__all__'


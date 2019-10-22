from django.http.response import HttpResponse
from django.shortcuts import render
from django.views.decorators.csrf import csrf_exempt
from rest_framework import viewsets
from BTTaskApp.models import *
from django.http import Http404
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from .serializers import *
import json
# Create your views here.

class GetRandomUser(APIView):

    def get(self, request):
        user_list = RandomUser.objects.all()
        print(user_list)
        serializer = RandomUserListSerializer(user_list, many=True)
        return Response(serializer.data)

class UserDetail(APIView):
    """
    Retrieve, update or delete a snippet instance.
    """
    def get_object(self, pk):
        try:
            return RandomUser.objects.get(pk=pk)
        except RandomUser.DoesNotExist:
            raise Http404

    def get(self, request, pk, format=None):
        snippet = self.get_object(pk)
        serializer = UserDetailSerializer(snippet)
        return Response(serializer.data)

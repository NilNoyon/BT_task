from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from django.contrib import messages
import requests
from BTTaskApp.models import *
# Create your views here.

def index(request):
	response = requests.get('https://randomuser.me/api/')
	data = response.json()
	print(data['results'][0]['gender'])
	return render(request, 'list.html')

def getUser(request):
	for i in range(1,100):
		print(i)
		response = requests.get('https://randomuser.me/api/')
		data = response.json()
		data = RandomUser.objects.create(
									gender=data['results'][i-1]['gender'],
									nameTitle = data['results'][i-1]['name']['title'],
									firstName = data['results'][i-1]['name']['first'],
									lastName = data['results'][i-1]['name']['last'],
									email = data['results'][i-1]['email'],
									username = data['results'][i-1]['login']['username'],
									password = data['results'][i-1]['login']['password'],
									birthDate = data['results'][i-1]['dob']['date'],
									house = data['results'][i-1]['location']['street']['number'],
									roadName = data['results'][i-1]['location']['street']['name'],
									city = data['results'][i-1]['location']['city'],
									state = data['results'][i-1]['location']['state'],
									country = data['results'][i-1]['location']['country']
									)
		data.save()
	message = 'User Added!'
	messages.error(request, message)
	return HttpResponseRedirect(request.META.get('HTTP_REFERER'))

def userList(requests):
	results = requests.get('https://localhost/api/api_user_list/')
	data = response.json()
	context = {'datas':data}
	return render(request,'list.html',context)
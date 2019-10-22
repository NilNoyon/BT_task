from django.db import models

# Create your models here.

class RandomUser(models.Model):
	gender = models.CharField(max_length=10, null=True)
	nameTitle = models.CharField(max_length=20, null=True)
	firstName = models.CharField(max_length=50, null=True)
	lastName = models.CharField(max_length=30, null=True)
	email = models.EmailField(unique=True)
	username = models.CharField(max_length=30)
	password = models.CharField(max_length=30)
	birthDate = models.DateTimeField()
	house = models.CharField(max_length=20,null=True)
	roadName = models.CharField(max_length=45,null=True)
	city = models.CharField(max_length=100,null=True)
	state = models.CharField(max_length=100,null=True)
	country = models.CharField(max_length=100,null=True)

	def __str__(self):
		return self.nameTitle + ' ' + self.firstName + ' ' + self.lastName
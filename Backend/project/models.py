from django.db import models
from django.contrib.auth.models import User

# Create your models here.
class News(models.Model):
    title = models.CharField(max_length=50)
    body = models.CharField(max_length=50)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    owner = models.ForeignKey(User, on_delete=models.CASCADE)
    completed = models.BooleanField(default=False)
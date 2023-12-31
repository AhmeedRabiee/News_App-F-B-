from .serializers import NewsSerializer
from django.shortcuts import render
from rest_framework import generics
from .models import News

# Create your views here.
class GetNews(generics.ListAPIView):
   queryset = News.objects.all()
   serializer_class = NewsSerializer

class GetSingleNew(generics.RetrieveAPIView):
    queryset = News.objects.all()
    serializer_class = NewsSerializer

class AddNews(generics.CreateAPIView):
     serializer_class = NewsSerializer
     
class UpdateNews(generics.UpdateAPIView):
       serializer_class = NewsSerializer
       queryset = News.objects.all()

class DeleteNews(generics.DestroyAPIView):
       serializer_class = NewsSerializer
       queryset = News.objects.all()
       
     
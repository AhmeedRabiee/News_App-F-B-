from django.urls import path
from .views import GetNews,GetSingleNew,AddNews,UpdateNews,DeleteNews


urlpatterns =[ 
    path("GetAllNews",GetNews.as_view()),
    path('GetSingleNew/<int:pk>',GetSingleNew.as_view()),
    path('AddNews', AddNews.as_view()),
    path('UpdateNews/<int:pk>', UpdateNews.as_view()),
    path('DeleteNews/<int:pk>', DeleteNews.as_view()),

 
 
    ]

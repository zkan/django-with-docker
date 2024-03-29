from django.urls import path

from .views import index as tweets_index


urlpatterns = [
    path("", tweets_index, name="tweets"),
]

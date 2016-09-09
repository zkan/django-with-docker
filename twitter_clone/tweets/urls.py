from django.conf.urls import url

from .views import index as tweets_index


urlpatterns = [
    url(r'^$', tweets_index, name='tweets'),
]

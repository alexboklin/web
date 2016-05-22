from django.conf.urls import patterns, include, url

from django.contrib import admin
admin.autodiscover()

urlpatterns = [
    url(r'^$', 'qa.views.index', name='index'),
    url(r'^login/.*$', 'qa.views.test'),
    url(r'^signup/.*$', 'qa.views.test'),
    url(r'^question/\d+/$', 'qa.views.question', name='question'),
    url(r'^ask/.*$', 'qa.views.test'),
    url(r'^popular/.*$', 'qa.views.popular', name='popular'),
    url(r'^new/.*$', 'qa.views.test')
]

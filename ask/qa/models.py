from django.db import models
from django.contrib.auth.models import User

# "By default, Django adds a Manager with the name objects﻿ to every Django model class"  (с)docs.djangoproject.com
class QuestionManager(models.Manager):                                          
    def new():                                                              
        pass                                                            
    def popular():                                                          
        pass

class Question(models.Model):
    objects = QuestionManager() 
    title = models.CharField(max_length=255)
    text = models.TextField()
    added_at = models.DateTimeField(auto_now_add=True)
    rating = models.IntegerField(default=0)
    author = models.ForeignKey(User)
    likes = models.ManyToManyField(User, related_name='questions', blank=True)

class Answer(models.Model):
    text = models.TextField()
    added_at = models.DateTimeField(auto_now_add=True)
    question = models.ForeignKey(Question)
    author = models.ForeignKey(User)
    
     

from django.urls import path
from .views import *

app_name='Question'
urlpatterns=[
    path("v1/questions",QuestionView.as_view()),
    path("v1/questions/<str:pk>",QuestionView.as_view()),
    path("v1/answers",AnswerView.as_view()),
    path("v1/answers/<str:pk>",AnswerView.as_view()),
]
  
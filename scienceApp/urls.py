from django.urls import path

from scienceApp import views

app_name ='scienceApp'

urlpatterns = [
    path('science/', views.science, name='science'), # 科研基地
]
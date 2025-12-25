from django.urls import path
from contactApp import views


app_name='contactApp'  # 人才招聘

urlpatterns = [
    path('contact/', views.contact, name='contact'), # 欢迎咨询
    path('recruit/', views.recruit, name='recruit'),  # 加入恒达
]
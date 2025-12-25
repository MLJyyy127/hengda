

from django.urls import path

from aboutApp import views


app_name='aboutApp' # 设置应用名

urlpatterns=[
    path('survey/',views.survey,name='survey'), # 添加企业概况二级路由
    path('honor/',views.honor,name='honor'),  # 添加企业荣誉二级路由
]
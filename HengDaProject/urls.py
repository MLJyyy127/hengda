"""
URL configuration for HengDaProject project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""

from django.contrib import admin
from django.urls import include, path

from homeApp.views import home
from django.conf import settings
from django.conf.urls.static import static
from django.shortcuts import redirect

admin.site.site_header = '恒达企业后台管理系统'
admin.site.site_title = '恒达企业管理'
admin.site.index_title = '欢迎使用企业管理系统'


urlpatterns = [
    path("admin/", admin.site.urls),
    path('',home,name='home'),
    path('aboutApp/',include('aboutApp.urls')),
    path('contactApp/',include('contactApp.urls')), # 人才招聘
    path('newsApp/',include('newsApp.urls')), # 新闻动态
    path('productsApp/',include('productsApp.urls')), # 产品中心
    path('scienceApp/',include('scienceApp.urls')),# 科研基地
    path('serviceApp/',include('serviceApp.urls')), # 服务支持
    path('ueditor/',include('DjangoUeditor.urls')),
    path('search/',include('haystack.urls')),
    
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

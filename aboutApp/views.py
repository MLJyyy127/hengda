from django.shortcuts import render
from django.http import HttpResponse

from .models import Award

#添加视图
def survey(request):
    return render(request,'survey.html',{'active_menu':'about','sub_menu':'survey'})

def honor(request):
    awards=Award.objects.all()
    return render(request,'honor.html',{
        'active_menu':'about',
        'sub_menu':'honor',
        'awards':awards
    })

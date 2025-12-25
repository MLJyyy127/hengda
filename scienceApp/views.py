from django.shortcuts import render
from django.http import HttpResponse


def science(request):
    return render(request, 'science.html',{'active_menu':'science'})
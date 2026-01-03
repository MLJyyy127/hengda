from django.http import HttpResponse
from django.shortcuts import render
from django.http import JsonResponse
from .forms import FeedbackForm

from .forms import ResumeForm

from .models import Ad

#添加视图
def contact(request):
    return render(request,'contact.html',{'active_menu':'contactus','sub_menu':'contact'})
def recruit(request):
    AdList=Ad.objects.all().order_by('-publishDate')
    if request.method=='POST':
        resumeForm=ResumeForm(data=request.POST,files=request.FILES)
        if resumeForm.is_valid():
            resumeForm.save()
            return render(request,'success.html',{
                'active_menu':'contactus',
                'sub_menu':'recruit',
            })
    else:
        resumeForm=ResumeForm()
    return render(
        request,'recruit.html',{
            'active_menu':'contactus',
            'sub_menu':'recruit',
            'AdList':AdList,
            'resumeForm':resumeForm,
        }
    )


# 留言视图
def quick_feedback(request):
    if request.method == 'POST':
        form = FeedbackForm(request.POST)
        if form.is_valid():
            form.save()
            return JsonResponse({'status': 'success', 'msg': '提交成功！我们会尽快联系您。'})
        else:
            return JsonResponse({'status': 'error', 'msg': '输入有误，请检查格式。'})
    return JsonResponse({'status': 'error', 'msg': '非法请求'})

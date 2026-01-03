from django.http import HttpResponse
from django.shortcuts import render
from django.http import JsonResponse
from .forms import FeedbackForm
from .models import QuickFeedback

from .forms import ResumeForm
from django.db.models import Count

from .models import Ad

#添加视图
def contact(request):
    return render(request,'contact.html',{'active_menu':'contactus','sub_menu':'contact'})
def recruit(request):
    # 核心改进：利用 Count 聚合函数统计关联的 Resume 数量
    # Django 默认会根据模型名小写加 _set (resume_set) 来查找关联
    AdList = Ad.objects.annotate(apply_count=Count('resumes')).all()

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

def query_feedback(request):
    # 1. 获取前端传来的手机号
    phone = request.GET.get('phone', '')
    
    if not phone:
        return JsonResponse({'status': 'error', 'msg': '请输入手机号'})

    # 2. 从数据库中查询该手机号对应的所有留言，按时间倒序排列
    feedbacks = QuickFeedback.objects.filter(phone=phone).order_by('-add_time')
    
    # 3. 构造返回列表
    feedback_list = []
    for item in feedbacks:
        # 判断状态：如果有管理员回复内容，则视为已完成
        status = 'completed' if item.reply else 'pending'
        
        feedback_list.append({
            'message': item.message,
            'reply': item.reply if item.reply else '',
            'status': status,
            'time': item.add_time.strftime('%Y-%m-%d %H:%M')
        })
    
    # 4. 返回结果
    return JsonResponse({
        'status': 'success', 
        'list': feedback_list
    })
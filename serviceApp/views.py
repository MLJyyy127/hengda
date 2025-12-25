import os
from django.shortcuts import get_object_or_404, render
from django.http import HttpResponse, StreamingHttpResponse
from django.core.paginator import Paginator
from .models import Doc
import numpy as np
import urllib
import json
import cv2
from django.views.decorators.csrf import csrf_exempt # 跨站点验证
from django.http import JsonResponse
import base64
def read_file(file_name, size):
    with open(file_name, mode='rb') as fp:
        while True:
            c = fp.read(size)
            if c:
                yield c
            else:
                break

def download(request):
    submenu = 'download'

    # 获取搜索关键字
    q = request.GET.get('q', '').strip()

    # 构造查询集
    docList = Doc.objects.all()

    if q:
        docList = docList.filter(title__icontains=q)

    docList = docList.order_by('-publishDate')

    #分页
    p = Paginator(docList, 5)
    if p.num_pages <= 1:
        pageData = ''
    else:
        page = int(request.GET.get('page', 1))
        docList = p.page(page)
        left = []
        right = []
        left_has_more = False
        right_has_more = False
        first = False
        last = False
        total_pages = p.num_pages
        page_range = p.page_range
        if page == 1:
            right = page_range[page:page + 2]
            print(total_pages)
            if right[-1] < total_pages - 1:
                right_has_more = True
            if right[-1] < total_pages:
                last = True
        elif page == total_pages:
            left = page_range[(page - 3) if (page - 3) > 0 else 0:page - 1]
            if left[0] > 2:
                left_has_more = True
            if left[0] > 1:
                first = True
        else:
            left = page_range[(page - 3) if (page - 3) > 0 else 0:page - 1]
            right = page_range[page:page + 2]
            if left[0] > 2:
                left_has_more = True
            if left[0] > 1:
                first = True
            if right[-1] < total_pages - 1:
                right_has_more = True
            if right[-1] < total_pages:
                last = True
        pageData = {
            'left': left,
            'right': right,
            'left_has_more': left_has_more,
            'right_has_more': right_has_more,
            'first': first,
            'last': last,
            'total_pages': total_pages,
            'page': page,
        }
    return render(
        request, 'docList.html', {
            'active_menu': 'service',
            'sub_menu': submenu,
            'docList': docList,
            'pageData': pageData,
            'q': q,  # 传给模板
        })

def getDoc(request, id):
    doc=get_object_or_404(Doc,id=id)
    update_to,filename=str(doc.file).split('/')
    filepath='%s/media/%s/%s' % (os.getcwd(),update_to,filename)
    response=StreamingHttpResponse(read_file(filepath,512))
    response['Content-Type']='application/octet-stream'
    response['Content-Disposition']='attachment;filename="{}"'.format(filename)
    return response

def platform(request):
    submenu = 'platform'
    return render(request, 'platForm.html', {
        'active_menu': 'service',
        'sub_menu': submenu,
    })
    return HttpResponse(html)

def read_image(stream=None):
    if stream is not None:
        data_temp = stream.read()
    img=np.asarray(bytearray(data_temp),dtype="uint8")
    img=cv2.imdecode(img,cv2.IMREAD_COLOR)
    return img


face_detector_path="serviceApp\\haarcascade_frontalface_default.xml"
face_detector=cv2.CascadeClassifier(face_detector_path)  # 生成人脸检测器

@csrf_exempt # 用于规避跨站点请求攻击
def facedetect(request):
    result={}

    if request.method=='POST': # 请求方法为POST时，获取POST参数
        if request.FILES.get("image",None) is not None:
            img=read_image(stream=request.FILES["image"])
        else:
            result.update({
                "#faceNum":-1,
            })
            return JsonResponse(result)
        
        if img.shape[2]==3:
            img=cv2.cvtColor(img,cv2.COLOR_BGR2GRAY) # 彩色图转为灰度图

        # 进行人脸检测
        values=face_detector.detectMultiScale(img,scaleFactor=1.1,minNeighbors=5,minSize=(30,30),flags=cv2.CASCADE_SCALE_IMAGE)

        # 将检测得到的人脸检测关键点坐标封装
        values=[(int(a),int(b),int(a+c),int(b+d))for(a,b,c,d)in values]
        result.update({"#faceNum":len(values),
                    "face":values,
                    })
        
    return JsonResponse(result)

@csrf_exempt
def facedetectDemo(request):
    result={}

    if request.method=='POST':
        if request.FILES.get("image",None) is not None:
            img=read_image(stream=request.FILES["image"])
        else:
            result["#faceNum"]=-1
            return JsonResponse(result)
        
        if img.shape[2]==3:
            imgGray=cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)
        else:
            imgGray=img

        # 进行人脸检测
        values=face_detector.detectMultiScale(imgGray,
                                            scaleFactor=1.1,
                                            minNeighbors=5,
                                            minSize=(30,30),
                                            flags=cv2.CASCADE_SCALE_IMAGE)
        
        # 将检测得到人脸关键点坐标封装
        values=[(int(a),int(b),int(a+c),int(b+d))for(a,b,c,d)in values]

        # 将检测框显示在原图上
        for(w,x,y,z) in values:
            cv2.rectangle(img,(w,x),(y,z),(0,255,0),2)

        retval,buffer_img=cv2.imencode('.jpg',img) # 在内存中编码为jpg格式
        img64=base64.b64encode(buffer_img) # 将编码后的图片转为base64编码,用于网络传输
        img64=str(img64,encoding="utf-8")
        result["img64"]=img64 #json封装
    return JsonResponse(result)

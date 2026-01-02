from django.shortcuts import render
from django.http import HttpResponse 
from .models import Product
from django.core.paginator import Paginator
from django.shortcuts import get_object_or_404
from django.db.models import F  # 引入 F 表达式

def products(request,productName):
    submenu = productName
    if productName=='robot':
        productName = '家用机器人'
    elif productName=='monitor':
        productName = '智能监控'
    else:
        productName='人脸识别解决方案'

    productList = Product.objects.all().filter(
        productType=productName).order_by('-publishDate')
    
    p = Paginator(productList, 2)
    if p.num_pages<=1:
        pageData=''
    else:
        page=int(request.GET.get('page',1))
        productList=p.page(page)
        left=[]
        right=[]
        left_has_more=False
        right_has_more=False
        first=False
        last=False
        total_pages=p.num_pages
        page_range=p.page_range
        if page==1:
            right=page_range[page:page+2]
            print(total_pages)
            if right[-1]<total_pages-1:
                right_has_more=True
            if right[-1]<total_pages:
                last=True
        elif page==total_pages:
            left=page_range[(page-3)if(page-3)>0 else 0:page-1]
            if left[0]>2:
                left_has_more=True
            if left[0]>1: 
                first=True

        else:
            left=page_range[(page-3)if(page-3)>0 else 0:page-1]
            right=page_range[page:page+2]
            if left[0]>2:
                left_has_more=True
            if left[0]>1: 
                first=True
            if right[-1]<total_pages-1:
                right_has_more=True
            if right[-1]<total_pages:
                last=True

        pageData={
            'left':left,
            'right':right,
            'left_has_more':left_has_more,
            'right_has_more':right_has_more,
            'first':first,
            'last':last,
            'total_pages':total_pages,
            'page':page
        }
        
    return render(
        request,'productList.html',{
            'active_menu':'products',
            'sub_menu':submenu,
            'productName':productName,
            'productList': productList,
            'pageData':pageData
        }
    )

def productDetail(request,id):
    # 1. 使用 F 表达式直接在数据库层面增加浏览量，避免多线程冲突
    # 这里 filter 选中对应 ID 的产品，然后 update
    Product.objects.filter(id=id).update(views=F('views') + 1)
    
    # 2. 获取该产品对象用于页面展示
    product = get_object_or_404(Product, id=id)
    
    # 3. 获取热度排行（前 5 名浏览量最高的产品）
    # 这里可以放在 context 里传给前端，也可以写个自定义 tag
    hot_products = Product.objects.order_by('-views')[:5]

    product.save()
    return render(
        request,'productDetail.html',{
            'active_menu':'products',
            'product':product,
            'hot_products': hot_products  # 传给详情页，展示侧边栏
        }
    )
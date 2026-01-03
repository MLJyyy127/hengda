from django.contrib import admin
from .models import Ad
from .models import Resume
from django.utils.safestring import mark_safe
from .models import QuickFeedback

admin.site.register(Ad)

class ResumeAdmin(admin.ModelAdmin):
    list_display = ('name','status','personID','birth','edu','school','major','ad','image_data')
    
    def image_data(self,obj):
        return mark_safe(u'<img src="%s" width="120px" />'% obj.photo.url)
    
    image_data.short_description = u'个人照片'



@admin.register(QuickFeedback)
class QuickFeedbackAdmin(admin.ModelAdmin):
    # 后台显示的列
    list_display = ('name', 'phone', 'add_time')
    # 按照时间倒序排列
    ordering = ('-add_time',)
    # 设置只读字段，防止在后台误改客户留言
    readonly_fields = ('name', 'phone', 'message', 'add_time')

    # 禁用后台手动添加功能（留言应该是用户在前台提交的）
    def has_add_permission(self, request):
        return False

admin.site.register(Resume,ResumeAdmin)

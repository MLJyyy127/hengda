# accounts/admin.py
from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from django.utils.translation import gettext_lazy as _
from django.contrib import messages
from .models import Employee

@admin.register(Employee)
class EmployeeAdmin(UserAdmin):
    """自定义员工管理后台"""
    
    # 列表页显示的字段
    list_display = ('username', 'employee_id', 'department_display', 
                    'position', 'phone', 'is_staff', 'is_active_employee')
    
    # 筛选器
    list_filter = ('department', 'is_staff', 'is_active_employee', 'date_joined')
    
    # 搜索字段
    search_fields = ('username', 'employee_id', 'first_name', 'last_name', 'email', 'phone')
    
    # 编辑页面的字段分组
    fieldsets = (
        (None, {'fields': ('username', 'password')}),
        (_('个人信息'), {'fields': ('employee_id', 'first_name', 'last_name', 'email', 'phone')}),
        (_('工作信息'), {'fields': ('department', 'position', 'hire_date', 'is_active_employee')}),
        (_('权限控制'), {
            'fields': (
                'is_staff', 'is_active', 'is_superuser', 
                'groups', 'user_permissions'
            ),
            'description': _('根据部门分配不同的管理权限')
        }),
        (_('重要日期'), {'fields': ('last_login', 'date_joined')}),
    )
    
    # 添加用户页面的字段
    add_fieldsets = (
        (None, {
            'classes': ('wide',),
            'fields': ('username', 'employee_id', 'password1', 'password2', 'department'),
        }),
    )
    
    # 只读字段
    readonly_fields = ('last_login', 'date_joined')
    
    # 在列表页可编辑的字段
    list_editable = ('is_active_employee',)
    
    def department_display(self, obj):
        """显示中文部门名称"""
        return dict(Employee.DEPARTMENT_CHOICES).get(obj.department, obj.department)
    department_display.short_description = '所属部门'

    def get_department_display_name(self):
        """获取中文部门名称 - 修正版"""
        # Django自动为choices字段提供get_FOO_display()方法
        return self.get_department_display()
    
    def save_model(self, request, obj, form, change):
        """保存时自动设置权限"""
        # 根据部门自动设置一些权限
        if obj.department == 'content':
            obj.can_manage_content = True
            obj.is_staff = True  # 可以登录后台
        elif obj.department == 'product':
            obj.can_manage_products = True
            obj.is_staff = True
        elif obj.department == 'hr':
            # 人事部可以管理所有用户
            obj.is_staff = True
        elif obj.department == 'tech':
            # 技术部有最高权限
            obj.is_staff = True
            obj.is_superuser = True
        
        super().save_model(request, obj, form, change)
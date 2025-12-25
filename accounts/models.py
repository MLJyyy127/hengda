# accounts/models.py
from django.contrib.auth.models import AbstractUser
from django.db import models

class Employee(AbstractUser):
    """企业员工模型 - 用于登录后台管理系统"""
    
    DEPARTMENT_CHOICES = (
        ('content', '内容管理部'),    # 管理网站内容
        ('product', '产品管理部'),    # 管理产品信息
        ('news', '新闻编辑部'),      # 管理新闻资讯
        ('hr', '人事行政部'),        # 管理员工信息
        ('tech', '技术维护部'),      # 系统维护
    )
    
    # 员工编号（工号）
    employee_id = models.CharField(
        max_length=20,
        unique=True,
        verbose_name='员工工号'
    )
    
    # 所属部门
    department = models.CharField(
        max_length=20,
        choices=DEPARTMENT_CHOICES,
        default='content',
        verbose_name='所属部门'
    )
    
    # 联系电话
    phone = models.CharField(
        max_length=15,
        blank=True,
        verbose_name='联系电话'
    )
    
    # 职位
    position = models.CharField(
        max_length=50,
        blank=True,
        verbose_name='职位'
    )
    
    # 入职日期
    hire_date = models.DateField(
        null=True,
        blank=True,
        verbose_name='入职日期'
    )
    
    # 员工状态
    is_active_employee = models.BooleanField(
        default=True,
        verbose_name='在职状态'
    )
    
    
    class Meta:
        db_table = 'employees'
        verbose_name = '员工'
        verbose_name_plural = '员工管理'
        ordering = ['department', 'employee_id']
    
    def __str__(self):
        return f"{self.last_name}{self.first_name} ({self.employee_id})"
    
    def get_full_name_chinese(self):
        """中文全名"""
        return f"{self.last_name}{self.first_name}"
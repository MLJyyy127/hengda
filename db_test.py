import django
import os
import sys

# 设置Django环境
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'HengDaProject.settings')
django.setup()

from django.db import connection

try:
    connection.ensure_connection()
    print("MySQL连接成功！")
    print(f"数据库: {connection.settings_dict['NAME']}")
except Exception as e:
    print(f"MySQL连接失败: {e}")
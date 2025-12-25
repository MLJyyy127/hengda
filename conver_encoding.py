# 保存为 convert_encoding.py
import json

# 读取原文件（尝试不同编码）
try:
    with open('old_data.json', 'r', encoding='utf-8-sig') as f:
        data = f.read()
except UnicodeDecodeError:
    try:
        with open('old_data.json', 'r', encoding='gbk') as f:
            data = f.read()
    except UnicodeDecodeError:
        with open('old_data.json', 'r', encoding='latin-1') as f:
            data = f.read()

# 保存为标准的 UTF-8 文件
with open('old_data_fixed.json', 'w', encoding='utf-8') as f:
    f.write(data)

print("转换完成！新文件：old_data_fixed.json")
from django import forms
from .models import Resume
from .models import QuickFeedback

class ResumeForm(forms.ModelForm):
    class Meta:
        model=Resume
        fields=('name','sex','personID','email','birth','edu','school','major','experience','position','photo')
        sex_list=(
            ('女','女'),
            ('男','男'),
        )
        edu_list=(
            ('大专','大专'),
            ('本科','本科'),
            ('硕士','硕士'),
            ('博士','博士'),
            ('其他','其他'),
        )
        widgets={
            'sex':forms.Select(choices=sex_list),
            'edu':forms.Select(choices=edu_list),
            'photo':forms.FileInput(),
            'birth': forms.TextInput(attrs={'id': 'id_birth'}),
        }

# 留言表单
class FeedbackForm(forms.ModelForm):
    class Meta:
        model = QuickFeedback
        fields = ['name', 'phone', 'message']
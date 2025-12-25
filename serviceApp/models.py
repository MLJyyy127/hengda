from django.db import models
import django.utils.timezone as timezone

class Doc(models.Model):
    title=models.CharField(max_length=250,verbose_name='资料名称')
    file=models.FileField(upload_to='Service/',verbose_name='文件资料',blank=True)
    publishDate=models.DateTimeField(default=timezone.now,verbose_name='发布时间',max_length=20)

    def __str__(self):
        return self.title
    
    class Meta:
        ordering=['-publishDate']
        verbose_name='资料'
        verbose_name_plural='资料'
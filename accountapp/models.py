from django.db import models

# Create your models here.
class HelloWorld(models.Model):
#     id = models.IntegerField(default=1, primary_key=True)
#    id = models.AutoField(primary_key=True)
#    date = models.DateTimeField(auto_now_add=True)
#    text = models.CharField(max_length=256,null=False)
    text = models.CharField(max_length=255, null=False)

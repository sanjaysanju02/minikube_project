from django.db import models

class Registration(models.Model):
    full_name = models.CharField(max_length=255)
    age = models.PositiveIntegerField()
    gender = models.CharField(max_length=10)
    father_name = models.CharField(max_length=255)
    mobile_number = models.CharField(max_length=20)
    location = models.CharField(max_length=255)
    timestamp = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.full_name
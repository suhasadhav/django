# Generated by Django 2.1.2 on 2018-10-01 19:31

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('questionset', '0005_auto_20181001_1230'),
    ]

    operations = [
        migrations.AddField(
            model_name='paper',
            name='total_questions',
            field=models.IntegerField(default=100),
        ),
    ]

# Generated by Django 2.1.2 on 2018-10-20 18:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('questionset', '0005_auto_20181020_1104'),
    ]

    operations = [
        migrations.AlterField(
            model_name='option',
            name='opt_image',
            field=models.ImageField(blank=True, null=True, upload_to='options/%Y/%m/%d/'),
        ),
        migrations.AlterField(
            model_name='question',
            name='question_img',
            field=models.ImageField(blank=True, null=True, upload_to='questions/%Y/%m/%d/'),
        ),
    ]

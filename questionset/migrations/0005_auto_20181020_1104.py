# Generated by Django 2.1.2 on 2018-10-20 18:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('questionset', '0004_question_que_num'),
    ]

    operations = [
        migrations.AlterField(
            model_name='question',
            name='que_num',
            field=models.IntegerField(),
        ),
    ]

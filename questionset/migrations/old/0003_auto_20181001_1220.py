# Generated by Django 2.1.2 on 2018-10-01 19:20

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('questionset', '0002_auto_20181001_1217'),
    ]

    operations = [
        migrations.AlterField(
            model_name='year',
            name='year',
            field=models.IntegerField(default=2010, unique=True),
        ),
    ]

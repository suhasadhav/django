# Generated by Django 2.1.3 on 2018-11-05 06:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('questionset', '0010_paragraph_name'),
    ]

    operations = [
        migrations.AlterField(
            model_name='paragraph',
            name='name',
            field=models.CharField(max_length=200),
        ),
    ]

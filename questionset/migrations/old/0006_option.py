# Generated by Django 2.1.2 on 2018-10-13 17:39

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('questionset', '0005_auto_20181009_1208'),
    ]

    operations = [
        migrations.CreateModel(
            name='Option',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('opt1_marathi', models.TextField(null=True)),
                ('opt1_english', models.TextField(null=True)),
                ('opt2_marathi', models.TextField(null=True)),
                ('opt2_englisth', models.TextField(null=True)),
                ('opt3_marathi', models.TextField(null=True)),
                ('opt3_english', models.TextField(null=True)),
                ('opt4_english', models.TextField(null=True)),
                ('opt4_marathi', models.TextField(null=True)),
            ],
        ),
    ]
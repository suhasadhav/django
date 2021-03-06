# Generated by Django 2.1.2 on 2018-10-13 18:00

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('questionset', '0007_auto_20181013_1041'),
    ]

    operations = [
        migrations.AddField(
            model_name='option',
            name='active',
            field=models.BooleanField(default=True),
        ),
        migrations.AddField(
            model_name='question',
            name='active',
            field=models.BooleanField(default=True),
        ),
        migrations.AddField(
            model_name='question',
            name='que_options',
            field=models.ManyToManyField(to='questionset.Option'),
        ),
        migrations.AlterField(
            model_name='question',
            name='correct_answer',
            field=models.ForeignKey(limit_choices_to={'active': True}, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='correct_answer', to='questionset.Option'),
        ),
    ]

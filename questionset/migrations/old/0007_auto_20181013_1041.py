# Generated by Django 2.1.2 on 2018-10-13 17:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('questionset', '0006_option'),
    ]

    operations = [
        migrations.RenameField(
            model_name='option',
            old_name='opt1_english',
            new_name='opt_english',
        ),
        migrations.RenameField(
            model_name='option',
            old_name='opt1_marathi',
            new_name='opt_marathi',
        ),
        migrations.RemoveField(
            model_name='option',
            name='opt2_englisth',
        ),
        migrations.RemoveField(
            model_name='option',
            name='opt2_marathi',
        ),
        migrations.RemoveField(
            model_name='option',
            name='opt3_english',
        ),
        migrations.RemoveField(
            model_name='option',
            name='opt3_marathi',
        ),
        migrations.RemoveField(
            model_name='option',
            name='opt4_english',
        ),
        migrations.RemoveField(
            model_name='option',
            name='opt4_marathi',
        ),
        migrations.AddField(
            model_name='option',
            name='opt_image',
            field=models.ImageField(null=True, upload_to='options/%Y/%m/%d/'),
        ),
    ]
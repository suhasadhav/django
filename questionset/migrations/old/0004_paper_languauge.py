# Generated by Django 2.1.2 on 2018-10-01 19:30

from django.db import migrations
import multiselectfield.db.fields


class Migration(migrations.Migration):

    dependencies = [
        ('questionset', '0003_auto_20181001_1220'),
    ]

    operations = [
        migrations.AddField(
            model_name='paper',
            name='languauge',
            field=multiselectfield.db.fields.MultiSelectField(choices=[('MARATHI', 'MARATHI'), ('ENGLISH', 'ENGLISH')], default='MARATHI', max_length=15),
        ),
    ]
# Generated by Django 2.1.2 on 2018-10-01 19:30

from django.db import migrations
import multiselectfield.db.fields


class Migration(migrations.Migration):

    dependencies = [
        ('questionset', '0004_paper_languauge'),
    ]

    operations = [
        migrations.AlterField(
            model_name='paper',
            name='languauge',
            field=multiselectfield.db.fields.MultiSelectField(choices=[('MARATHI', 'MARATHI'), ('ENGLISH', 'ENGLISH')], max_length=15),
        ),
    ]

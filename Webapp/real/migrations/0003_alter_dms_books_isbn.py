# Generated by Django 3.2.9 on 2022-12-01 23:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('real', '0002_auto_20221125_0216'),
    ]

    operations = [
        migrations.AlterField(
            model_name='dms_books',
            name='isbn',
            field=models.CharField(max_length=20, primary_key=True, serialize=False),
        ),
    ]

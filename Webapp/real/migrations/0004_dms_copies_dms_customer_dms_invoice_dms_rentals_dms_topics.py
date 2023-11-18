# Generated by Django 3.2.9 on 2022-12-09 15:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('real', '0003_alter_dms_books_isbn'),
    ]

    operations = [
        migrations.CreateModel(
            name='dms_copies',
            fields=[
                ('book_num', models.CharField(max_length=20, primary_key=True, serialize=False)),
                ('isbn', models.CharField(max_length=50)),
                ('avail_status', models.CharField(max_length=20)),
            ],
        ),
        migrations.CreateModel(
            name='dms_customer',
            fields=[
                ('c_id', models.CharField(max_length=20, primary_key=True, serialize=False)),
                ('id_type', models.CharField(max_length=50)),
                ('id_num', models.CharField(max_length=50)),
                ('fname', models.CharField(max_length=50)),
                ('mname', models.CharField(max_length=50)),
                ('lname', models.CharField(max_length=50)),
                ('phone_num', models.CharField(max_length=50)),
                ('email', models.CharField(max_length=50)),
                ('apt_num', models.CharField(max_length=50)),
                ('st_add', models.CharField(max_length=50)),
                ('City', models.CharField(max_length=50)),
                ('state', models.CharField(max_length=50)),
                ('country', models.CharField(max_length=50)),
                ('ZIP', models.CharField(max_length=50)),
                ('userid', models.CharField(max_length=50)),
                ('pwd', models.CharField(max_length=50)),
                ('superuser', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='dms_invoice',
            fields=[
                ('invid', models.CharField(max_length=20, primary_key=True, serialize=False)),
                ('rid', models.CharField(max_length=50)),
                ('creation_date', models.CharField(max_length=20)),
                ('inv_amt', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='dms_rentals',
            fields=[
                ('rid', models.CharField(max_length=20, primary_key=True, serialize=False)),
                ('c_id', models.CharField(max_length=20)),
                ('book_num', models.CharField(max_length=20)),
                ('b_date', models.CharField(max_length=20)),
                ('er_date', models.CharField(max_length=20)),
                ('ar_date', models.CharField(max_length=20)),
            ],
        ),
        migrations.CreateModel(
            name='dms_topics',
            fields=[
                ('topid', models.CharField(max_length=20, primary_key=True, serialize=False)),
                ('topic_name', models.CharField(max_length=50)),
            ],
        ),
    ]
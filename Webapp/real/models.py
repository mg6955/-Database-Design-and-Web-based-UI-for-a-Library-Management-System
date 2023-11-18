from django.db import models

# Create your models here.
# class- Entity
# attributes - class attributes
class dms_books(models.Model):
    isbn = models.CharField(primary_key=True, max_length=20)
    name = models.CharField(max_length=50)
    topid =models.CharField(max_length=20)

class dms_topics(models.Model):
    topid = models.CharField(primary_key=True, max_length=20)
    topic_name = models.CharField(max_length=50)

class dms_customer(models.Model):
    c_id = models.CharField(primary_key=True, max_length=20)
    id_type = models.CharField(max_length=50)
    id_num = models.CharField(max_length=50)
    fname = models.CharField(max_length=50)
    mname = models.CharField(max_length=50)
    lname = models.CharField(max_length=50)
    phone_num = models.CharField(max_length=50)
    email = models.CharField(max_length=50)
    apt_num = models.CharField(max_length=50)
    st_add = models.CharField(max_length=50)
    City = models.CharField(max_length=50)
    state = models.CharField(max_length=50)
    country = models.CharField(max_length=50)
    ZIP = models.CharField(max_length=50)
    userid = models.CharField(max_length=50)
    pwd = models.CharField(max_length=50)
    superuser = models.CharField(max_length=50)

class dms_copies(models.Model):
    book_num = models.CharField(primary_key=True, max_length=20)
    isbn = models.CharField(max_length=50)
    avail_status =models.CharField(max_length=20)

class dms_rentals(models.Model):
    rid = models.CharField(primary_key=True, max_length=20)
    c_id = models.CharField(max_length=20)
    book_num =models.CharField(max_length=20)
    b_date =models.CharField(max_length=20)
    er_date =models.CharField(max_length=20)
    ar_date =models.CharField(max_length=20)

class dms_invoice(models.Model):
    invid = models.CharField(primary_key=True, max_length=20)
    rid = models.CharField(max_length=50)
    creation_date =models.CharField(max_length=20)
    inv_amt = models.CharField(max_length=50)



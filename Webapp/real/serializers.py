from rest_framework import serializers
from real.models import dms_books, dms_topics, dms_copies, dms_rentals, dms_customer, dms_invoice

#class-> Serializer
# inner class -> meta
#model -> entity
#fields -> attributes

class DmsBookSerializer(serializers.ModelSerializer):
    class Meta:
        model = dms_books
        fields = ('isbn','name', 'topid')

class DmsTopicSerializer(serializers.ModelSerializer):
    class Meta:
        model = dms_topics
        fields = ('topid', 'topic_name')

class DmsCopiesSerializer(serializers.ModelSerializer):
    class Meta:
        model = dms_copies
        fields = ('book_num', 'isbn', 'avail_status')

class DmsRentalsSerializer(serializers.ModelSerializer):
    class Meta:
        model = dms_rentals
        fields = ('rid', 'c_id','book_num','b_date','er_date','ar_date')

class DmsCustomerSerializer(serializers.ModelSerializer):
    class Meta:
        model = dms_customer
        fields = ('c_id', 'id_type','id_num','fname','mname','lname','phone_num','email','apt_num','st_add','City','state','country','ZIP','userid','pwd','superuser')

class DmsInvoiceSerializer(serializers.ModelSerializer):
    class Meta:
        model = dms_invoice
        fields = ('invid', 'rid','creation_date','inv_amt')

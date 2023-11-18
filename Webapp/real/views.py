from django.shortcuts import render

from django.views.decorators.csrf import csrf_exempt
from rest_framework.parsers import JSONParser
from django.http.response import JsonResponse

from real.models import dms_books, dms_topics, dms_copies, dms_rentals, dms_customer, dms_invoice
from real.serializers import DmsBookSerializer, DmsTopicSerializer, DmsCopiesSerializer, DmsRentalsSerializer, DmsCustomerSerializer, DmsInvoiceSerializer

from django.core.files.storage import default_storage

# Write GET/POST/PUT/DELETE only if required for the entity
@csrf_exempt
def dms_booksApi(request, Isbn=''):
    
    if request.method=='GET': #Select *
        books = dms_books.objects.all() #Get all Json objects
        bookSerializer=DmsBookSerializer(books,many=True) #Convert into python comprehendable format
        return JsonResponse(bookSerializer.data,safe=False) # Actual JSON response

    elif request.method=='POST': #Insert
        books_data=JSONParser().parse(request) # XML to JSON
        books_serializer=DmsBookSerializer(data=books_data) 
        if books_serializer.is_valid(): # checks for proper JSON format
            id = books_serializer.save() # Unique ID mostly PK
            return JsonResponse(f"{id.pk}",safe=False)
        return JsonResponse("Failed to Add",safe=False)
    
    elif request.method=='PUT': #Update
        books_data=JSONParser().parse(request)
        books=dms_books.objects.get(isbn=books_data['isbn'])
        books_serializer=DmsBookSerializer(books,data=books_data)
        if books_serializer.is_valid():
            books_serializer.save()
            return JsonResponse("Updated Successfully",safe=False)
        return JsonResponse("Failed to Update")
    
    elif request.method=='DELETE':
        books=dms_books.objects.get(isbn=Isbn) #Give PK
        books.delete()
        return JsonResponse("Deleted Successfully",safe=False)

@csrf_exempt
def dms_topicsApi(request):
    
    if request.method=='GET': #Select *
        topics = dms_topics.objects.all() #Get all Json objects
        topicSerializer=DmsTopicSerializer(topics,many=True) #Convert into python comprehendable format
        return JsonResponse(topicSerializer.data,safe=False) # Actual JSON response

    elif request.method=='PUT': #Update
        topics_data=JSONParser().parse(request)
        topics=dms_topics.objects.get(topid=topics_data['topid'])
        topics_serializer=DmsTopicSerializer(topics,data=topics_data)
        if topics_serializer.is_valid():
            topics_serializer.save()
            return JsonResponse("Updated Successfully",safe=False)
        return JsonResponse("Failed to Update")


@csrf_exempt
def dms_copiesApi(request):
    
    if request.method=='GET': #Select *
        copies = dms_copies.objects.all() #Get all Json objects
        copiesSerializer=DmsCopiesSerializer(copies,many=True) #Convert into python comprehendable format
        return JsonResponse(copiesSerializer.data,safe=False) # Actual JSON response
    
    elif request.method=='PUT': #Update
        copies_data=JSONParser().parse(request)
        copies=dms_copies.objects.get(book_num=copies_data['book_num'])
        copies_serializer=DmsCopiesSerializer(copies,data=copies_data)
        if copies_serializer.is_valid():
            copies_serializer.save()
            return JsonResponse("Updated Successfully",safe=False)
        return JsonResponse("Failed to Update")


@csrf_exempt
def dms_rentalsApi(request):
    
    if request.method=='GET': #Select *
        rentals = dms_rentals.objects.all() #Get all Json objects
        rentalsSerializer=DmsRentalsSerializer(rentals,many=True) #Convert into python comprehendable format
        return JsonResponse(rentalsSerializer.data,safe=False) # Actual JSON response

    elif request.method=='POST': #Insert
        rentals_data=JSONParser().parse(request) # XML to JSON
        rentals_serializer=DmsRentalsSerializer(data=rentals_data)
        if rentals_serializer.is_valid(): # checks for proper JSON format
            id = rentals_serializer.save() # Unique ID mostly PK
            return JsonResponse(f"{id.pk}",safe=False)
        return JsonResponse("Failed to Add",safe=False)
    
    elif request.method=='PUT': #Update
        rentals_data=JSONParser().parse(request)
        rentals=dms_rentals.objects.get(rid=rentals_data['rid'])
        rentals_serializer=DmsRentalsSerializer(rentals,data=rentals_data)
        if rentals_serializer.is_valid():
            rentals_serializer.save()
            return JsonResponse("Updated Successfully",safe=False)
        print(rentals_serializer.errors)
        return JsonResponse("Failed to Update")

@csrf_exempt
def dms_customerApi(request, c_id = ''):
    
    if request.method=='GET': #Select *
        customer = dms_customer.objects.all() #Get all Json objects
        customerSerializer=DmsCustomerSerializer(customer,many=True) #Convert into python comprehendable format
        return JsonResponse(customerSerializer.data,safe=False) # Actual JSON response

    elif request.method=='POST': #Insert
        customer_data=JSONParser().parse(request) # XML to JSON
        customer_serializer=DmsCustomerSerializer(data=customer_data) 
        if customer_serializer.is_valid(): # checks for proper JSON format
            id = customer_serializer.save() # Unique ID mostly PK
            return JsonResponse(f"{id.pk}",safe=False)
        return JsonResponse("Failed to Add",safe=False)
    
    elif request.method=='PUT': #Update
        customer_data=JSONParser().parse(request)
        customer=dms_customer.objects.get(c_id=customer_data['c_id'])
        customer_serializer=DmsCustomerSerializer(customer,data=customer_data)
        if customer_serializer.is_valid():
            customer_serializer.save()
            return JsonResponse("Updated Successfully",safe=False)
        return JsonResponse("Failed to Update")

    elif request.method=='DELETE':
        customer=dms_customer.objects.get(c_id=c_id) #Give PK
        customer.delete()
        return JsonResponse("Deleted Successfully",safe=False)


@csrf_exempt
def dms_invoiceApi(request):
    
    if request.method=='GET': #Select *
        invoice = dms_invoice.objects.all() #Get all Json objects
        invoiceSerializer=DmsInvoiceSerializer(invoice,many=True) #Convert into python comprehendable format
        return JsonResponse(invoiceSerializer.data,safe=False) # Actual JSON response

@csrf_exempt
def SaveFile(request):

    file = request.FILES['file']
    file_name = default_storage.save(file.name, file)
    return JsonResponse(file_name,safe=False)
from django.conf.urls import url
from real  import views

from django.conf.urls.static import static
from django.conf import settings

urlpatterns = [
    url(r'^dms_books$', views.dms_booksApi),
    
    url(r'^dms_topics$', views.dms_topicsApi),

    url(r'^dms_copies$', views.dms_copiesApi),

    url(r'^dms_rentals$', views.dms_rentalsApi),

    url(r'^dms_customer$', views.dms_customerApi),
    url(r'^dms_customer/([0-9]+)$', views.dms_customerApi),

    url(r'^dms_invoice$', views.dms_invoiceApi),

    url(r'^dms_books/savefile', views.SaveFile)
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
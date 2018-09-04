from django.conf.urls import patterns, include, url
from django.conf import settings
from django.conf.urls.static import static
# Uncomment the next two lines to enable the admin:
# from django.contrib import admin
# admin.autodiscover()


handler500 = "netcutterform.views.handler500"
handler404 = "netcutterform.views.handler404"

urlpatterns = [
	url(r'^', include('netcutterform.urls')),
    # ... the rest of your URLconf goes here ...
] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)

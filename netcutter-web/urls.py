from django.conf.urls import patterns, include, url

# Uncomment the next two lines to enable the admin:
# from django.contrib import admin
# admin.autodiscover()


handler500 = "netcutterform.views.handler500"
handler404 = "netcutterform.views.handler404"

urlpatterns = patterns('',
    # Examples:
    url(r'^', include('netcutterform.urls')),
    # url(r'^$', 'rpgnetv2.views.home', name='home'),
    # url(r'^rpgnetv2/', include('rpgnetv2.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    # url(r'^admin/', include(admin.site.urls)),
)

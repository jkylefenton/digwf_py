from django.conf.urls.defaults import *
from django.views.generic.simple import direct_to_template 

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'digwf_py.views.home', name='home'),
    # url(r'^digwf_py/', include('digwf_py.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),

    # generic export to xls on django admin interface
    url(r'^admin_export/', include('admin_export.urls')),

)

urlpatterns += patterns('django.views.generic.simple',
                       (r'^$', 'direct_to_template', {'template': 'index.html'}),
                       )

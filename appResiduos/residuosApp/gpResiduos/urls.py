from django.conf.urls import patterns, url
from gpResiduos import views

urlpatterns = patterns('gpResiduos.views',
                       url(r'^$', 'index_view', name='index'),
                       url(r'tem$', views.tem, name='tem'),
                       url(r'datos$', views.datos, name='datos'),
                       url(r'info$', views.info, name='informativo'),
                       url(r'^institucion', views.instituciones, name='institucion'),
                       url(r'^peligros', views.peligros, name='peligros'),
                       url(r'^sectores', views.sectores, name='sectores'),
                       )

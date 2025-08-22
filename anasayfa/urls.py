from django.urls import path
from . import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('', views.index, name='index'),
    path('blog/', views.blog_listesi, name='blog_listesi'),
    path('blog/<slug:slug>/', views.blog_detay, name='blog_detay'),
    path('iletisim-gonder/', views.iletisim_gonder, name='iletisim_gonder'),
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

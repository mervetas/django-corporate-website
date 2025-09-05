from django.contrib import admin
from django.utils.html import format_html
from .models import Slider, About, GaleriGorsel, Showcase, Istatistik, IstatistikArkaplan, Blog, Proje, FooterAyarlari, IletisimMesaji

@admin.register(Slider)
class SliderAdmin(admin.ModelAdmin):
    list_display = ('baslik', 'aktif', 'tarih')

@admin.register(About)
class AboutAdmin(admin.ModelAdmin):
    list_display = ('baslik', 'show_on_home', 'order', 'updated_at')
    list_editable = ('show_on_home','order')
    search_fields = ('baslik','kisa_aciklama','uzun_aciklama')
    readonly_fields = ('created_at','updated_at')
    fieldsets = (
        (None, {
            'fields': ('baslik','kisa_aciklama','uzun_aciklama','gorsel')
        }),
        ('Görünürlük & Sıra', {
            'fields': ('show_on_home','order')
        }),
        ('Meta', {
            'fields': ('created_at','updated_at')
        }),
    )

@admin.register(GaleriGorsel)
class GaleriGorselAdmin(admin.ModelAdmin):
    list_display = ('id', 'alt_baslik', 'resim')

@admin.register(Showcase)
class ShowcaseAdmin(admin.ModelAdmin):
    list_display = ('baslik','show_on_home','order','updated_at')
    list_editable = ('show_on_home','order')
    search_fields = ('baslik','kisa_aciklama')

@admin.register(Istatistik)
class IstatistikAdmin(admin.ModelAdmin):
    list_display = ('baslik', 'sayi', 'siralama')
    list_editable = ('sayi', 'siralama')
    list_filter = ('baslik',)
    
@admin.register(IstatistikArkaplan)
class IstatistikArkaplanAdmin(admin.ModelAdmin):
    list_display = ('baslik', 'resim_onizleme', 'aktif')
    list_editable = ('aktif',)
    
    def resim_onizleme(self, obj):
        if obj.resim:
            return format_html('<img src="{}" style="max-height:100px; max-width:200px; border-radius:4px;" />', obj.resim.url)
        return "-"
    resim_onizleme.short_description = 'Arkaplan Önizleme'

@admin.register(Blog)
class BlogAdmin(admin.ModelAdmin):
    list_display = ('baslik', 'kisa_aciklama', 'yayin_tarihi', 'aktif', 'kapak_resmi_onizleme')
    list_filter = ('aktif', 'yayin_tarihi')
    search_fields = ('baslik', 'icerik')
    list_editable = ('aktif',)
    prepopulated_fields = {'slug': ('baslik',)}
    
    def kapak_resmi_onizleme(self, obj):
        if obj.kapak_resmi:
            return format_html('<img src="{}" style="max-height:50px; max-width:50px; border-radius:4px;" />', obj.kapak_resmi.url)
        return "-"
    kapak_resmi_onizleme.short_description = 'Kapak Resmi'

@admin.register(Proje)
class ProjeAdmin(admin.ModelAdmin):
    list_display = ("baslik", "olusturulma_tarihi")
    search_fields = ("baslik", "aciklama")

@admin.register(FooterAyarlari)
class FooterAyarlariAdmin(admin.ModelAdmin):
    list_display = ['baslik', 'telefon', 'email']
    
    def has_add_permission(self, request):
        # Sadece bir tane footer ayarı kaydı olsun
        if self.model.objects.count() >= 1:
            return False
        return True

@admin.register(IletisimMesaji)
class IletisimMesajiAdmin(admin.ModelAdmin):
    list_display = ['ad', 'soyad', 'email', 'telefon', 'olusturulma_tarihi', 'okundu']
    list_filter = ['okundu', 'olusturulma_tarihi']
    search_fields = ['ad', 'soyad', 'email', 'mesaj']
    readonly_fields = ['olusturulma_tarihi']
    list_editable = ['okundu']
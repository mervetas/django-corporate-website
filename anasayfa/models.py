from django.db import models
from django.utils.text import slugify
from django.urls import reverse

class Slider(models.Model):
    baslik = models.CharField(max_length=100)
    aciklama = models.TextField(blank=True)
    gorsel = models.ImageField(upload_to='slider/')  # medya klasörü olacak
    aktif = models.BooleanField(default=True)
    tarih = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.baslik
    
# Hakkımızda 

class About(models.Model):
    baslik = models.CharField("Başlık", max_length=200, default="Hakkımızda")
    kisa_aciklama = models.TextField("Kısa Açıklama", blank=True)
    uzun_aciklama = models.TextField("Uzun Açıklama", blank=True)
    gorsel = models.ImageField("Görsel (opsiyonel)", upload_to='about/', blank=True, null=True)
    show_on_home = models.BooleanField("Ana sayfada göster", default=True)
    order = models.PositiveIntegerField("Sıra", default=0)

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        verbose_name = "Hakkımızda"
        verbose_name_plural = "Hakkımızda Bölümleri"
        ordering = ['order', '-updated_at']

    def __str__(self):
        return self.baslik
    
# Hizmetlerimiz Görsel 3 lü block

class GaleriGorsel(models.Model):
    resim = models.ImageField(upload_to='galeri/')
    alt_baslik = models.CharField(max_length=100, blank=True, null=True)

    def __str__(self):
        return f"Galeri Görseli #{self.id}"
    
# Hizmetlerimiz 
    
class Showcase(models.Model):
    baslik = models.CharField("Başlık", max_length=200, default="Projelerimiz")
    kisa_aciklama = models.TextField("Kısa Açıklama", blank=True)
    gorsel = models.ImageField("Görsel (sağ taraf)", upload_to='showcase/', blank=True, null=True)
    buton_yazi = models.CharField("Buton Yazısı", max_length=50, default="Projeleri Gör")
    buton_link = models.CharField("Buton Linki", max_length=255, default="/projeler")  # veya URLField
    arkaplan = models.CharField("Arka plan rengi (hex veya css)", max_length=30, default="#f6f6f6")
    show_on_home = models.BooleanField("Ana sayfada göster", default=True)
    order = models.PositiveIntegerField("Sıra", default=0)

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        verbose_name = "Showcase"
        verbose_name_plural = "Showcase Bölümleri"
        ordering = ['order', '-updated_at']

    def __str__(self):
        return self.baslik
    
# İstatistik 
    
class Istatistik(models.Model):
    baslik = models.CharField('Başlık', max_length=100)
    sayi = models.PositiveIntegerField('Sayısal Değer')
    siralama = models.PositiveIntegerField('Sıralama', default=0)
    
    class Meta:
        verbose_name = 'İstatistik'
        verbose_name_plural = 'İstatistikler'
        ordering = ['siralama']
    
    def __str__(self):
        return self.baslik
    
class IstatistikArkaplan(models.Model):
    baslik = models.CharField('Arkaplan Başlığı', max_length=100, blank=True)
    resim = models.ImageField('Arkaplan Resmi', upload_to='istatistik_arkaplan/')
    aktif = models.BooleanField('Aktif Mi?', default=True)

    class Meta:
        verbose_name = 'İstatistik Arkaplan'
        verbose_name_plural = 'İstatistik Arkaplanlar'

    def __str__(self):
        return self.baslik if self.baslik else "Arkaplan Resmi"
    
# Blog 

class Blog(models.Model):
    baslik = models.CharField('Başlık', max_length=200)
    kisa_aciklama = models.TextField('Kısa Açıklama', max_length=300)
    icerik = models.TextField('İçerik')
    kapak_resmi = models.ImageField('Kapak Resmi', upload_to='blog/')
    slug = models.SlugField('SEO URL', max_length=200, unique=True, blank=True)
    yayin_tarihi = models.DateTimeField('Yayın Tarihi', auto_now_add=True)
    aktif = models.BooleanField('Aktif', default=True)
    meta_aciklama = models.CharField('Meta Açıklama', max_length=300, blank=True)
    meta_etiketler = models.CharField('Meta Etiketler', max_length=200, blank=True)

    class Meta:
        verbose_name = 'Blog Yazısı'
        verbose_name_plural = 'Blog Yazıları'
        ordering = ['-yayin_tarihi']

    def __str__(self):
        return self.baslik

    def save(self, *args, **kwargs):
        if not self.slug:
            self.slug = slugify(self.baslik)
        super().save(*args, **kwargs)

    def get_absolute_url(self):
        return reverse('blog_detay', kwargs={'slug': self.slug})
    
#Projelerimiz

class Proje(models.Model):
    baslik = models.CharField(max_length=200)
    aciklama = models.TextField(blank=True, null=True)
    resim = models.ImageField(upload_to="projeler/")  # media/projeler içine yüklenir
    olusturulma_tarihi = models.DateTimeField(auto_now_add=True)

    class Meta:
        ordering = ["-olusturulma_tarihi"]

    def __str__(self):
        return self.baslik
    
#Footer
    
class FooterAyarlari(models.Model):
    baslik = models.CharField(max_length=200, default="Spider Metal", verbose_name="Footer Başlığı")
    adres = models.TextField(verbose_name="Adres", default="A. 1649 Sk. No: 61 Turan Mah. Bayraklı - İzmir, Türkiye, 35540")
    telefon = models.CharField(max_length=20, verbose_name="Telefon", default="+90 (232) 366 98 98")
    whatsapp = models.CharField(max_length=20, verbose_name="WhatsApp", default="+90 (532) 296 90 00")
    email = models.EmailField(verbose_name="E-posta", default="info@spidermetal.com")
    
    # Sosyal Medya Linkleri
    facebook_url = models.URLField(verbose_name="Facebook URL", blank=True, null=True)
    twitter_url = models.URLField(verbose_name="Twitter URL", blank=True, null=True)
    instagram_url = models.URLField(verbose_name="Instagram URL", blank=True, null=True)
    linkedin_url = models.URLField(verbose_name="LinkedIn URL", blank=True, null=True)
    
    # Footer Metinleri
    telif_hakki = models.CharField(max_length=255, verbose_name="Telif Hakkı Metni", 
                                  default="© 2025 Spider Metal. Tüm hakları saklıdır.")
    
    class Meta:
        verbose_name = "Footer Ayarı"
        verbose_name_plural = "Footer Ayarları"
    
    def __str__(self):
        return "Footer Ayarları"
    
    def save(self, *args, **kwargs):
        # Sadece bir tane footer ayarı kaydı olabilir
        if not self.pk and FooterAyarlari.objects.exists():
            # Zaten bir kayıt varsa, yeni kayıt oluşturma
            return
        super().save(*args, **kwargs)

#İletişim formu

class IletisimMesaji(models.Model):
    ad = models.CharField(max_length=100, verbose_name="Ad")
    soyad = models.CharField(max_length=100, verbose_name="Soyad")
    email = models.EmailField(verbose_name="E-posta")
    telefon = models.CharField(max_length=20, verbose_name="Telefon")
    mesaj = models.TextField(verbose_name="Mesaj")
    olusturulma_tarihi = models.DateTimeField(auto_now_add=True, verbose_name="Oluşturulma Tarihi")
    okundu = models.BooleanField(default=False, verbose_name="Okundu")
    
    class Meta:
        verbose_name = "İletişim Mesajı"
        verbose_name_plural = "İletişim Mesajları"
        ordering = ['-olusturulma_tarihi']
    
    def __str__(self):
        return f"{self.ad} {self.soyad} - {self.olusturulma_tarihi.strftime('%d.%m.%Y')}"
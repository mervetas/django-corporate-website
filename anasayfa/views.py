from django.shortcuts import render, get_object_or_404, redirect
from django.contrib import messages
from django.core.mail import send_mail
from django.conf import settings
from django.urls import reverse
from .forms import IletisimForm
from .models import Slider, GaleriGorsel, Istatistik, IstatistikArkaplan, Blog, IletisimMesaji, Proje

def index(request):
    sliderlar = Slider.objects.filter(aktif=True).order_by('-tarih') # Newest first (descending order)
    gorseller = GaleriGorsel.objects.all()
    istatistikler = Istatistik.objects.all()
    arkaplan = IstatistikArkaplan.objects.filter(aktif=True).first()
    return render(request, 'anasayfa/index.html', {
        'sliderlar': sliderlar,
        'gorseller': gorseller,
        'istatistikler': istatistikler,
        'istatistik_arkaplan': arkaplan
    })

def blog_listesi(request):
    bloglar = Blog.objects.filter(aktif=True).order_by('-yayin_tarihi')
    
    return render(request, 'blog/blog_listesi.html', {
        'bloglar': bloglar
    })

def blog_detay(request, slug):
    blog = get_object_or_404(Blog, slug=slug, aktif=True)
    
    return render(request, 'blog/blog_detay.html', {
        'blog': blog
    })

def iletisim_gonder(request):
    if request.method == 'POST':
        form = IletisimForm(request.POST)
        if form.is_valid():
            # Save the form
            mesaj = form.save()
            
            # Send email (optional)
            try:
                send_mail(
                    f'Yeni İletişim Mesajı - {mesaj.ad} {mesaj.soyad}',
                    f'''
                    Yeni bir iletişim formu dolduruldu:
                    
                    Ad: {mesaj.ad}
                    Soyad: {mesaj.soyad}
                    E-posta: {mesaj.email}
                    Telefon: {mesaj.telefon}
                    Mesaj: {mesaj.mesaj}
                    
                    Tarih: {mesaj.olusturulma_tarihi}
                    ''',
                    settings.DEFAULT_FROM_EMAIL,
                    ['spidermetal@email.com'],  # Notification recipient email
                    fail_silently=True,
                )
            except Exception as e:
                print(f"E-posta gönderilemedi: {e}")
            
            # Success message
            messages.success(request, 'Mesajınız başarıyla gönderildi. En kısa sürede sizinle iletişime geçeceğiz.')
            return redirect(reverse('index') + '#iletisim')
        else:
            messages.error(request, 'Lütfen formu doğru şekilde doldurun.')
            return redirect(reverse('index') + '#iletisim')
    
   # Redirect to homepage on GET request
    return redirect(reverse('index') + '#iletisim')

def projeler(request):
    projeler_listesi = Proje.objects.all()
    return render(request, "projeler/projeler.html", {"projeler": projeler_listesi})
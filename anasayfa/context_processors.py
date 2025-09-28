from .models import About, Showcase, FooterAyarlari
from django.utils import timezone

def global_context(request):
    # Get first About record marked for homepage display
    hakkimizda = About.objects.filter(show_on_home=True).order_by('order').first()
    showcase = Showcase.objects.filter(show_on_home=True).order_by('order').first()
    return {
        'hakkimizda': hakkimizda,
        'showcase': showcase,
    }

def footer_ayarlari(request):
    try:
        footer = FooterAyarlari.objects.first()
        if not footer:
            # Create with default values if first run
            footer = FooterAyarlari.objects.create()
    except:
        # Return empty object on database error
        class DefaultFooter:
            baslik = "Spider Metal"
            adres = "A. 1649 Sk. No: 61 Turan Mah. Bayraklı - İzmir, Türkiye, 35540"
            telefon = "+90 (232) 366 98 98"
            whatsapp = "+90 (532) 296 90 00"
            email = "info@spidermetal.com"
            facebook_url = "#"
            twitter_url = "#"
            instagram_url = "#"
            linkedin_url = "#"
            telif_hakki = "© 2023 Spider Metal. Tüm hakları saklıdır."
        
        footer = DefaultFooter()
        
    return {
        'footer_ayarlari': footer
    }

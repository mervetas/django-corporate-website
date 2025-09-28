-- MySQL dump 10.13  Distrib 9.4.0, for macos15.4 (arm64)
--
-- Host: localhost    Database: spidermetal_db
-- ------------------------------------------------------
-- Server version	9.4.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `anasayfa_about`
--

DROP TABLE IF EXISTS `anasayfa_about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anasayfa_about` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `baslik` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kisa_aciklama` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `uzun_aciklama` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `gorsel` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_on_home` tinyint(1) NOT NULL,
  `order` int unsigned NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `anasayfa_about_chk_1` CHECK ((`order` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anasayfa_about`
--

LOCK TABLES `anasayfa_about` WRITE;
/*!40000 ALTER TABLE `anasayfa_about` DISABLE KEYS */;
INSERT INTO `anasayfa_about` VALUES (1,'MODERN İZLER','Mimari Vizyonunuzu \nMetalin Gücüyle Buluşturuyoruz.','Spider Metal olarak, 15 yılı aşkın tecrübemizle dış cephe kaplama, metal konstrüksiyon ve mimari cephe tasarımı alanlarında yenilikçi çözümler sunuyoruz.\nAmacımız, estetik ve dayanıklılığı bir araya getirerek, binalara uzun ömürlü ve modern bir görünüm kazandırmaktır. Müşteri memnuniyetini ön planda tutan yaklaşımımız ile, her projede mühendislik, tasarım ve uygulama aşamalarını titizlikle yürütüyoruz.\n\nKaliteli malzeme kullanımı, alanında uzman ekibimiz ve güçlü referanslarımız ile sektörde güvenilir bir marka haline gelmenin gururunu yaşıyoruz.\n\nVizyonumuz, yenilikçi ve sürdürülebilir dış cephe çözümleriyle, yaşanabilir ve estetik şehirler inşa etmek.\nMisyonumuz, her projede kalite, güven ve estetiği en üst düzeyde sunarak, müşterilerimize değer katmaktır.','',1,1,'2025-08-05 20:05:32.384482','2025-08-08 05:37:46.722531');
/*!40000 ALTER TABLE `anasayfa_about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anasayfa_blog`
--

DROP TABLE IF EXISTS `anasayfa_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anasayfa_blog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `baslik` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kisa_aciklama` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `icerik` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `kapak_resmi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yayin_tarihi` datetime(6) NOT NULL,
  `aktif` tinyint(1) NOT NULL,
  `meta_aciklama` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_etiketler` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anasayfa_blog`
--

LOCK TABLES `anasayfa_blog` WRITE;
/*!40000 ALTER TABLE `anasayfa_blog` DISABLE KEYS */;
INSERT INTO `anasayfa_blog` VALUES (1,'Dış Cephe Kaplama ve İzolasyon: Binalarınızda Estetik ve Dayanıklılık','Binalarınız için dış cephe kaplama, izolasyon ve boya çözümleri. Estetik ve dayanıklı dış cephe uygulamalarıyla fark yaratın.','Dış cephe kaplama, modern inşaat projelerinde hem estetik hem de fonksiyonel açıdan kritik bir rol oynar. Binanızın ilk bakışta dikkat çeken yüzü olan dış cephe, doğru malzeme ve profesyonel işçilikle hem değer kazanır hem de uzun ömürlü hale gelir.\r\nGünümüzde dış cephe kaplama seçenekleri oldukça çeşitlidir. Alüminyum kompozit paneller, taş kaplamalar, vinil ve doğal taş uygulamaları binalara şıklık katarken, aynı zamanda uzun süreli dayanıklılık sağlar. Bunun yanında, dış cephe izolasyonu enerji verimliliği açısından büyük önem taşır. İyi bir izolasyon sistemi, yazın serin, kışın sıcak bir iç mekan sağlarken enerji maliyetlerini düşürür.\r\nBoya ve dekoratif kaplama uygulamaları da dış cepheyi tamamlayan önemli unsurlardandır. Kaliteli boya ve doğru uygulama, binanın estetik görünümünü korurken dış etkenlere karşı dayanıklılığı artırır. Ayrıca, su yalıtımı ve cephe bakım çalışmaları, binanın ömrünü uzatmak için ihmal edilmemelidir.\r\nSonuç olarak, dış cephe kaplama ve izolasyon projeleri, binalarınızın estetiğini, güvenliğini ve enerji verimliliğini artıran önemli yatırımlardır. Profesyonel ekipler ve kaliteli malzemelerle yapılan her dış cephe işi, hem görselliği hem de fonksiyonelliği garanti eder.','blog/4-editAI-1536x864.jpg.webp','dis-cephe-kaplama-ve-izolasyon-binalarinizda-estetik-ve-dayaniklilik','2025-08-19 12:17:52.837750',1,'Dış cephe kaplama, izolasyon ve boya uygulamalarıyla binalarınızda estetik ve dayanıklılık sağlayın. Profesyonel dış cephe çözümleri için bizi keşfedin.','dış cephe kaplama, dış cephe izolasyonu, dış cephe boya, su yalıtımı, cephe dekorasyon, inşaat dış cephe işleri'),(2,'Modern Dış Cephe Kaplama ve İzolasyon Çözümleri ile Binalarınıza Değer Katın','Modern dış cephe kaplama, izolasyon ve boya çözümleriyle binanızı koruyun ve estetik bir görünüm kazandırın.','Dış cephe, bir binanın hem estetik hem de fonksiyonel açıdan en önemli unsurlarındandır. Dış cephe kaplama, dış cephe izolasyonu ve kaliteli dış cephe boya uygulamaları, binanızın ömrünü uzatırken enerji tasarrufu sağlar ve estetik bir görünüm kazandırır.\r\nDış Cephe Kaplama Seçenekleri\r\nGünümüzde dış cephe kaplama seçenekleri oldukça çeşitlidir:\r\nAlüminyum kompozit paneller: Modern ve şık bir görünüm sağlar, uzun ömürlüdür.\r\nDoğal taş ve taş kaplamalar: Binaya dayanıklılık ve prestij katar.\r\nVinil kaplamalar: Ekonomik ve hafif çözümler sunar.\r\nDekoratif sıva ve boya: Binanın estetiğini tamamlayan fonksiyonel seçeneklerdir.\r\nBu kaplama çözümleri, sadece binanın görünümünü güzelleştirmekle kalmaz, aynı zamanda dış etkenlere karşı koruma sağlar.\r\nDış Cephe İzolasyonunun Önemi\r\nDış cephe izolasyonu, enerji verimliliğini artıran kritik bir uygulamadır. İyi yapılmış bir izolasyon:\r\nYazın iç mekanın serin kalmasını sağlar\r\nKışın ısı kaybını önler\r\nEnerji faturalarını düşürür\r\nKonforlu bir yaşam alanı yaratır\r\nBinanızın yalıtımı, hem ekonomik hem de çevresel açıdan büyük avantaj sağlar.\r\nSu Yalıtımı ve Boya Uygulamaları\r\nSu yalıtımı, dış cepheyi yağmur, kar ve nem gibi dış etkenlerden korur. Kaliteli dış cephe boya uygulamaları ise hem görselliği artırır hem de binayı uzun süre korur. Profesyonel işçilik ile yapılan uygulamalar, binanın değerini yükseltir.\r\nProfesyonel Dış Cephe Çözümleri\r\nİyi bir dış cephe projesi, malzeme kalitesi ve profesyonel uygulama ile başarılı olur. Doğru yapılan dış cephe kaplama, izolasyon ve boya çalışmaları, binanızın estetiğini ve dayanıklılığını garanti eder.\r\nSonuç olarak, dış cephe çalışmaları binalarınızın değerini artıran, enerji verimliliğini yükselten ve uzun vadede ekonomik tasarruf sağlayan önemli yatırımlardır. Modern dış cephe çözümleriyle hem görselliği hem de fonksiyonelliği bir arada yakalayabilirsiniz.','blog/Exterior_03.jpg.webp','modern-dis-cephe-kaplama-ve-izolasyon-cozumleri-ile-binalariniza-deger-katin','2025-08-19 14:13:14.407431',1,'Binalarınız için modern dış cephe kaplama, izolasyon ve boya çözümleri. Estetik, dayanıklı ve enerji verimli dış cephe uygulamaları ile fark yaratın.','dış cephe kaplama, dış cephe izolasyonu, dış cephe boya, su yalıtımı, cephe dekorasyonu, inşaat dış cephe işleri, modern dış cephe çözümleri'),(3,'Dış Cephe Boya ve Bakım Çözümleri ile Binalarda Uzun Ömür','Profesyonel dış cephe boya ve bakım uygulamaları ile binalarınızı uzun ömürlü ve estetik hale getirin.','Bir binanın dış cephesi, hem estetik hem de dayanıklılık açısından en önemli alanlardan biridir. Ancak sadece dış cephe kaplama değil, düzenli dış cephe boya ve bakım çalışmaları da binanın uzun ömürlü olmasını sağlar.\r\nDış Cephe Boyasının Önemi\r\nKaliteli bir dış cephe boyası, binayı sadece güzelleştirmekle kalmaz, aynı zamanda dış etkenlerden korur. Yağmur, güneş ışınları, rüzgâr ve nem, binanın dış yüzeyine zarar verebilir. Doğru boya uygulaması ile:\r\nBinanın estetik görünümü korunur\r\nYüzeyde oluşabilecek çatlaklar önlenir\r\nSu geçirmezlik sağlanır\r\nRenkler uzun yıllar canlı kalır\r\nDüzenli Bakımın Avantajları\r\nDış cephe bakım çalışmaları, binanın ömrünü uzatır. Zamanında yapılan küçük onarımlar, ileride daha büyük maliyetlerin önüne geçer. Özellikle mantolama sistemleri ve dış cephe izolasyonu, düzenli kontrol ve bakım gerektirir.\r\nProfesyonel Dış Cephe Hizmetleri\r\nAlanında uzman bir ekip tarafından yapılan dış cephe boya ve bakım uygulamaları, hem işçilik hem de malzeme kalitesiyle fark yaratır. Profesyonel dış cephe çözümleri ile binalar:\r\nDaha estetik bir görünüme kavuşur\r\nEnerji tasarrufu sağlar\r\nDış etkenlere karşı daha dayanıklı hale gelir\r\nSonuç\r\nDış cephe boya ve bakım uygulamaları, binalarınızın hem değerini artırır hem de uzun yıllar sorunsuz kullanılmasını sağlar. Dış cephe kaplama, izolasyon ve boya çözümleri, profesyonel ellerde uygulandığında güvenli ve estetik bir yatırım haline gelir.','blog/luks-villa-cephe-tasarimi-1.jpg','dis-cephe-boya-ve-bakim-cozumleri-ile-binalarda-uzun-omur','2025-08-19 19:58:00.660680',1,'Dış cephe boya ve bakım çözümleriyle binalarınızı koruyun. Profesyonel dış cephe kaplama ve izolasyon uygulamalarıyla estetik ve dayanıklılık sağlayın.','dış cephe boya, dış cephe bakım, dış cephe kaplama, dış cephe izolasyonu, bina boya uygulamaları, dış cephe onarım, inşaat dış cephe işleri'),(4,'Enerji Tasarrufu İçin Dış Cephe İzolasyonunun Önemi','Enerji verimliliği için profesyonel dış cephe izolasyonu. Isı kaybını önleyen çözümlerle konfor ve tasarruf sağlayın.','Binalarda enerji verimliliği, hem ekonomik hem de çevresel açıdan büyük önem taşır. Bu noktada dış cephe izolasyonu, ısı kayıplarını önleyen en etkili çözümlerden biridir. Doğru izolasyon uygulamalarıyla binalar hem konforlu bir yaşam alanına kavuşur hem de enerji maliyetleri ciddi şekilde düşer.\r\nDış Cephe İzolasyonu Neden Gereklidir?\r\nIsı kaybını önler: Kış aylarında ısının dışarı çıkmasını, yazın ise sıcak havanın içeri girmesini engeller.\r\nEnerji faturalarını azaltır: Daha az enerji harcayarak ekonomik tasarruf sağlar.\r\nÇevre dostudur: Enerji tüketimini düşürdüğü için karbon salınımını azaltır.\r\nBinanın ömrünü uzatır: Nem, küf ve rutubet oluşumunu engeller.\r\nİzolasyon Malzemeleri ve Yöntemleri\r\nGünümüzde dış cephe izolasyonunda farklı malzemeler kullanılmaktadır. En çok tercih edilenler:\r\nEPS ve XPS levhalar (strafor yalıtım malzemeleri)\r\nTaş yünü izolasyonu\r\nIsı yalıtım sıvaları\r\nHer malzemenin avantajları farklıdır. Örneğin, taş yünü yangına dayanıklılığı ile öne çıkarken, EPS levhalar hafifliği ve ekonomik olmasıyla tercih edilir.\r\nProfesyonel Uygulamanın Önemi\r\nDış cephe izolasyonu, uzman ekipler tarafından yapıldığında uzun yıllar boyunca sorunsuz kullanılabilir. Yanlış uygulamalar, izolasyonun etkisini azaltır ve gereksiz maliyetlere yol açar. Bu nedenle malzeme seçimi kadar uygulama ekibinin tecrübesi de kritik öneme sahiptir.\r\nSonuç\r\nEnerji tasarrufu sağlamak, konforlu yaşam alanları oluşturmak ve binalarınızı uzun ömürlü hale getirmek için dış cephe izolasyonu en önemli yatırımdır. Profesyonel çözümler ile binanızı hem estetik hem de fonksiyonel açıdan güçlendirebilirsiniz.','blog/c-423643563.jpg','enerji-tasarrufu-icin-dis-cephe-izolasyonunun-onemi','2025-08-19 20:07:10.439881',1,'Dış cephe izolasyonu ile enerji tasarrufu sağlayın. Isı kaybını önleyen, dayanıklı ve profesyonel izolasyon çözümleriyle binalarınızı koruyun.','dış cephe izolasyonu, ısı yalıtımı, enerji tasarrufu, dış cephe kaplama, bina izolasyon sistemleri, mantolama, dış cephe işleri');
/*!40000 ALTER TABLE `anasayfa_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anasayfa_footerayarlari`
--

DROP TABLE IF EXISTS `anasayfa_footerayarlari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anasayfa_footerayarlari` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `baslik` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adres` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsapp` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telif_hakki` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anasayfa_footerayarlari`
--

LOCK TABLES `anasayfa_footerayarlari` WRITE;
/*!40000 ALTER TABLE `anasayfa_footerayarlari` DISABLE KEYS */;
INSERT INTO `anasayfa_footerayarlari` VALUES (1,'Spider Metal','Güneş, 87214. Sk. No:11, 27070 Şahinbey/Gaziantep','+90 (532) 497 76 34','+90 (532) 497 76 34','info@spidermetal.com','https://www.instagram.com/spiderrmetal/','https://www.instagram.com/spiderrmetal/','https://www.instagram.com/spiderrmetal/','https://www.instagram.com/spiderrmetal/','© 2025 Spider Metal. Tüm hakları saklıdır.');
/*!40000 ALTER TABLE `anasayfa_footerayarlari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anasayfa_galerigorsel`
--

DROP TABLE IF EXISTS `anasayfa_galerigorsel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anasayfa_galerigorsel` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `resim` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt_baslik` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anasayfa_galerigorsel`
--

LOCK TABLES `anasayfa_galerigorsel` WRITE;
/*!40000 ALTER TABLE `anasayfa_galerigorsel` DISABLE KEYS */;
INSERT INTO `anasayfa_galerigorsel` VALUES (1,'galeri/proje3.webp','preje1'),(2,'galeri/proje1_BLM53Zj.webp','proje2'),(3,'galeri/proje2_oJHWD7L.webp','proje3');
/*!40000 ALTER TABLE `anasayfa_galerigorsel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anasayfa_iletisimmesaji`
--

DROP TABLE IF EXISTS `anasayfa_iletisimmesaji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anasayfa_iletisimmesaji` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ad` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soyad` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mesaj` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `olusturulma_tarihi` datetime(6) NOT NULL,
  `okundu` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anasayfa_iletisimmesaji`
--

LOCK TABLES `anasayfa_iletisimmesaji` WRITE;
/*!40000 ALTER TABLE `anasayfa_iletisimmesaji` DISABLE KEYS */;
INSERT INTO `anasayfa_iletisimmesaji` VALUES (1,'merve','taş','ttttttttt@gmail.com','555555','Proje','2025-08-20 10:44:19.933175',1),(2,'ayse','ertt','trttrrtt@gmail.com','444444','test','2025-08-20 11:28:44.772487',0),(3,'sdfdsf','sdfds','sdfdsfdsf@gmail.com','55555','eqeqeqweweq','2025-08-20 11:41:22.372129',0),(4,'sdffd','sdfsdf','sdffs@gmail.com','444444','erttrretertt','2025-08-20 11:46:41.528836',0);
/*!40000 ALTER TABLE `anasayfa_iletisimmesaji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anasayfa_istatistik`
--

DROP TABLE IF EXISTS `anasayfa_istatistik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anasayfa_istatistik` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `baslik` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sayi` int unsigned NOT NULL,
  `siralama` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `anasayfa_istatistik_chk_1` CHECK ((`sayi` >= 0)),
  CONSTRAINT `anasayfa_istatistik_chk_2` CHECK ((`siralama` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anasayfa_istatistik`
--

LOCK TABLES `anasayfa_istatistik` WRITE;
/*!40000 ALTER TABLE `anasayfa_istatistik` DISABLE KEYS */;
INSERT INTO `anasayfa_istatistik` VALUES (1,'Villa',100,1),(2,'Otel',90,2),(3,'Rezidans',80,3);
/*!40000 ALTER TABLE `anasayfa_istatistik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anasayfa_istatistikarkaplan`
--

DROP TABLE IF EXISTS `anasayfa_istatistikarkaplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anasayfa_istatistikarkaplan` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `baslik` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resim` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anasayfa_istatistikarkaplan`
--

LOCK TABLES `anasayfa_istatistikarkaplan` WRITE;
/*!40000 ALTER TABLE `anasayfa_istatistikarkaplan` DISABLE KEYS */;
INSERT INTO `anasayfa_istatistikarkaplan` VALUES (5,'','istatistik_arkaplan/daylight1.jpg.webp',1);
/*!40000 ALTER TABLE `anasayfa_istatistikarkaplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anasayfa_proje`
--

DROP TABLE IF EXISTS `anasayfa_proje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anasayfa_proje` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `baslik` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aciklama` longtext COLLATE utf8mb4_unicode_ci,
  `resim` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `olusturulma_tarihi` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anasayfa_proje`
--

LOCK TABLES `anasayfa_proje` WRITE;
/*!40000 ALTER TABLE `anasayfa_proje` DISABLE KEYS */;
INSERT INTO `anasayfa_proje` VALUES (1,'Adliye Sarayı','Çelik konstrüksiyon üzerine inşa edilmiş modern adliye sarayı','projeler/Ekran_Resmi_2025-09-04_13.29.06.png','2025-09-04 10:29:21.897322'),(2,'Fabrika Çatısı','Endüstriyel büyüklükteki çat','projeler/Ekran_Resmi_2025-09-05_12.53.38.png','2025-09-05 09:54:51.622129'),(3,'Stadyum Tribünü','Futbol sahasının üzerine inşa edilmiş tribün','projeler/Ekran_Resmi_2025-09-05_12.55.22.png','2025-09-05 09:56:10.247447');
/*!40000 ALTER TABLE `anasayfa_proje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anasayfa_showcase`
--

DROP TABLE IF EXISTS `anasayfa_showcase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anasayfa_showcase` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `baslik` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kisa_aciklama` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `gorsel` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buton_yazi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buton_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arkaplan` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_on_home` tinyint(1) NOT NULL,
  `order` int unsigned NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `anasayfa_showcase_chk_1` CHECK ((`order` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anasayfa_showcase`
--

LOCK TABLES `anasayfa_showcase` WRITE;
/*!40000 ALTER TABLE `anasayfa_showcase` DISABLE KEYS */;
INSERT INTO `anasayfa_showcase` VALUES (1,'Projelerimiz','Çelik Ruhu\nModern\nDokunuşla','showcase/Ekran_Resmi_2025-08-07_22.27.58.png','Projeleri Gör','/projeler','#f9f9f9',1,0,'2025-08-07 12:29:47.000000','2025-08-08 05:45:35.000000');
/*!40000 ALTER TABLE `anasayfa_showcase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anasayfa_slider`
--

DROP TABLE IF EXISTS `anasayfa_slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anasayfa_slider` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `baslik` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aciklama` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `gorsel` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` tinyint(1) NOT NULL,
  `tarih` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anasayfa_slider`
--

LOCK TABLES `anasayfa_slider` WRITE;
/*!40000 ALTER TABLE `anasayfa_slider` DISABLE KEYS */;
INSERT INTO `anasayfa_slider` VALUES (1,'slider1','inşaat','slider/slider1.jpg',1,'2025-08-03 17:56:40.207546'),(2,'slider2','','slider/ChatGPT_Image_3_Ağu_2025_22_54_19_Rp8dDm2.png',1,'2025-08-03 19:55:22.475725'),(3,'slider3','','slider/slider3.webp',1,'2025-08-03 21:07:06.202005'),(4,'slider4','','slider/slider4.webp',1,'2025-08-03 21:11:17.319175'),(5,'slider5','','slider/slider5.png',1,'2025-08-03 21:11:45.750320'),(6,'slider6','','slider/WhatsApp_Image_2025-08-20_at_15.43.12.jpeg',1,'2025-08-21 20:22:47.359383');
/*!40000 ALTER TABLE `anasayfa_slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add slider',7,'add_slider'),(26,'Can change slider',7,'change_slider'),(27,'Can delete slider',7,'delete_slider'),(28,'Can view slider',7,'view_slider'),(29,'Can add Hakkımızda',8,'add_about'),(30,'Can change Hakkımızda',8,'change_about'),(31,'Can delete Hakkımızda',8,'delete_about'),(32,'Can view Hakkımızda',8,'view_about'),(33,'Can add Showcase',9,'add_showcase'),(34,'Can change Showcase',9,'change_showcase'),(35,'Can delete Showcase',9,'delete_showcase'),(36,'Can view Showcase',9,'view_showcase'),(37,'Can add galeri gorsel',10,'add_galerigorsel'),(38,'Can change galeri gorsel',10,'change_galerigorsel'),(39,'Can delete galeri gorsel',10,'delete_galerigorsel'),(40,'Can view galeri gorsel',10,'view_galerigorsel'),(41,'Can add İstatistik',11,'add_istatistik'),(42,'Can change İstatistik',11,'change_istatistik'),(43,'Can delete İstatistik',11,'delete_istatistik'),(44,'Can view İstatistik',11,'view_istatistik'),(137,'Can add İstatistik Arkaplan',13,'add_istatistikarkaplan'),(138,'Can change İstatistik Arkaplan',13,'change_istatistikarkaplan'),(139,'Can delete İstatistik Arkaplan',13,'delete_istatistikarkaplan'),(140,'Can view İstatistik Arkaplan',13,'view_istatistikarkaplan'),(141,'Can add Blog Yazısı',14,'add_blog'),(142,'Can change Blog Yazısı',14,'change_blog'),(143,'Can delete Blog Yazısı',14,'delete_blog'),(144,'Can view Blog Yazısı',14,'view_blog'),(145,'Can add Footer Ayarı',15,'add_footerayarlari'),(146,'Can change Footer Ayarı',15,'change_footerayarlari'),(147,'Can delete Footer Ayarı',15,'delete_footerayarlari'),(148,'Can view Footer Ayarı',15,'view_footerayarlari'),(149,'Can add İletişim Mesajı',16,'add_iletisimmesaji'),(150,'Can change İletişim Mesajı',16,'change_iletisimmesaji'),(151,'Can delete İletişim Mesajı',16,'delete_iletisimmesaji'),(152,'Can view İletişim Mesajı',16,'view_iletisimmesaji'),(153,'Can add product',17,'add_product'),(154,'Can change product',17,'change_product'),(155,'Can delete product',17,'delete_product'),(156,'Can view product',17,'view_product'),(157,'Can add proje',18,'add_proje'),(158,'Can change proje',18,'change_proje'),(159,'Can delete proje',18,'delete_proje'),(160,'Can view proje',18,'view_proje');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$VxeNTa95pVP1kvuILj66td$Mc1h1e+rZKCQvyiGeqp3ff268shnV9U+Z0Wt9blXCk0=','2025-09-04 09:54:13.747340',1,'admin','','','tmerve55@gmail.com',1,1,'2025-08-03 14:46:51.633961');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2025-08-03 17:56:40.209321','1','slider1',1,'[{\"added\": {}}]',8,1),(2,'2025-08-03 19:55:22.476248','2','slider2',1,'[{\"added\": {}}]',8,1),(3,'2025-08-03 20:53:32.295710','2','slider2',2,'[{\"changed\": {\"fields\": [\"Gorsel\"]}}]',8,1),(4,'2025-08-03 21:07:06.203115','3','slider3',1,'[{\"added\": {}}]',8,1),(5,'2025-08-03 21:11:17.320370','4','slider4',1,'[{\"added\": {}}]',8,1),(6,'2025-08-03 21:11:45.751005','5','slider5',1,'[{\"added\": {}}]',8,1),(7,'2025-08-05 20:05:32.385542','1','Hakkımızda',1,'[{\"added\": {}}]',9,1),(8,'2025-08-05 20:13:00.759775','1','Hakkımızda',2,'[{\"changed\": {\"fields\": [\"Uzun Açıklama\", \"Görsel (opsiyonel)\"]}}]',9,1),(9,'2025-08-05 20:15:34.122654','1','Hakkımızda',2,'[{\"changed\": {\"fields\": [\"Sıra\"]}}]',9,1),(10,'2025-08-05 20:19:53.348209','1','Hakkımızda',2,'[{\"changed\": {\"fields\": [\"Kısa Açıklama\"]}}]',9,1),(11,'2025-08-05 20:54:13.971591','1','Hakkımızda',2,'[{\"changed\": {\"fields\": [\"Uzun Açıklama\"]}}]',9,1),(12,'2025-08-05 21:26:54.167559','1','Hakkımızda',2,'[{\"changed\": {\"fields\": [\"Kısa Açıklama\", \"Uzun Açıklama\", \"Görsel (opsiyonel)\"]}}]',9,1),(13,'2025-08-05 21:28:22.449569','1','Hakkımızda',2,'[{\"changed\": {\"fields\": [\"Kısa Açıklama\"]}}]',9,1),(14,'2025-08-05 21:29:37.037663','1','PANORAMİK MANZARA',2,'[{\"changed\": {\"fields\": [\"Başlık\", \"Kısa Açıklama\"]}}]',9,1),(15,'2025-08-07 12:29:47.696587','1','Projelerimiz',1,'[{\"added\": {}}]',10,1),(16,'2025-08-07 12:48:30.026555','1','Projelerimiz',2,'[{\"changed\": {\"fields\": [\"Arka plan rengi (hex veya css)\"]}}]',10,1),(17,'2025-08-07 12:51:07.212378','1','Projelerimiz',2,'[{\"changed\": {\"fields\": [\"Arka plan rengi (hex veya css)\"]}}]',10,1),(18,'2025-08-07 19:27:15.640516','1','Projelerimiz',2,'[{\"changed\": {\"fields\": [\"Arka plan rengi (hex veya css)\"]}}]',10,1),(19,'2025-08-07 19:28:16.772613','1','Projelerimiz',2,'[{\"changed\": {\"fields\": [\"Görsel (sağ taraf)\"]}}]',10,1),(20,'2025-08-07 21:29:03.383649','1','Galeri Görseli #1',1,'[{\"added\": {}}]',11,1),(21,'2025-08-07 21:29:14.432994','2','Galeri Görseli #2',1,'[{\"added\": {}}]',11,1),(22,'2025-08-07 21:29:27.127165','3','Galeri Görseli #3',1,'[{\"added\": {}}]',11,1),(23,'2025-08-07 21:30:29.475049','3','Galeri Görseli #3',2,'[{\"changed\": {\"fields\": [\"Resim\"]}}]',11,1),(24,'2025-08-07 21:33:45.985232','3','Galeri Görseli #3',2,'[{\"changed\": {\"fields\": [\"Resim\"]}}]',11,1),(25,'2025-08-07 21:33:54.671652','2','Galeri Görseli #2',2,'[{\"changed\": {\"fields\": [\"Resim\"]}}]',11,1),(26,'2025-08-07 21:34:01.006212','1','Galeri Görseli #1',2,'[{\"changed\": {\"fields\": [\"Resim\"]}}]',11,1),(27,'2025-08-08 05:31:44.099793','3','Galeri Görseli #3',2,'[{\"changed\": {\"fields\": [\"Resim\"]}}]',11,1),(28,'2025-08-08 05:31:49.778982','2','Galeri Görseli #2',2,'[{\"changed\": {\"fields\": [\"Resim\"]}}]',11,1),(29,'2025-08-08 05:31:55.900666','1','Galeri Görseli #1',2,'[{\"changed\": {\"fields\": [\"Resim\"]}}]',11,1),(30,'2025-08-08 05:32:20.457619','2','Galeri Görseli #2',2,'[{\"changed\": {\"fields\": [\"Resim\"]}}]',11,1),(31,'2025-08-08 05:32:29.525415','3','Galeri Görseli #3',2,'[{\"changed\": {\"fields\": [\"Resim\"]}}]',11,1),(32,'2025-08-08 05:36:25.503744','1','PANORAMİK MANZARA',2,'[{\"changed\": {\"fields\": [\"Kısa Açıklama\"]}}]',9,1),(33,'2025-08-08 05:37:46.723805','1','MODERN İZLER',2,'[{\"changed\": {\"fields\": [\"Başlık\"]}}]',9,1),(34,'2025-08-08 05:40:39.082112','1','Projelerimiz',2,'[{\"changed\": {\"fields\": [\"Kısa Açıklama\"]}}]',10,1),(35,'2025-08-08 05:45:35.394224','1','Projelerimiz',2,'[]',10,1),(36,'2025-08-08 20:25:07.305883','1','Villa - 18',1,'[{\"added\": {}}]',12,1),(37,'2025-08-08 20:25:48.650719','2','Otel - 5',1,'[{\"added\": {}}]',12,1),(38,'2025-08-08 20:26:01.986097','3','Daire - 45',1,'[{\"added\": {}}]',12,1),(39,'2025-08-08 20:32:19.130110','1','Villa - 18',2,'[{\"changed\": {\"fields\": [\"İkon (opsiyonel)\"]}}]',12,1),(40,'2025-08-18 14:52:50.319279','3','Daire - 3',2,'[{\"changed\": {\"fields\": [\"Say\\u0131\"]}}]',11,1),(41,'2025-08-18 14:53:20.394719','3','Merve - 3',2,'[{\"changed\": {\"fields\": [\"Ba\\u015fl\\u0131k\"]}}]',11,1),(42,'2025-08-18 14:54:02.338946','3','Merve - 3',2,'[{\"changed\": {\"fields\": [\"\\u0130kon (opsiyonel)\"]}}]',11,1),(43,'2025-08-19 09:36:55.766030','1','Villa',2,'[{\"changed\": {\"fields\": [\"\\u0130kon (Opsiyonel)\"]}}]',11,1),(44,'2025-08-19 09:37:01.099260','3','Merve',2,'[{\"changed\": {\"fields\": [\"\\u0130kon (Opsiyonel)\"]}}]',11,1),(45,'2025-08-19 09:53:40.814570','1','Arkaplan Resmi',1,'[{\"added\": {}}]',13,1),(46,'2025-08-19 10:11:03.953477','2','Arkaplan Resmi',1,'[{\"added\": {}}]',13,1),(47,'2025-08-19 10:11:09.011172','1','Arkaplan Resmi',2,'[{\"changed\": {\"fields\": [\"Aktif Mi?\"]}}]',13,1),(48,'2025-08-19 10:13:35.195329','2','Arkaplan Resmi',3,'',13,1),(49,'2025-08-19 10:13:35.198855','1','Arkaplan Resmi',3,'',13,1),(50,'2025-08-19 10:13:49.375172','3','Arkaplan Resmi',1,'[{\"added\": {}}]',13,1),(51,'2025-08-19 10:30:59.804624','3','Arkaplan Resmi',3,'',13,1),(52,'2025-08-19 10:31:05.671248','4','Arkaplan Resmi',1,'[{\"added\": {}}]',13,1),(53,'2025-08-19 10:45:01.586069','4','Arkaplan Resmi',3,'',13,1),(54,'2025-08-19 10:45:07.854407','5','Arkaplan Resmi',1,'[{\"added\": {}}]',13,1),(55,'2025-08-19 11:07:58.875680','3','Rezidans',2,'[{\"changed\": {\"fields\": [\"Ba\\u015fl\\u0131k\", \"Say\\u0131sal De\\u011fer\"]}}]',11,1),(56,'2025-08-19 11:08:04.090454','2','Otel',2,'[{\"changed\": {\"fields\": [\"Say\\u0131sal De\\u011fer\"]}}]',11,1),(57,'2025-08-19 11:08:06.919392','1','Villa',2,'[{\"changed\": {\"fields\": [\"Say\\u0131sal De\\u011fer\"]}}]',11,1),(58,'2025-08-19 12:17:52.838788','1','Dış Cephe Kaplama ve İzolasyon: Binalarınızda Estetik ve Dayanıklılık',1,'[{\"added\": {}}]',14,1),(59,'2025-08-19 14:13:14.408507','2','Modern Dış Cephe Kaplama ve İzolasyon Çözümleri ile Binalarınıza Değer Katın',1,'[{\"added\": {}}]',14,1),(60,'2025-08-19 19:20:12.896241','1','Footer Ayarları',2,'[{\"changed\": {\"fields\": [\"Adres\", \"Telefon\", \"WhatsApp\"]}}]',15,1),(61,'2025-08-19 19:24:22.563925','1','Footer Ayarları',2,'[{\"changed\": {\"fields\": [\"Instagram URL\"]}}]',15,1),(62,'2025-08-19 19:24:53.840243','1','Footer Ayarları',2,'[{\"changed\": {\"fields\": [\"Facebook URL\", \"Twitter URL\", \"LinkedIn URL\"]}}]',15,1),(63,'2025-08-19 19:58:00.661882','3','Dış Cephe Boya ve Bakım Çözümleri ile Binalarda Uzun Ömür',1,'[{\"added\": {}}]',14,1),(64,'2025-08-19 20:07:10.440748','4','Enerji Tasarrufu İçin Dış Cephe İzolasyonunun Önemi',1,'[{\"added\": {}}]',14,1),(65,'2025-08-20 10:44:39.236318','1','merve taş - 20.08.2025',2,'[{\"changed\": {\"fields\": [\"Okundu\"]}}]',16,1),(66,'2025-08-21 20:22:47.360418','6','slider6',1,'[{\"added\": {}}]',7,1),(67,'2025-08-21 20:25:11.636844','1','Footer Ayarları',2,'[{\"changed\": {\"fields\": [\"Adres\"]}}]',15,1),(68,'2025-08-21 20:27:52.873590','1','Footer Ayarları',2,'[{\"changed\": {\"fields\": [\"Instagram URL\"]}}]',15,1),(69,'2025-08-22 07:54:15.177253','1','Footer Ayarları',2,'[{\"changed\": {\"fields\": [\"Telefon\", \"WhatsApp\", \"Facebook URL\", \"Twitter URL\", \"LinkedIn URL\"]}}]',15,1),(70,'2025-08-22 07:54:47.735611','1','Villa',2,'[{\"changed\": {\"fields\": [\"Say\\u0131sal De\\u011fer\"]}}]',11,1),(71,'2025-08-22 07:54:47.737289','2','Otel',2,'[{\"changed\": {\"fields\": [\"Say\\u0131sal De\\u011fer\"]}}]',11,1),(72,'2025-08-22 07:54:47.738697','3','Rezidans',2,'[{\"changed\": {\"fields\": [\"Say\\u0131sal De\\u011fer\"]}}]',11,1),(73,'2025-08-22 08:04:14.256005','1','Villa',2,'[{\"changed\": {\"fields\": [\"Say\\u0131sal De\\u011fer\"]}}]',11,1),(74,'2025-08-22 08:04:14.257754','2','Otel',2,'[{\"changed\": {\"fields\": [\"Say\\u0131sal De\\u011fer\"]}}]',11,1),(75,'2025-08-22 08:04:14.258826','3','Rezidans',2,'[{\"changed\": {\"fields\": [\"Say\\u0131sal De\\u011fer\"]}}]',11,1),(76,'2025-09-04 10:29:21.898787','1','Adliye Sarayı',1,'[{\"added\": {}}]',18,1),(77,'2025-09-05 09:54:51.623418','2','Fabrika Çatısı',1,'[{\"added\": {}}]',18,1),(78,'2025-09-05 09:56:10.248247','3','Stadyum Tribünü',1,'[{\"added\": {}}]',18,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(8,'anasayfa','about'),(14,'anasayfa','blog'),(15,'anasayfa','footerayarlari'),(10,'anasayfa','galerigorsel'),(16,'anasayfa','iletisimmesaji'),(11,'anasayfa','istatistik'),(13,'anasayfa','istatistikarkaplan'),(17,'anasayfa','product'),(18,'anasayfa','proje'),(9,'anasayfa','showcase'),(7,'anasayfa','slider'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-08-18 11:13:26.249555'),(2,'auth','0001_initial','2025-08-18 11:13:26.378021'),(3,'admin','0001_initial','2025-08-18 11:13:26.408498'),(4,'admin','0002_logentry_remove_auto_add','2025-08-18 11:13:26.413172'),(5,'admin','0003_logentry_add_action_flag_choices','2025-08-18 11:13:26.419025'),(6,'anasayfa','0001_initial','2025-08-18 11:13:26.426488'),(7,'anasayfa','0002_about_delete_haber','2025-08-18 11:13:26.432836'),(8,'anasayfa','0003_showcase','2025-08-18 11:13:26.439082'),(9,'anasayfa','0004_galerigorsel','2025-08-18 11:13:26.443011'),(10,'anasayfa','0005_istatistik','2025-08-18 11:13:26.447049'),(11,'contenttypes','0002_remove_content_type_name','2025-08-18 11:13:26.475224'),(12,'auth','0002_alter_permission_name_max_length','2025-08-18 11:13:26.489904'),(13,'auth','0003_alter_user_email_max_length','2025-08-18 11:13:26.501338'),(14,'auth','0004_alter_user_username_opts','2025-08-18 11:13:26.506310'),(15,'auth','0005_alter_user_last_login_null','2025-08-18 11:13:26.522198'),(16,'auth','0006_require_contenttypes_0002','2025-08-18 11:13:26.523322'),(17,'auth','0007_alter_validators_add_error_messages','2025-08-18 11:13:26.527609'),(18,'auth','0008_alter_user_username_max_length','2025-08-18 11:13:26.544388'),(19,'auth','0009_alter_user_last_name_max_length','2025-08-18 11:13:26.559507'),(20,'auth','0010_alter_group_name_max_length','2025-08-18 11:13:26.567671'),(21,'auth','0011_update_proxy_permissions','2025-08-18 11:13:26.573925'),(22,'auth','0012_alter_user_first_name_max_length','2025-08-18 11:13:26.592126'),(23,'sessions','0001_initial','2025-08-18 11:13:26.599722'),(24,'anasayfa','0006_istatistikarkaplan_remove_istatistik_ikon_and_more','2025-08-19 09:52:58.333573'),(25,'anasayfa','0007_blog','2025-08-19 12:06:26.786947'),(26,'anasayfa','0008_footerayarlari','2025-08-19 19:14:34.527681'),(27,'anasayfa','0009_iletisimmesaji','2025-08-20 09:53:36.083246'),(28,'anasayfa','0010_product_about_baslik_en_about_baslik_ru_and_more','2025-08-21 19:01:15.842700'),(29,'anasayfa','0011_blog_baslik_en_blog_baslik_ru_blog_baslik_tr_and_more','2025-08-21 19:33:15.352011'),(30,'anasayfa','0012_proje_delete_product_remove_about_baslik_en_and_more','2025-09-04 09:57:55.801109');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0ddcdnlpnuxz62g8ojrrc7w7xxg2in59','.eJxVjMsOwiAUBf-FtSFctAVcuvcbyH2AVA0kpV0Z_12bdKHbMzPnpSKuS4lrT3OcRJ0VqMPvRsiPVDcgd6y3prnVZZ5Ib4readfXJul52d2_g4K9fGsL_iRg0ZiUgYOTbCgHAnJkAMRm58WSZbYOM8oQRhYPLBhkzMfBqPcH8204qw:1ujNtV:ncqwGczZUYEPFBch85bvr5-7a9BUQ6UusVILasDBkyA','2025-08-19 20:04:21.160786'),('5tqyyr1i45lsnaca61deurz655aemdin','.eJxVjMsOwiAUBf-FtSFctAVcuvcbyH2AVA0kpV0Z_12bdKHbMzPnpSKuS4lrT3OcRJ0VqMPvRsiPVDcgd6y3prnVZZ5Ib4readfXJul52d2_g4K9fGsL_iRg0ZiUgYOTbCgHAnJkAMRm58WSZbYOM8oQRhYPLBhkzMfBqPcH8204qw:1uia0p:xUNJr_ylna4GmqnlHZi5BprMlYwj68yymYhljw1mbf0','2025-08-17 14:48:35.993527'),('8ty6ghalcl203um61ubwj2g7lelvy1u9','.eJxVjMsOwiAUBf-FtSFctAVcuvcbyH2AVA0kpV0Z_12bdKHbMzPnpSKuS4lrT3OcRJ0VqMPvRsiPVDcgd6y3prnVZZ5Ib4readfXJul52d2_g4K9fGsL_iRg0ZiUgYOTbCgHAnJkAMRm58WSZbYOM8oQRhYPLBhkzMfBqPcH8204qw:1uienJ:Mdl94-wuosGnOhY48C7U8jF-l9Q0QFYmfpNq5tszhQ4','2025-08-17 19:54:57.406382'),('993yk2is9yu5r8esepla4wo3vteiqdnp','.eJxVjMsOwiAUBf-FtSFctAVcuvcbyH2AVA0kpV0Z_12bdKHbMzPnpSKuS4lrT3OcRJ0VqMPvRsiPVDcgd6y3prnVZZ5Ib4readfXJul52d2_g4K9fGsL_iRg0ZiUgYOTbCgHAnJkAMRm58WSZbYOM8oQRhYPLBhkzMfBqPcH8204qw:1unsB4:A6WN2tFZzwk8--6YnWFm15lyRX-nfv5JxHgri0D4NIM','2025-09-01 05:13:02.287814'),('e35q2qw82249te061teyoq4uwdncc5t7','.eJxVjMsOwiAUBf-FtSFctAVcuvcbyH2AVA0kpV0Z_12bdKHbMzPnpSKuS4lrT3OcRJ0VqMPvRsiPVDcgd6y3prnVZZ5Ib4readfXJul52d2_g4K9fGsL_iRg0ZiUgYOTbCgHAnJkAMRm58WSZbYOM8oQRhYPLBhkzMfBqPcH8204qw:1ujLXL:bjaCNgnRmfjPdk4zr2nNcxTDk7W2clVtZXkxGKUoro8','2025-08-19 17:33:19.415374'),('nksmi9bzi828toiemmlmgjzimqpp10yj','.eJxVjMsOwiAUBf-FtSFctAVcuvcbyH2AVA0kpV0Z_12bdKHbMzPnpSKuS4lrT3OcRJ0VqMPvRsiPVDcgd6y3prnVZZ5Ib4readfXJul52d2_g4K9fGsL_iRg0ZiUgYOTbCgHAnJkAMRm58WSZbYOM8oQRhYPLBhkzMfBqPcH8204qw:1ujO1H:wcrRwsc-9PJN9_4WDbeK8_o2S1hOWCwtMddyAivEElI','2025-08-19 20:12:23.348047'),('rweba0tsyc7qnd2bvw1v0tstbitq56ld','.eJxVjMsOwiAUBf-FtSFctAVcuvcbyH2AVA0kpV0Z_12bdKHbMzPnpSKuS4lrT3OcRJ0VqMPvRsiPVDcgd6y3prnVZZ5Ib4readfXJul52d2_g4K9fGsL_iRg0ZiUgYOTbCgHAnJkAMRm58WSZbYOM8oQRhYPLBhkzMfBqPcH8204qw:1uu6fV:2kSzJpB3CM49CXvubpnWbgQ2-yP_Zxfk3Oi4BdjOvr0','2025-09-18 09:54:13.750092');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-27 16:25:53

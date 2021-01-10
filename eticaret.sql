-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 10 Oca 2021, 15:37:09
-- Sunucu sürümü: 8.0.17
-- PHP Sürümü: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `eticaret`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayar`
--

CREATE TABLE `ayar` (
  `ayar_id` int(11) NOT NULL,
  `ayar_logo` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_url` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_title` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_description` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_keywords` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_author` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_tel` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_gsm` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_faks` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mail` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_il` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_ilce` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_adres` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mesai` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_maps` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_analystic` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_zopim` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_facebook` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_twitter` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_google` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_youtube` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtphost` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpuser` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtppassword` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpport` int(11) NOT NULL,
  `ayar_bakim` enum('0','1') COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayar`
--

INSERT INTO `ayar` (`ayar_id`, `ayar_logo`, `ayar_url`, `ayar_title`, `ayar_description`, `ayar_keywords`, `ayar_author`, `ayar_tel`, `ayar_gsm`, `ayar_faks`, `ayar_mail`, `ayar_il`, `ayar_ilce`, `ayar_adres`, `ayar_mesai`, `ayar_maps`, `ayar_analystic`, `ayar_zopim`, `ayar_facebook`, `ayar_twitter`, `ayar_google`, `ayar_youtube`, `ayar_smtphost`, `ayar_smtpuser`, `ayar_smtppassword`, `ayar_smtpport`, `ayar_bakim`) VALUES
(0, 'dimg/25605SiteLogo.PNG', '', 'E-TİCARET ', 'Yazılım Mühendisi', 'Eticaret Uygulaması', '16541039  TARKAN KARA', '+905469305077', '+905469305077', '+905469305077', 'unnahmet23@hotmail.com', 'ELAZIĞ', 'MERKEZ', 'FIRAT TEKNOKENT - Log-Def', '7/24 Acıgız', 'pb=!1m14!1m8!1m3!1d1557.2822198136175!2d39.178244!3d38.681877!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x22639ec1bd9d040a!2sLogical%20Defense!5e0!3m2!1str!2str!4v1609595454973!5m2!1str!2str\r\n', 'sdFWAGFDFV', 'EYBYW BEV', 'www.facebook.com', 'https://twitter.com/AhmetcanMf', 'www.google.com', 'www.youtube.com', 'root@hotmail.com', 'root@hotmail.com', '16541039', 25, '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `banka`
--

CREATE TABLE `banka` (
  `banka_id` int(11) NOT NULL,
  `banka_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_iban` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_hesap` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_hesapadsoyad` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `banka_subekodu` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `banka`
--

INSERT INTO `banka` (`banka_id`, `banka_ad`, `banka_iban`, `banka_hesap`, `banka_hesapadsoyad`, `banka_subekodu`, `banka_durum`) VALUES
(1, 'ZİRAAT BANKASI', 'TR99 1000 1111 2222 3333 4444 23', '2222 3333 4444 23', NULL, '3434', '1'),
(2, 'ING BANKASI', 'TR23 1234 5678 9102 3456 7891 49', '9102 3456 7891 49', NULL, '2323', '1'),
(3, 'HALK BANKASI', 'TR49 0000 7856 0000 1111 7777 34', '0000 1111 7777 34', NULL, '4949', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `hakkimizda_id` int(11) NOT NULL,
  `hakkimizda_baslik` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_icerik` text COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_video` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_vizyon` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_misyon` varchar(500) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`hakkimizda_id`, `hakkimizda_baslik`, `hakkimizda_icerik`, `hakkimizda_video`, `hakkimizda_vizyon`, `hakkimizda_misyon`) VALUES
(0, 'TARKAN KARA', '<p>Fırat &Uuml;niversitesi Yazılım M&uuml;hendisliği Tarkan KARA adlı &ouml;ğrenciniz, İşyeri Eğitim Stajını LOG-DEF&#39;te yapıyor.</p>\r\n\r\n<p>Hikayenizi anlatın</p>\r\n\r\n<p>&Ouml;ncelikle işe hikayenizi anlatarak başlayabilirsiniz. Firmanızı nasıl ve neden kurdunuz? T&uuml;keticilerin hangi sorunlarını ya da ihtiya&ccedil;larını keşfettiniz ve onlara b&ouml;yle bir hizmet sunmaya karar verdiniz.?</p>\r\n\r\n<p>Bu t&uuml;r sorulara yanıt vereceğiniz bir metin hazırlayabilir ve hakkımızda sayfası i&ccedil;erisinde t&uuml;keticilere hikayenizi kısa bir şekilde anlatabilirsiniz.</p>\r\n\r\n<p>Hakkımızda yazısı i&ccedil;in kullanacağınız dile karar verin</p>\r\n\r\n<p>Kullanacağınız dil de bir o kadar &ouml;nemli. Yaptığınız iş, bulunduğunuz sekt&ouml;r ve hedef kitlenize g&ouml;re bir dil belirlemelisiniz. Kurumsal bir kimlik mi kullanacağınıza yoksa daha eğlenceli ve sıcak bir dil mi kullacaksınız, karar vermelisiniz.</p>\r\n\r\n<p>Ulaşmayı hedeflediğiniz kişilere g&ouml;re b&ouml;yle bir yaklaşımda olmanız olduk&ccedil;a &ouml;nemli. Hedef kitlenizi 30 altındaki kişiler oluşturuyorsa, biraz daha eğlenceli ve sıcak bir dil kullanmanız daha doğru olur. 30 ve &uuml;zerindeki kitlelere hitap ediyorsanız, biraz daha ciddi bir dil kurgulayabilirsiniz. &Ccedil;&uuml;nk&uuml; bu t&uuml;keticilerin markalardan beklentileri farklı olacaktır ve sizinle yaptıkları konuşmaların dili de değişiklik g&ouml;sterecektir.</p>\r\n\r\n<p>Hakkımızda sayfası i&ccedil;inde ekibinize de yer verin</p>\r\n\r\n<p>B&uuml;y&uuml;k kurumsal firmalar i&ccedil;in bunu yapmak biraz zor olabilir. &Ouml;zellikle &ccedil;ok fazla &ccedil;alışan bulunuyorsa, ekibinizin t&uuml;m&uuml;ne burada yer veremeyebilirsiniz. Ancak daha orta &ouml;l&ccedil;ekli veya k&uuml;&ccedil;&uuml;k girişimler bu t&uuml;r bir yaklaşımdan yararlanabilirler.</p>\r\n\r\n<p>T&uuml;keticiler, alışveriş yaparken karşılarındaki firmayı da tanımak isteyeceklerdir. Ekibinizin fotoğraflarını paylaşmak, t&uuml;keticilerin g&uuml;ven algısını da olumlu y&ouml;nde etkiler. Ekibinizdeki kişilerin yaptıkları işleri, hangi alanda uzman olduklarını, şirkette hangi pozisyonda olduklarını bu alana ekleyerek, kişisel bilgiler paylaşabilirsiniz.</p>\r\n\r\n<p>M&uuml;şteri yorumlarını ekleyin</p>\r\n\r\n<p>M&uuml;şterilerinizin yorumlarını paylaşmak da olduk&ccedil;a etkili y&ouml;ntemlerden biridiri. Bunun sebebi ise, sizin hizmet verdiğiniz kişilerin markanız hakkındaki yorumları, sitenizi ilk kez ziyaret edenlerin de algısını etkileyecektir.</p>\r\n\r\n<p>Ger&ccedil;ek kullanıcı yorumlarına yer verdiğinizde, bu kişilerin size g&uuml;vendiklerini ve aldıkları hizmetten memnun olduklarını da yeni ziyaret&ccedil;ilere yansıtacaktır. Bu da tabii ki t&uuml;keticilerin g&ouml;z&uuml;nde, marka algınızı sağlamlaştıracaktır.</p>\r\n\r\n<p>Şirket i&ccedil;i fotoğraflar veya videolar koyun</p>\r\n\r\n<p>Kendinizi karşı tarafa daha iyi yansıtmak, şeffaflığınızı g&ouml;stermek ve şirket k&uuml;lt&uuml;r&uuml;n&uuml;z&uuml; yansıtmak i&ccedil;in hakkımızda sayfanızda şirket i&ccedil;i fotoğraflar ve videolar yayınlayabilirsiniz.</p>\r\n\r\n<p>&Ccedil;alışma ortamınızı g&ouml;sterebilir, ekibinizdeki kişileri &ccedil;alışma ortamında fotoğraflayabilir ya da t&uuml;m bunları bir video olarak hazırlayabilirsiniz.</p>\r\n\r\n<p>Hem firmanızla ilgili daha detaylı bilgiler sunmuş olursunuz, hem de şeffaflığınız t&uuml;keticilerin g&uuml;ven algısını olumlu y&ouml;nde etkiler.</p>\r\n\r\n<p>Hakkımızda sayfanıza kolay erişilsin</p>\r\n\r\n<p>Marka bilinirliğini hen&uuml;z artıramamış firmaların kendilerini tanıtmaları olduk&ccedil;a &ouml;nemlidir. Aynı zamanda marka bilinirliğinin az olması, firmanın &ouml;ncelikle g&uuml;ven kazanmasına da neden olur. Bu sebeple de hakkımızda sayfanızın kolay bir şekilde erişilebilir olması olduk&ccedil;a &ouml;nemlidir.</p>\r\n\r\n<p>Menu&rsquo;de bu sayfaya y&ouml;nlendirecek bir alan yapabilir; aynı zamanda sitenin Footer b&ouml;l&uuml;m&uuml;nde hakkımızda sayfanıza giden bir link y&ouml;nlendirmesi yapabilirsiniz.</p>\r\n\r\n<p>Şirketinizle ilgili &ouml;nemli gelişmeleri yazın</p>\r\n\r\n<p>Şirketiniz, bazı konular &uuml;zerinde &ouml;d&uuml;ller alabilir ya da basında &ouml;nemli yayınlarda kendine yer bulmuş olabilir. Bu bilgileri de hakkımızda sayfanızda g&ouml;stermelisiniz.</p>\r\n\r\n<p>Aldığınız &ouml;d&uuml;ller, zaten markanızın değerini t&uuml;keticiler g&ouml;sterecektir. Sekt&ouml;rdeki ya da T&uuml;rkiye&rsquo;deki &ouml;nemli yayıncılarla yaptığınız r&ouml;portajları da buraya eklemek, firmanızın aslında dikkat &ccedil;eken bir girişim olduğunu g&ouml;zler &ouml;n&uuml;ne sereceği i&ccedil;in g&uuml;ven algısını artıracaktır.</p>\r\n\r\n<p>Belli aralıklarla g&uuml;ncelleyin</p>\r\n\r\n<p>Hakkımızda sayfanızı ara sıra g&uuml;ncellemek de iyi bir &ccedil;alışma olacaktır. Şirketinizle ilgili yeni gelişmeleri buraya ekleyebilir, yeni m&uuml;şterilerinizden gelen yeni yorumları ekleyerek, eskileri kaldırabilirsiniz.</p>\r\n\r\n<p>Bunların yanı sıra şirket i&ccedil;i yeni fotoğraf ve videolarınız varsa bunları da g&uuml;ncelleyebilirsiniz. Bu sayfaları g&uuml;ncellemek Google tarafında da sayfanızın g&uuml;ncellemesini sağlayacaktır; aynı zamanda sitenizi yeni ziyaret eden kişilere daha g&uuml;ncel bilgiler sunmanıza yardımcı olacaktır.</p>\r\n', 'U76vYMKvOBQ', 'Vizyon Bilgileri', 'Misyon Bilgileri');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kategori_ust` int(2) NOT NULL,
  `kategori_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kategori_sira` int(2) NOT NULL,
  `kategori_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_ad`, `kategori_ust`, `kategori_seourl`, `kategori_sira`, `kategori_durum`) VALUES
(2, 'TELEFON', 0, 'telefon', 1, '1'),
(3, 'AKILLI SAAT', 0, 'akilli-saat', 2, '1'),
(4, 'FOTOĞRAF MAKİNESİ', 0, 'fotograf-makinesi', 3, '1'),
(5, 'OYUN KONSOLLARI', 0, 'oyun-konsollari', 4, '1'),
(7, 'TELEVİZYON', 0, 'televizyon', 5, '1'),
(9, 'LAPTOP', 0, 'laptop', 0, '1'),
(11, 'YAZICILAR ', 0, 'yazicilar', 6, '1'),
(12, 'KADIN GİYİM', 0, 'kadin-giyim', 7, '1'),
(13, 'ERKEK GİYİM', 0, 'erkek-giyim', 8, '1'),
(14, 'OFİS KIRTASİYE', 0, 'ofis-kirtasiye', 9, '1'),
(15, 'SPOR OUTDOOR', 0, 'spor-outdoor', 10, '1'),
(16, 'KODLAMA KİTAPLARI', 0, 'kodlama-kitaplari', 11, '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `kullanici_id` int(11) NOT NULL,
  `kullanici_zaman` datetime DEFAULT CURRENT_TIMESTAMP,
  `kullanici_resim` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kullanici_tc` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kullanici_ad` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kullanici_mail` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kullanici_gsm` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kullanici_password` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kullanici_adsoyad` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kullanici_adres` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kullanici_il` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kullanici_ilce` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kullanici_unvan` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kullanici_yetki` enum('0','1') CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT '0',
  `kullanici_durum` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kullanici_id`, `kullanici_zaman`, `kullanici_resim`, `kullanici_tc`, `kullanici_ad`, `kullanici_mail`, `kullanici_gsm`, `kullanici_password`, `kullanici_adsoyad`, `kullanici_adres`, `kullanici_il`, `kullanici_ilce`, `kullanici_unvan`, `kullanici_yetki`, `kullanici_durum`) VALUES
(2, '2020-10-22 15:33:37', '', '12345678910', 'Tarkan ', 'ahmetcanmf@hotmail.com', '050505050505', '123456', 'Ahmet Tarkan KARA', 'Elazığ Merkez', 'Elazığ', 'Merkez', '', '0', 1),
(4, '2020-10-23 10:13:35', '', '44200766905', 'Tarkan ', 'tarkan@hotmail.com', '5469305077', '123456789', 'TARKAN KARA', 'Bulanıkkkkkk', 'İSTANBUL', 'KUCUKCEKMECE', '', '0', 1),
(6, '2020-10-22 15:33:37', '', '12345678910', 'Tarkan ', 'yasinyagcı@hotmail.com', '5469305077', '16541039', 'Yasin Yağcı', '', '', '', '', '1', 1),
(16, '2020-11-08 17:00:14', NULL, '121341131644984', NULL, 'muhammetbaykara23@hotmail.com', NULL, '123456', 'MUHAMMET BAYKARA', NULL, NULL, NULL, NULL, '1', 1),
(25, '2021-01-10 16:28:43', NULL, '1111111111111', 'logical defense', 'logdef@logdef.com', '05469305077', '1234567', 'logdef', 'Halkali Meydan', 'Istanbul', 'ISTANBUL', NULL, '1', 1),
(26, '2021-01-10 16:33:49', NULL, '123456789', 'logical defense', '123@hotmail.com', '05469305055', '16541039', 'Tarkan', 'Çaydaçıra Mahalesi', 'ELAZIĞ', 'MERKEZ', NULL, '1', 1),
(27, '2021-01-10 16:39:10', NULL, '1111111111111', 'logical defense', 'beko@hotmail.com', '05469305077', '123456789', 'BEKİR', 'Halkali Meydan', 'Istanbul', 'ISTANBUL', NULL, '1', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_ust` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `menu_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `menu_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `menu_url` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `menu_sira` int(2) NOT NULL,
  `menu_durum` enum('0','1') CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `menu_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_ust`, `menu_ad`, `menu_detay`, `menu_url`, `menu_sira`, `menu_durum`, `menu_seourl`) VALUES
(4, '', 'HAKKIMIZDA', '<p>T&uuml;rkiye ve b&ouml;lgesinin lider e-ticaret platformu Hepsiburada olarak, 40&rsquo;a yakın kategoride, 30 milyonu aşkın &uuml;r&uuml;n &ccedil;eşidini m&uuml;şterilerimizle buluşturuyoruz. Silikon Vadisi ile Kapalı &Ccedil;arşı k&uuml;lt&uuml;r&uuml;n&uuml; birleştiren, veri ile tecr&uuml;beyi harmanlayan ekibimizle aylık 200 milyonun &uuml;zerinde ziyaretin ihtiya&ccedil;larını en iyi şekilde karşılamak i&ccedil;in &ccedil;alışmaya devam ediyoruz.</p>\r\n\r\n<p>T&uuml;rkiye&rsquo;nin Hepsiburada&#39;sı olarak, irili ufaklı on binlerce işletmeyi bir araya getiren pazaryeri modelimizle, T&uuml;rkiye ve b&ouml;lgenin en b&uuml;y&uuml;ğ&uuml; olma &ouml;zelliğini taşıyan Akıllı Operasyon Merkezimizle, sekt&ouml;r&uuml;n &ccedil;ıtasını y&uuml;kselten teknolojik &ccedil;alışmaları y&uuml;r&uuml;tt&uuml;ğ&uuml;m&uuml;z Ar-Ge merkezimizle online alışveriş sekt&ouml;r&uuml;n&uuml;n gelişimine liderlik ediyoruz. M&uuml;şteri deneyimini merkeze alan bir felsefeyle, alanında lider kuruluşlarla birlikte yeni proje, yatırım ve iş birliklerine imza atıyoruz. Kurucumuz ve Y&ouml;netim Kurulu Başkanımız Hanzade Doğan Boyner&rsquo;in Hepsiburada&rsquo;nın genlerine işlediği inovasyon ve girişimcilik ruhuyla T&uuml;rkiye&rsquo;de dijital d&ouml;n&uuml;ş&uuml;me &ouml;nc&uuml;l&uuml;k ediyor, t&uuml;m paydaşlarımızla birlikte b&uuml;y&uuml;meyi s&uuml;rd&uuml;r&uuml;yoruz.&nbsp;</p>\r\n\r\n<p>Taşımacılık sekt&ouml;r&uuml;ne yenilik&ccedil;i bakış a&ccedil;ısı kazandıran Hepsijet, dijital &ouml;deme &ccedil;&ouml;z&uuml;mleri sunan HepsiPay,&nbsp; g&uuml;nl&uuml;k haftalık ve aylık s&uuml;permarket ihtiya&ccedil;larını istedikleri zaman diliminde t&uuml;keticilerin ayağına getiren Hepsiexpress, markalara hizmet sağlayan reklam platformumuz HepsiAd, e-ihracat ile işletmelere birer d&uuml;nya oyuncusu olma fırsatı sunduğumuz ve T&uuml;rk &uuml;r&uuml;nlerini d&uuml;nyaya a&ccedil;an Hepsiglobal gibi farklı bir&ccedil;ok servis ile m&uuml;şterilerimiz başta olmak &uuml;zere t&uuml;m paydaşlarımıza fayda sağlayan dev bir ekosistemi hep birlikte inşa ediyoruz.</p>\r\n\r\n<p>Bir teknoloji şirketi olarak; teknolojinin yıkıcı değil, yapıcı g&uuml;c&uuml;ne odaklanıyor, y&uuml;r&uuml;tt&uuml;ğ&uuml;m&uuml;z&nbsp;sosyal sorumluluk projeleriyle de toplumsal gelişime, girişimciliğe ve inovasyona katkıda bulunuyoruz. Bu anlamda Mayıs 2017&rsquo;de başlattığımız ve kadınların ekonomiye katılımını destekleyen&nbsp;Girişimci Kadınlara Teknoloji G&uuml;c&uuml;&nbsp;programıyla kadınlara ek hi&ccedil;bir yatırım yapmadan e-ticarette kendi işlerini kurma ve b&uuml;y&uuml;tme fırsatı sunuyoruz</p>\r\n\r\n<p>Hepsiburada &ldquo;Hepsiglobal&rdquo; e-ihracat atılımıyla da platformdaki işletmeleri, markaları ve kaliteli T&uuml;rk &uuml;r&uuml;nlerini d&uuml;nya pazarlarıyla ve milyonlaca yeni m&uuml;şteri ile buluşturuyor.</p>\r\n\r\n<p>1998 yılında ilk tohumları atılan ve 2001 yılından itibaren Hepsiburada markasıyla T&uuml;rkiye&#39;nin Hepsiburada&#39;sı olarak başladığımız bu yolculukta bug&uuml;n T&uuml;rkiye ve b&ouml;lgesinin en b&uuml;y&uuml;k e-ticaret platformu konumunda olmaktan gurur duyuyoruz. Hindistan&rsquo;ın batısıyla Almanya&rsquo;nın doğusu arasında kalan geniş coğrafyanın en b&uuml;y&uuml;k teknoloji şirketi olma hedefiyle, İstanbul&rsquo;dan 4 saat u&ccedil;ak mesafesinde yer alan&nbsp;1 milyar m&uuml;şteriye hitap edecek dev bir ekosistem&nbsp;olma yolculuğunda yatırım ve &ccedil;alışmalarımıza hız kesmeden devam ediyor, uzun yıllara yayılan bu yolculuğumuzda bize destek veren ve g&uuml;venen milyonlarca m&uuml;şterimize ş&uuml;kranlarımızı sunuyoruz</p>\r\n', 'hakkimizda.php', 2, '1', 'hakkimizda'),
(12, '', 'Satış Sözleşmesi', '<p>UZAK MESAFELİ SATIŞ S&Ouml;ZLEŞMESİ&nbsp;</p>\r\n\r\n<p>T&uuml;keticinin Korunması</p>\r\n\r\n<p>MESAFELİ SATIŞ VE GİZLİLİK S&Ouml;ZLEŞMESİ<br />\r\nMESAFELİ SATIŞ S&Ouml;ZLEŞMESİ<br />\r\nMADDE 1-1 - SATICI</p>\r\n\r\n<p>&Uuml;nvanı</p>\r\n\r\n<p>Ecza Market Official<br />\r\nKadık&ouml;y / İstanbul</p>\r\n\r\n<p>Telefonu0216 450 08 38</p>\r\n\r\n<p>Emailbilgi@eczamarket.net</p>\r\n\r\n<p>Tarih26.10.2020</p>\r\n\r\n<p>MADDE 1-2 - ALICI</p>\r\n\r\n<p>Alıcı :</p>\r\n\r\n<p>Teslimat Adresi :</p>\r\n\r\n<p>MADDE 2 - KONU</p>\r\n\r\n<p>İşbu s&ouml;zleşmenin konusu, ALICI nın (https://eczamarket.net) internet mağazasından siparişini yaptığı yukarıda nitelikleri ve satış fiyatı belirtilen &uuml;r&uuml;nlerin satışı ve teslimi ile ilgili olarak 4077 sayılı T&uuml;keticilerin Korunması Hakkındaki Kanun ve Mesafeli S&ouml;zleşmeleri Uygulama Esas ve Usulleri Hakkında Y&ouml;netmelik h&uuml;k&uuml;mleri gereğince tarafların hak ve y&uuml;k&uuml;ml&uuml;l&uuml;klerinin saptanmasıdır.</p>\r\n\r\n<p>MADDE 3 - S&Ouml;ZLEŞME KONUSU &Uuml;R&Uuml;NLER</p>\r\n\r\n<p>&Uuml;r&uuml;nlerin Cinsi ve t&uuml;r&uuml;, Miktarı, Marka/Modeli, Rengi, Satış Bedeli yukarıda belirtildiği gibidir. &Uuml;r&uuml;n &ouml;zellikleri hakkında daha detaylı bilgiyi, &uuml;zerine tıklayarak alabilirsiniz.</p>\r\n\r\n<p>MADDE 4 - GENEL H&Uuml;K&Uuml;MLER</p>\r\n\r\n<p>4.1- ALICI, https://eczamarket.net internet mağazasında s&ouml;zleşme konusu &uuml;r&uuml;n&uuml;n temel nitelikleri, satış fiyatı ve &ouml;deme şekli ile teslimata ilişkin &ouml;n bilgileri okuyup bilgi sahibi olduğunu ve elektronik ortamda gerekli teyidi verdiğini kabul ve beyan eder.</p>\r\n\r\n<p>4.2- S&ouml;zleşme konusu &uuml;r&uuml;n, yasal 30 g&uuml;nl&uuml;k s&uuml;reyi aşmamak koşulu ile internet mağazasında &ouml;n bilgiler i&ccedil;inde a&ccedil;ıklanan s&uuml;re i&ccedil;inde ALICI nın belirttiği adrese sevkedilir.</p>\r\n\r\n<p>4.3- S&ouml;zleşme konusu &uuml;r&uuml;n, ALICI dan başka bir kişi/kuruluşa teslim edilecek ise, teslim edilecek kişi/kuruluşun teslimatı kabul etmemesininden SATICI sorumlu tutulamaz.</p>\r\n\r\n<p>4.4- SATICI, s&ouml;zleşme konusu &uuml;r&uuml;n&uuml;n sağlam, eksiksiz, siparişte belirtilen niteliklere uygun ve varsa garanti belgeleri ve kullanım kılavuzları ile teslim edilmesinden sorumludur.</p>\r\n\r\n<p>4.5- S&ouml;zleşme konusu &uuml;r&uuml;n&uuml;n teslimatı i&ccedil;in &uuml;r&uuml;n bedelinin ALICI nın tercih ettiği &ouml;deme şekli ile &ouml;denmiş olması şarttır. Herhangi bir nedenle &uuml;r&uuml;n bedeli &ouml;denmez veya banka kayıtlarında iptal edilir ise, SATICI &uuml;r&uuml;n&uuml;n teslimi y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;nden kurtulmuş kabul edilir.</p>\r\n\r\n<p>4.6- &Uuml;r&uuml;n&uuml;n tesliminden sonra ALICI ya ait kredi kartının ALICI nın kusurundan kaynaklanmayan bir şekilde yetkisiz kişilerce haksız veya hukuka aykırı olarak kullanılması nedeni ile ilgili banka veya finans kuruluşun &uuml;r&uuml;n bedelini SATICI ya &ouml;dememesi halinde, ALICI nın kendisine teslim edilmiş olması kaydıyla &uuml;r&uuml;n&uuml;n 3 g&uuml;n i&ccedil;inde SATICI ya g&ouml;nderilmesi zorunludur. Bu takdirde nakliye giderleri ALICI ya aittir.</p>\r\n\r\n<p>4.7- SATICI m&uuml;cbir sebepler veya sevkiyatı engelleyen hava muhalefeti, ulaşımın kesilmesi gibi olağan&uuml;st&uuml; durumlar nedeni ile s&ouml;zleşme konusu &uuml;r&uuml;n&uuml; s&uuml;resi i&ccedil;inde teslim edemez ise, durumu ALICI ya bildirmekle y&uuml;k&uuml;ml&uuml;d&uuml;r. Bu takdirde ALICI siparişin iptal edilmesini, s&ouml;zleşme konusu &uuml;r&uuml;n&uuml;n varsa emsali ile değiştirilmesini, ve/veya teslimat s&uuml;resinin engelleyici durumun ortadan kalkmasına kadar ertelenmesi haklarından birini kullanabilir. ALICI nın siparişi iptal etmesi halinde &ouml;dediği tutar 10 g&uuml;n i&ccedil;inde kendisine nakten ve defaten &ouml;denir.</p>\r\n\r\n<p>4.8- Garanti belgesi ile satılan &uuml;r&uuml;nlerden olan veya olmayan &uuml;r&uuml;nlerin arızalı veya bozuk olanlar, garanti şartları i&ccedil;inde gerekli onarımın yapılması i&ccedil;in SATICI ya g&ouml;nderilebilir, bu takdirde kargo giderleri ALICI tarafından karşılanacaktır.</p>\r\n\r\n<p>4.9- ALICI tarafından belirtilen teslimat adresinin ge&ccedil;ici veya anonim bir mekan (&ouml;rneğin posta kutusu, kargo ofisi, postane gibi) olması durumunda, SATICI, ALICI dan adres d&uuml;zeltmesi talep eder, adres d&uuml;zeltmesi yapılmaması durumunda, SATICI, s&ouml;zleşmeye iptal etmek ve tahsil edilen &uuml;creti iade etmek hakkını saklı tutar.</p>\r\n\r\n<p>MADDE 5 - CAYMA HAKKI</p>\r\n\r\n<p>ALICI, s&ouml;zleşme konusu &uuml;r&uuml;r&uuml;n&uuml;n kendisine veya g&ouml;sterdiği adresteki kişi/kuruluşa tesliminden itibaren 7 g&uuml;n i&ccedil;inde cayma hakkına sahiptir. Cayma hakkının kullanılması i&ccedil;in bu s&uuml;re i&ccedil;inde SATICI ya faks, email veya telefon ile bildirimde bulunulması ve &uuml;r&uuml;n&uuml;n 6. madde h&uuml;k&uuml;mleri &ccedil;ercevesinde kullanılmamış olması şarttır. Bu hakkın kullanılması halinde, 3. kişiye veya ALICI ya teslim edilen &uuml;r&uuml;n&uuml;n SATICI ya g&ouml;nderildiğine ilişkin kargo teslim tutanağı &ouml;rneği ile t&uuml;m fatura asıl n&uuml;shalarının iadesi zorunludur. Bu belgelerin ulaşmasını takip eden 7 g&uuml;n i&ccedil;inde &uuml;r&uuml;n bedeli ALICI ya iade edilir. Cayma hakkı nedeni ile iade edilen &uuml;r&uuml;n&uuml;n kargo bedeli ALICI tarafından karşılanır.</p>\r\n\r\n<p>MADDE 6 - CAYMA HAKKI KULLANILAMAYACAK &Uuml;R&Uuml;NLER</p>\r\n\r\n<p>Niteliği itibarıyla iade edilemeyecek &uuml;r&uuml;nler, tek kullanımlık &uuml;r&uuml;nler, kopyalanabilir yazılım ve programlar, hızlı bozulan veya son kullanım tarihi ge&ccedil;en &uuml;r&uuml;nler i&ccedil;in cayma hakkı kullanılamaz. Aşağıdaki &uuml;r&uuml;nlerde cayma hakkının kullanılması, &uuml;r&uuml;n&uuml;n ambalajının a&ccedil;ılmamış, bozulmamış ve &uuml;r&uuml;n&uuml;n kullanılmamış olması şartına bağlıdır.</p>\r\n\r\n<p>Her t&uuml;rl&uuml; yazılım ve programlar<br />\r\nDVD, VCD, CD ve kasetler<br />\r\nBilgisayar ve kırtasiye sarf malzemeleri (toner, kartuş, şerit v.b)<br />\r\nH&uuml;r t&uuml;rl&uuml; kozmetik &uuml;r&uuml;nleri<br />\r\nNiteliği itibariyle kullanım sırasında cilde veya ağıza temas eden &uuml;r&uuml;nler</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>MADDE 7 - YETKİLİ MAHKEME</p>\r\n\r\n<p>İşbu s&ouml;zleşmenin uygulanmasında, Sanayi ve Ticaret Bakanlığınca ilan edilen değere kadar T&uuml;ketici Hakem Heyetleri ile ALICI nın veya SATICI nın yerleşim yerindeki T&uuml;ketici Mahkemeleri yetkilidir. Siparişin ger&ccedil;ekleşmesi durumunda ALICI işbu s&ouml;zleşmenin t&uuml;m koşullarını kabul etmiş sayılır.</p>\r\n\r\n<p>MADDE 8 - TALEP VE ŞİKAYETLER</p>\r\n\r\n<p>ALICI, talep ve şikayetlerini internet mağazasında belirtilen telefonla yapabilir.</p>\r\n\r\n<p>ALICI, işbu s&ouml;zleşmeyi okuyup bilgi sahibi olduğunu ve elektronik ortamda gerekli teyidi verdiğini kabul ve beyan eder.</p>\r\n\r\n<p>GİZLİLİK S&Ouml;ZLEŞMESİ</p>\r\n\r\n<p>1- &hellip;..(&uuml;r&uuml;n adı)&hellip;.., kullanıcıların https://eczamarket.net sitesi &uuml;zerinden ilettikleri kişisel bilgilerini, Gizlilik Politikası ile belirlenen ama&ccedil;lar ve kapsam dışında, &uuml;&ccedil;&uuml;nc&uuml; kişilere a&ccedil;ıklamayacaktır.</p>\r\n\r\n<p>Kişisel bilgiler, ad soyadı, adresi, telefon numarası, e-posta adresi gibi kullanıcıyı tanımlamaya y&ouml;nelik her t&uuml;rl&uuml; diğer bilgiyi i&ccedil;ermekte olup kısaca Gizli Bilgiler olarak anılacaktır.</p>\r\n\r\n<p>2- Firmamız İşbu Gizlilik Politikası ve Kullanıcı S&ouml;zleşmesinde tanımlı olan haller haricinde kişisel bilgileri herhangi bir şirket veya &uuml;&ccedil;&uuml;nc&uuml; kişilere a&ccedil;ıklamayacaktır. Firmamız, kişisel bilgileri kendi b&uuml;nyesinde, m&uuml;şteri profili belirlemek ve istatistiksel &ccedil;alışmalar yapmak amacıyla kullanabilecektir.</p>\r\n\r\n<p>3- Firmamız, kişisel bilgileri kesinlikle &ouml;zel ve gizli tutmayı, bunu bir sır saklama y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; olarak addetmeyi, gizliliğin sağlanması ve s&uuml;rd&uuml;r&uuml;lmesi, gizli bilginin tamamının veya herhangi bir kısmının kamu alanına girmesini veya yetkisiz kullanımını veya &uuml;&ccedil;&uuml;nc&uuml; bir kişiye ifşasını &ouml;nlemek i&ccedil;in gerekli tedbirleri almayı ve gerekli &ouml;zeni g&ouml;stermeyi taahh&uuml;t etmektedir. Firmamızın gerekli bilgi g&uuml;venliği &ouml;nlemlerini almasına karşın, sitemize ve sisteme yapılan saldırılar sonucunda gizli bilgilerin zarar g&ouml;rmesi veya &uuml;&ccedil;&uuml;nc&uuml; kişilerin eline ge&ccedil;mesi durumunda, firmamızın herhangi bir sorumluluğu olmayacaktır.</p>\r\n\r\n<p>4- Firmamız, kullanıcılara ve kullanıcıların sitemizin kullanımına dair bilgileri, teknik bir iletişim dosyasını (Kurabiye-Cookie) kullanarak elde edebilir. Ancak, kullanıcılar dilerlerse teknik iletişim dosyasının gelmemesi veya teknik iletişim dosyası g&ouml;nderildiğinde ikaz verilmesini sağlayacak bi&ccedil;imde tarayıcı ayarlarını değiştirebilirler.</p>\r\n', '', 5, '1', 'satis-sozlesmesi'),
(13, '', 'İLETİSİM', '', 'iletisim.php', 4, '1', 'iletisim'),
(16, '', 'KATEGORİLER', '', 'kategoriler.php', 1, '1', 'kategoriler');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepet`
--

CREATE TABLE `sepet` (
  `sepet_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urun_adet` int(3) NOT NULL,
  `urun_renk` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis`
--

CREATE TABLE `siparis` (
  `siparis_id` int(11) NOT NULL,
  `siparis_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kullanici_id` int(11) NOT NULL,
  `siparis_no` int(11) DEFAULT NULL,
  `siparis_toplam` float(9,2) NOT NULL,
  `siparis_tip` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `siparis_banka` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `siparis_odeme` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparis`
--

INSERT INTO `siparis` (`siparis_id`, `siparis_zaman`, `kullanici_id`, `siparis_no`, `siparis_toplam`, `siparis_tip`, `siparis_banka`, `siparis_odeme`) VALUES
(410843621, '2021-01-09 17:41:59', 2, NULL, 14865.64, 'Banka Havalesi', 'ZİRAAT BANKASI', '0'),
(410843622, '2021-01-09 17:45:00', 4, NULL, 5339.50, 'Banka Havalesi', 'HALK BANKASI', '0'),
(410843623, '2021-01-10 14:22:16', 2, NULL, 22593.46, 'Banka Havalesi', 'HALK BANKASI', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis_detay`
--

CREATE TABLE `siparis_detay` (
  `siparisdetay_id` int(11) NOT NULL,
  `siparis_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urun_fiyat` float(9,2) NOT NULL,
  `urun_adet` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparis_detay`
--

INSERT INTO `siparis_detay` (`siparisdetay_id`, `siparis_id`, `urun_id`, `urun_fiyat`, `urun_adet`) VALUES
(68, 410843621, 14, 9299.00, 1),
(69, 410843621, 3, 3299.00, 1),
(70, 410843622, 18, 229.00, 1),
(71, 410843622, 19, 2148.00, 2),
(72, 410843623, 11, 16999.00, 1),
(73, 410843623, 19, 2148.00, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `slider_resimyol` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_sira` int(2) NOT NULL,
  `slider_link` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_ad`, `slider_resimyol`, `slider_sira`, `slider_link`, `slider_durum`) VALUES
(5, 'star wars', 'dimg/slider/31499284212794929749slide-3.jpg', 1, 'https://www.hepsiburada.com/kampanyalar/star-wars-urunlerinde-kacirilmayacak-firsatlar', '1'),
(6, 'Kacmaz Süper Fiyat', 'dimg/slider/30334227092115024939slide-4.jpg', 4, 'https://www.hepsiburada.com/kampanyalar/telefon-aksesuarlarinda-aninda-indirim', '1'),
(18, 'Kacmaz Fiyat', 'dimg/slider/20233306853062529801slide-9.jpg', 3, 'https://www.hepsiburada.com/dort-dortluk-kampanya', '1'),
(23, 'Apple', 'dimg/slider/26403252482458122785slide-11.jpg', 0, 'https://www.hepsiburada.com/staticpage/438781746301488', '1'),
(24, 'Kış Lastik', 'dimg/slider/24715314912732922713slide-12.jpg', 1, 'https://www.hepsiburada.com/kampanyalar/michelin-lastiklerde-firsatlar', '1'),
(25, '2021', 'dimg/slider/21942228502862824008slide-16.jpg', 0, 'https://www.hepsiburada.com/kampanyalar/elektrik-ve-aydinlatma-urunlerinde-kacirilmayacak-firsatlar', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun`
--

CREATE TABLE `urun` (
  `urun_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `urun_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `urun_ad` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_bilgisi` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `urun_fiyat` float(9,2) NOT NULL,
  `urun_video` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `urun_keyword` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_stok` int(11) NOT NULL,
  `urun_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL,
  `urun_onecikar` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urun`
--

INSERT INTO `urun` (`urun_id`, `kategori_id`, `urun_zaman`, `urun_ad`, `urun_bilgisi`, `urun_seourl`, `urun_detay`, `urun_fiyat`, `urun_video`, `urun_keyword`, `urun_stok`, `urun_durum`, `urun_onecikar`) VALUES
(3, 2, '2020-11-09 10:02:46', 'Xiaomi Redmi Note 9 Pro 128 GB', 'eski', 'xiaomi-redmi-note-9-pro-128-gb', '<p><strong>Dahili Hafıza 128 GB</strong></p>\r\n\r\n<p><strong>Ekran Boyut Aralığı 6 in&ccedil; ve &Uuml;zeri</strong></p>\r\n\r\n<p><strong>Ekran Boyutu 6,67 in&ccedil;</strong></p>\r\n\r\n<p><strong>Ekran &Ccedil;&ouml;z&uuml;n&uuml;rl&uuml;ğ&uuml; 1080 x 2400</strong></p>\r\n\r\n<p><strong>Garanti Tipi Resmi Distrib&uuml;t&ouml;r Garantili</strong></p>\r\n\r\n<p><strong>Kamera &Ccedil;&ouml;z&uuml;n&uuml;rl&uuml;ğ&uuml; Aralığı 20 MP ve &Uuml;zeri</strong></p>\r\n\r\n<p><strong>Kamera &Ccedil;&ouml;z&uuml;n&uuml;rl&uuml;ğ&uuml; 64 MP + 8 MP + 5 MP + 2 MP</strong></p>\r\n\r\n<p><strong>&Ouml;n (Selfie) Kamera Aralığı14 - 19,9 MP</strong></p>\r\n\r\n<p><strong>&Ouml;n (Selfie) Kamera16 MP</strong></p>\r\n\r\n<p><strong>Parmak İzi Okuyucu Var</strong></p>\r\n\r\n<p><strong>Pil G&uuml;c&uuml; Aralığı 5000 mAh ve &Uuml;zeri</strong></p>\r\n\r\n<p><strong>Pil G&uuml;c&uuml; 5020 mAh</strong></p>\r\n\r\n<p><strong>RAM Kapasitesi 6 GB RAM</strong></p>\r\n\r\n<p><strong>Şarj GirişiType-C</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://productimages.hepsiburada.net/s/39/1500/10607327051826.jpg\" style=\"height:150px; width:150px\" /></p>\r\n', 3299.00, 'Wyel65mOdXo', 'Xiaomi Redmi Note 9 Pro 128 GB', 1500, '1', '0'),
(10, 9, '2020-11-09 11:46:16', 'MSI GF63 TR', 'yeni', 'msi-gf63-tr', '<p><strong>MSI GF63 Thin 9SCSR-1053XTR</strong></p>\r\n\r\n<p><strong>Intel Core i5 9300H</strong></p>\r\n\r\n<p><strong>8GB 256GB SSD</strong></p>\r\n\r\n<p><strong>GTX 1650Ti</strong></p>\r\n\r\n<p><strong>Freedos 15.6&quot; FHD</strong></p>\r\n\r\n<p><strong>Taşınabilir Bilgisayar</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://productimages.hepsiburada.net/s/45/1500/10833194844210.jpg\" style=\"height:150px; width:150px\" /></p>\r\n', 8799.00, 'XD5tcy6MPWQ', 'MSI GF63 Thin 9SCSR-1053XTR', 8, '1', '0'),
(11, 9, '2020-11-09 11:47:37', 'Asus Zephyrus ', 'yeni', 'asus-zephyrus', '<p><strong>Asus Zephyrus G14 GA401IV-HA037</strong></p>\r\n\r\n<p><strong>AMD Ryzen R9 4900HS</strong></p>\r\n\r\n<p><strong>16GB 1TB SSD</strong></p>\r\n\r\n<p><strong>GeForce RTX 2060</strong></p>\r\n\r\n<p><strong>Freedos 14&quot; QHD</strong></p>\r\n\r\n<p><strong>Taşınabilir Bilgisayarz.</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://productimages.hepsiburada.net/s/38/500/10577769398322.jpg\" style=\"height:150px; width:150px\" /></p>\r\n', 16999.00, '5xXPq1y5n3g', 'Asus Zephyrus G14 GA401IV-HA037 ', 10, '1', '0'),
(14, 9, '2020-11-18 18:47:31', 'Lenovo IdeaPad Gaming', '', 'lenovo-ideapad-gaming', '<p><strong>Lenovo IdeaPad Gaming 3</strong></p>\r\n\r\n<p><strong>Intel Core i5 10300H</strong></p>\r\n\r\n<p><strong>16GB 512GB SSD</strong></p>\r\n\r\n<p><strong>GTX1650Ti FreeDos</strong></p>\r\n\r\n<p><strong>15.6&quot; FHD</strong></p>\r\n\r\n<p><strong>Taşınabilir Bilgisayar 81Y400LQTX</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://productimages.hepsiburada.net/s/42/500/10728874377266.jpg\" style=\"height:150px; width:150px\" /></p>\r\n', 9299.00, '0So-f5jtaqg', 'Lenovo IdeaPad Gaming 3 ', 5, '1', '1'),
(15, 9, '2020-12-07 07:29:13', 'Casper Excalibur', '', 'casper-excalibur', '<p><strong>Casper Excalibur G770.1030-B1H0X</strong></p>\r\n\r\n<p><strong>Intel Core i5 10300H</strong></p>\r\n\r\n<p><strong>16GB 1TB + 128GB SSD</strong></p>\r\n\r\n<p><strong>GTX1650 FreeDos</strong></p>\r\n\r\n<p><strong>15.6&quot; FHD</strong></p>\r\n\r\n<p><strong>Taşınabilir Bilgisayar</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://productimages.hepsiburada.net/s/40/1500/10667436671026.jpg\" style=\"height:150px; width:150px\" /></p>\r\n', 8399.00, 'qdPpLENWSSA', 'Casper Excalibur G770.1030-B1H0X', 1, '1', '1'),
(16, 2, '2020-12-08 11:25:49', 'Xiaomi Mi Note 10 Lite 128 GB ', '', 'xiaomi-mi-note-10-lite-128-gb', '<p><strong>Xiaomi Mi Note 10 Lite 128 GB (Xiaomi T&uuml;rkiye Garantiili)</strong></p>\r\n\r\n<p><strong>Ağırlık 204 g</strong></p>\r\n\r\n<p><strong>Dahili Hafıza 128 GB</strong></p>\r\n\r\n<p><strong>Ekran Boyutu 6,47 in&ccedil;</strong></p>\r\n\r\n<p><strong>Ekran &Ccedil;&ouml;z&uuml;n&uuml;rl&uuml;ğ&uuml; 1080 x 2340</strong></p>\r\n\r\n<p><strong>Ekran Tipi AMOLED</strong></p>\r\n\r\n<p><strong>Garanti Tipi Resmi Distrib&uuml;t&ouml;r Garantili</strong></p>\r\n\r\n<p><strong>İşlemci Kapasitesi 2,2 GHz Dual Core + 1,8 GHz Hexa Core</strong></p>\r\n\r\n<p><strong>Kamera &Ccedil;&ouml;z&uuml;n&uuml;rl&uuml;ğ&uuml; Aralığı 20 MP ve &Uuml;zeri</strong></p>\r\n\r\n<p><strong>Kamera &Ccedil;&ouml;z&uuml;n&uuml;rl&uuml;ğ&uuml; 64 MP + 8 MP + 2 MP + 2 MP</strong></p>\r\n\r\n<p><strong>&Ouml;n (Selfie) Kamera 16 MP</strong></p>\r\n\r\n<p><strong>Pil G&uuml;c&uuml; 5260 mAh</strong></p>\r\n\r\n<p><strong>RAM Kapasitesi 6 GB RAM</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://productimages.hepsiburada.net/s/39/1500/10607326527538.jpg\" style=\"height:150px; width:150px\" /><img alt=\"\" src=\"https://productimages.hepsiburada.net/s/39/500/10607326560306.jpg\" style=\"height:150px; width:150px\" /></strong></p>\r\n', 3719.00, 'KgalEZXojqQ', 'Xiaomi Mi Note 10 Lite 128 GB', 1500, '1', '0'),
(17, 2, '2020-12-08 11:54:54', 'Samsung Galaxy M51 128 GB', '', 'samsung-galaxy-m51-128-gb', '<p><strong>Samsung Galaxy M51 128 GB (Samsung T&uuml;rkiye Garantili)</strong></p>\r\n\r\n<p><strong>Ağırlık 213 g</strong></p>\r\n\r\n<p><strong>Dahili Hafıza128 GB</strong></p>\r\n\r\n<p><strong>Ekran Boyutu 6,7 in&ccedil;</strong></p>\r\n\r\n<p><strong>Ekran Tipi S&uuml;per AMOLED</strong></p>\r\n\r\n<p><strong>Garanti Tipi Resmi Distrib&uuml;t&ouml;r Garantili</strong></p>\r\n\r\n<p><strong>Kamera &Ccedil;&ouml;z&uuml;n&uuml;rl&uuml;ğ&uuml; Aralığı 20 MP ve &Uuml;zeri</strong></p>\r\n\r\n<p><strong>Kamera &Ccedil;&ouml;z&uuml;n&uuml;rl&uuml;ğ&uuml; 64 MP + 12 MP + 5 MP + 5 MP</strong></p>\r\n\r\n<p><strong>&Ouml;n (Selfie) Kamera Aralığı 20 MP ve &Uuml;zeri</strong></p>\r\n\r\n<p><strong>&Ouml;n (Selfie) Kamera 32 MP</strong></p>\r\n\r\n<p><strong>Parmak İzi OkuyucuVar</strong></p>\r\n\r\n<p><strong>Pil G&uuml;c&uuml; 7000 mAh</strong></p>\r\n\r\n<p><strong>Pil T&uuml;r&uuml; Li-Poly</strong></p>\r\n\r\n<p><strong>RAM Kapasitesi 8 GB RAM</strong></p>\r\n\r\n<p><strong>Şarj Girişi Type-C</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://media.flixcar.com/f360cdn/Samsung-73138340-tr-feature-comfortable-design-that-shines-297475028FB_TYPE_A_JPG.jpg\" style=\"height:150px; width:274px\" /></strong></p>\r\n', 3599.00, 'https://youtu.be/PfW73h03eDw', 'Samsung Galaxy M51 128 GB', 1000, '1', '1'),
(18, 3, '2020-12-08 12:07:28', 'Haylou Solar LS05', '', 'haylou-solar-ls05', '<p><strong>Haylou Solar LS05 Akıllı Saat - IP68 - Siyah - (Android ve iPhone Uyumlu)</strong></p>\r\n\r\n<p><strong>Adımsayar Var</strong></p>\r\n\r\n<p><strong>Cinsiyet Erkek</strong></p>\r\n\r\n<p><strong>GPS (K&uuml;resel Konumlama Sistemi) Yok</strong></p>\r\n\r\n<p><strong>İşletim T&uuml;r&uuml; Standart</strong></p>\r\n\r\n<p><strong>Kalp Ritmi &Ouml;l&ccedil;me Var</strong></p>\r\n\r\n<p><strong>Kamera Yok</strong></p>\r\n\r\n<p><strong>Sesli G&ouml;r&uuml;şmeYok</strong></p>\r\n\r\n<p><strong>Su Ge&ccedil;irmezlik Var</strong></p>\r\n\r\n<p><strong>Titreşim Var</strong></p>\r\n\r\n<p><strong>Uyku Takibi Var</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://productimages.hepsiburada.net/s/40/500/10661665013810.jpg\" style=\"height:150px; width:150px\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', 229.00, 'nzW0RUM7ce0', 'Haylou Solar LS05 Akıllı Saat - IP68 - Siyah', 1000, '1', '1'),
(19, 3, '2020-12-08 12:11:37', 'Huawei Watch GT2 Pro', '', 'huawei-watch-gt2-pro', '<p><strong>Huawei Watch GT2 Pro 46mm Akıllı Saat - Siyah</strong></p>\r\n\r\n<p><strong>Adımsayar Var</strong></p>\r\n\r\n<p><strong>Cinsiyet Erkek</strong></p>\r\n\r\n<p><strong>GPS (K&uuml;resel Konumlama Sistemi) Var</strong></p>\r\n\r\n<p><strong>Kalp Ritmi &Ouml;l&ccedil;me Var</strong></p>\r\n\r\n<p><strong>Kamera Yok</strong></p>\r\n\r\n<p><strong>Sesli G&ouml;r&uuml;şme Var</strong></p>\r\n\r\n<p><strong>Su Ge&ccedil;irmezlik Var</strong></p>\r\n\r\n<p><strong>Titreşim Var</strong></p>\r\n\r\n<p><strong>Uyku Takibi Var</strong></p>\r\n\r\n<p><strong>Uyumlu Marka Huawei</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://productimages.hepsiburada.net/s/43/500/10770299846706.jpg\" style=\"height:150px; width:150px\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 2148.00, 'LjSfFdBRAKg', 'Huawei Watch GT2 Pro 46mm Akıllı Saat - Siyah', 100, '1', '1'),
(20, 3, '2020-12-08 12:16:16', 'Apple Watch 6 GPS Space Gray ', '', 'apple-watch-6-gps-space-gray', '<p><strong>Apple Watch Seri 6 44mm GPS Space Gray Al&uuml;minyum Kasa ve Siyah Spor Kordon M00H3TU/A</strong></p>\r\n\r\n<p><strong>Adımsayar Var</strong></p>\r\n\r\n<p><strong>Cinsiyet Erkek, Kadın</strong></p>\r\n\r\n<p><strong>GPS (K&uuml;resel Konumlama Sistemi) Var</strong></p>\r\n\r\n<p><strong>Kalp Ritmi &Ouml;l&ccedil;me Var</strong></p>\r\n\r\n<p><strong>Kamera Yok</strong></p>\r\n\r\n<p><strong>Sesli G&ouml;r&uuml;şme Var</strong></p>\r\n\r\n<p><strong>Su Ge&ccedil;irmezlik Var</strong></p>\r\n\r\n<p><strong>Titreşim Var</strong></p>\r\n\r\n<p><strong>Uyku Takibi Var</strong></p>\r\n\r\n<p><strong>Uyumlu Marka Apple</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://productimages.hepsiburada.net/s/44/1500/10807140843570.jpg\" style=\"height:150px; width:150px\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', 4194.00, 'd-V78rURbWg', 'Apple Watch Seri 6 44mm GPS Space Gray Alüminyum Kasa ve Siyah Spor Kordon M00H3TU/A', 10, '1', '0'),
(21, 4, '2020-12-08 12:23:00', 'Sony DSC-HX400V', '', 'sony-dsc-hx400v', '<p><strong>Sony DSC-HX400V Dijital Fotoğraf Makinesi</strong></p>\r\n\r\n<p><strong>20,4 MP Exmor R&reg; CMOS sens&ouml;r</strong></p>\r\n\r\n<p><strong>&Uuml;st&uuml;n ayrıntılar ve g&uuml;r&uuml;lt&uuml; azaltma i&ccedil;in BIONZ X motor</strong></p>\r\n\r\n<p><strong>ZEISS&reg; Vario-Sonnar&reg; T* 50x optik zoom lensi</strong></p>\r\n\r\n<p><strong>PlayMemories Camera Apps yaratıcılığı zenginleştirir</strong></p>\r\n\r\n<p><strong>Optical SteadyShot ve Optical SteadyShot Intelligent Active Modları</strong></p>\r\n\r\n<p><strong>1/2,3 tipi (7,82 mm) Exmor R&reg; CMOS sens&ouml;r</strong></p>\r\n\r\n<p><strong>20,4 MP</strong></p>\r\n\r\n<p><strong>ISO 80-12800</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://productimages.hepsiburada.net/s/19/1500/9853222879282.jpg\" style=\"height:150px; width:150px\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', 5032.00, 'tMGGKqd_S2c', 'Sony DSC-HX400V Dijital Fotoğraf Makinesi', 25, '1', '0'),
(22, 5, '2020-12-08 12:28:46', 'Sony Playstation 5 Oyun Konsolu', '', 'sony-playstation-5-oyun-konsolu', '<p>Sony Playstation 5 Oyun Konsolu (Eurasia garantili)</p>\r\n\r\n<p><strong>İşlemci :</strong></p>\r\n\r\n<p>x86-64-AMD Ryzen&trade; &ldquo;Zen 2&rdquo;&nbsp;</p>\r\n\r\n<p>8 &Ccedil;ekirdek / 16 Threads</p>\r\n\r\n<p>3.5GHz&rsquo;e kadar değişken frekans hızı</p>\r\n\r\n<p><strong>Grafik İşlemci / GPU:</strong></p>\r\n\r\n<p>AMD Radeon&trade; RDNA 2-temelli grafik kartı</p>\r\n\r\n<p>Ray Tracing Hızlandırıcı</p>\r\n\r\n<p>2.23 GHz&rsquo;e kadar değişken frekans (10.3 TFLOPS)</p>\r\n\r\n<p><strong>Sistem Belleği:</strong></p>\r\n\r\n<p>GDDR6 16GB</p>\r\n\r\n<p>448GB/s Bant genişliği</p>\r\n\r\n<p><strong>SSD :</strong></p>\r\n\r\n<p>825GB</p>\r\n\r\n<p>5.5GB/s Okuma Bant Genişliği (Ham/Raw)</p>\r\n\r\n<p><strong>Ağırlık:</strong></p>\r\n\r\n<p>PS5: 4.5kg</p>\r\n\r\n<p><img alt=\"\" src=\"https://productimages.hepsiburada.net/s/44/1500/10807348690994.jpg\" style=\"height:150px; width:150px\" /></p>\r\n', 12499.00, 'sSOqGtul_uU', 'Sony Playstation 5 Oyun Konsolu (Eurasia garantili)', 2000, '1', '0'),
(23, 5, '2020-12-08 12:34:16', 'Sony Playstation 4 Pro 1 TB Oyun Konsol', '', 'sony-playstation-4-pro-1-tb-oyun-konsol', '<p>Sony Playstation 4 Pro 1 TB Oyun Konsol - T&uuml;rk&ccedil;e Men&uuml; (CUH-7216B)</p>\r\n\r\n<p><strong>PlayStation 4 Pro (PS4 Pro)</strong></p>\r\n\r\n<p>&ldquo;D&uuml;nyanın en g&uuml;&ccedil;l&uuml; konsolu&rdquo; olarak tanıtılan ve uzun s&uuml;redir merakla beklenen PS4 Pro, sonunda oyunseverlerin beğenisine sunuldu. 2013 yılında Sony tarafından piyasaya &ccedil;ıkarılan PS4&rsquo;&uuml;n geliştirilmiş versiyonu olarak kabul edilen PS4 Pro, y&uuml;ksek g&uuml;&ccedil;l&uuml; donanım ile bir&ccedil;ok yeni &ouml;zelliği de beraberinde getiriyor. Tecr&uuml;beyi inanılmaz bir ayrıntı seviyesine ve ger&ccedil;ek&ccedil;iliğe taşıyor.</p>\r\n\r\n<p><strong>Neslinin En Yenisi, En &Ccedil;ekicisi</strong></p>\r\n\r\n<p>&Ouml;nceki PlayStation modellerinde de bulunan yatay g&ouml;vde tasarımını devam ettiren PS4 Pro, g&uuml;&ccedil; ve sağlamlığı simgeleyen &uuml;&ccedil; blok katman g&ouml;vdesini de koruyor. Paylaşımlı oyun, uzaktan oynatma, geliştirilmiş wifi ile hızlı ve sorunsuz bağlantı se&ccedil;enekleri sunuluyor. Bir &ouml;nceki modele g&ouml;re 1.2 kg daha ağır olan ve yaklaşık 3.3 kg olarak tasarlanan PS4 Pro, yeni bir konsol nesli olmasa da PS4 ile bir sonraki nesil arasında değerli bir k&ouml;pr&uuml; işlevi &uuml;stleniyor.</p>\r\n\r\n<p><strong>Yeni Bir &Ccedil;ağa A&ccedil;ılan Kapı</strong></p>\r\n\r\n<p>Sony&rsquo;nin 4K teknolojisini konsollarla buluşturan PS4 Pro &ouml;zellikleri ile yeni bir d&ouml;nem başlatıyor denilebilir; &ccedil;&uuml;nk&uuml; ilk kez bir oyun konsolu 4K &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;ğ&uuml; destekliyor. Full HD g&ouml;r&uuml;nt&uuml; kalitesinin 4 katı anlamına gelen 4K ile uyumluluk i&ccedil;in de PS4 Pro i&ccedil;in &ccedil;ıkan b&uuml;t&uuml;n oyunlar 4K&rsquo;yı destekleyecek. Kısacası PS4 Pro oyunları i&ccedil;in g&ouml;r&uuml;nt&uuml; kalitesi ve ayrıntıların &ccedil;eşitliliği bakımından altın &ccedil;ağın kapılarıa&ccedil;ılıyor.</p>\r\n\r\n<p><img alt=\"\" src=\"https://productimages.hepsiburada.net/s/25/500/10109651812402.jpg\" style=\"height:150px; width:150px\" /></p>\r\n', 4299.00, 'KDez8Y939PU', 'Sony Playstation 4 Pro 1 TB Oyun Konsol - Türkçe Menü (CUH-7216B)', 3000, '1', '0'),
(24, 5, '2020-12-08 12:43:28', 'Microsoft Xbox Oyun Konsolu Siyah 1 TB', '', 'microsoft-xbox-oyun-konsolu-siyah-1-tb', '<p><strong>Microsoft Xbox Series X Oyun Konsolu Siyah 1 TB</strong></p>\r\n\r\n<p><strong>3,6 GHz Hızında 8X &Ccedil;ekirdek (SMT ile 3,4 GHz) &Ouml;zel</strong></p>\r\n\r\n<p><strong>2,4 GB/sn (Ham), 4,8 GB/sn</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://productimages.hepsiburada.net/s/44/1500/10769310908466.jpg\" style=\"height:150px; width:150px\" /></p>\r\n', 8199.00, '7KiUvNVWMSs', 'Microsoft Xbox Series X Oyun Konsolu Siyah 1 TB', 1, '1', '0'),
(25, 7, '2020-12-08 12:52:20', 'Samsung 127 Ekran Smart LED TV', '', 'samsung-127-ekran-smart-led-tv', '<p><strong>Samsung UE50TU7000UXTK 50&quot; 127 Ekran Uydu Alıcılı 4K Ultra HD Smart LED TV</strong></p>\r\n\r\n<p><strong>KRISTAL EKRAN</strong></p>\r\n\r\n<p>Kendinizi daha geniş bir renk yelpazesine sahip resmin i&ccedil;ine bırakın. Kristal Ekran, optimize edilmiş renk ifadesi ile her detayı g&ouml;rebilmenizi sağlar.</p>\r\n\r\n<p><strong>G&uuml;&ccedil;l&uuml; renk kalitesi</strong></p>\r\n\r\n<p><strong>4K KRISTAL İŞLEMCI</strong></p>\r\n\r\n<p>Rengi ayarlayan, y&uuml;ksek kontrast oranını optimize eden ve HDR g&ouml;r&uuml;nt&uuml; sağlayan tek bir &ccedil;ipin sağladığı ilham verici g&ouml;r&uuml;nt&uuml; kalitesi.</p>\r\n\r\n<p><strong>TV&rsquo;yi değil g&ouml;r&uuml;nt&uuml;y&uuml; izleyin</strong></p>\r\n\r\n<p><strong>3 TARAFLI &Ccedil;ER&Ccedil;EVESIZ TASARIM</strong></p>\r\n\r\n<p>Şık ve zarif tasarımı size kusursuz resimler sunar. Her a&ccedil;ıdan rahatlıkla izlenebilen sınırsız ve minimalist tarzdaki tasarımı standartları yeniden belirlemektedir. Şimdiye kadar sunduğumuz en s&uuml;r&uuml;kleyici sinematik deneyimi yaşayacaksınız.</p>\r\n\r\n<p><strong>Ger&ccedil;ek 4K UHD &Ccedil;&ouml;z&uuml;n&uuml;rl&uuml;ğ&uuml; hissedin</strong></p>\r\n\r\n<p><strong>4K &Ccedil;&Ouml;Z&Uuml;N&Uuml;RL&Uuml;K</strong></p>\r\n\r\n<p>4K UHD TV, sıradan bir FHD&rsquo;den 4 kat daha fazla piksele sahiptir, bu sayede g&ouml;zlerinizin hak ettiği keskin ve parlak g&ouml;r&uuml;nt&uuml;y&uuml; sunar. G&ouml;r&uuml;nt&uuml;y&uuml; sanki ger&ccedil;ekten sahnedeymiş g&ouml;r&uuml;rs&uuml;n&uuml;z.</p>\r\n\r\n<p><strong>Yeni bir home office</strong></p>\r\n\r\n<p><strong>UZAKTAN ERIŞIM</strong></p>\r\n\r\n<p>Evde TV&#39;nizden ofis işlerinizi yapın. Uzaktan Erişim, bilgisayarınızın ekranını TV ekranına kablosuz olarak yansıtmanıza olanak tanır. Microsoft Office 365 kullanarak dosyalara erişmek veya belgeler &uuml;zerinde &ccedil;alışmak i&ccedil;in ofis bilgisayarınıza bile dokunabilir ve bunların hepsini koltuğunuzun rahatlıkla yapabilirsiniz.</p>\r\n\r\n<p><strong>Tek uzaktan kumandayla &ccedil;eşitli i&ccedil;erikler bulun</strong></p>\r\n\r\n<p><strong>SMART HUB VE TEK KUMANDA &Ouml;ZELLIĞI</strong></p>\r\n\r\n<p>Farklı t&uuml;rdeki pek &ccedil;ok i&ccedil;eriği keşfetmeniz i&ccedil;in tek ihtiyacınız olan bir uzaktan kumanda. Tek bir kumanda ile oyun konsolunuzu, uygulamaları ve hatta TV uydu alıcınızı kontrol edebilirsiniz.</p>\r\n\r\n<p><img alt=\"\" src=\"https://productimages.hepsiburada.net/s/44/500/10803535183922.jpg\" style=\"height:150px; width:150px\" /></p>\r\n', 4889.00, 'yhCbMELv92o', 'Samsung UE50TU7000UXTK 50', 250, '1', '0'),
(26, 7, '2020-12-08 12:56:38', 'Philips 146 Ekran  Ultra HD TV', '', 'philips-146-ekran-ultra-hd-tv', '<p><strong>Philips 58PUS8505 58&#39;&#39; 146 Ekran Uydu Alıcılı 4K Ultra HD Android Smart LED TV</strong></p>\r\n\r\n<p><strong>Ambilight Var</strong></p>\r\n\r\n<p><strong>Curved (Kavisli) Hayır</strong></p>\r\n\r\n<p><strong>&Ccedil;&ouml;z&uuml;n&uuml;rl&uuml;k (Piksel) 3840 x 2160</strong></p>\r\n\r\n<p><strong>&Ccedil;&ouml;z&uuml;n&uuml;rl&uuml;k 4K Ultra HD</strong></p>\r\n\r\n<p><strong>Dahili Uydu Alıcı Var</strong></p>\r\n\r\n<p><strong>Ekran Ebatı 58 in&ccedil; / 147 cm</strong></p>\r\n\r\n<p><strong>Ekran Formatı16:9</strong></p>\r\n\r\n<p><strong>Garanti Tipi Philips Garantili</strong></p>\r\n\r\n<p><strong>G&ouml;r&uuml;nt&uuml; Teknolojisi LED</strong></p>\r\n\r\n<p><strong>HDMI 2.1 Var</strong></p>\r\n\r\n<p><strong>HDMI Girişleri 4</strong></p>\r\n\r\n<p><strong>HDR Var</strong></p>\r\n\r\n<p><strong>İşletim Sistemi Android</strong></p>\r\n\r\n<p><strong>Model Yılı 2020</strong></p>\r\n\r\n<p><strong>Renk Gri</strong></p>\r\n\r\n<p><strong>Scart Yok</strong></p>\r\n\r\n<p><strong>Smart TV Var</strong></p>\r\n\r\n<p><strong>Wi-Fi Var</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://productimages.hepsiburada.net/s/41/500/10685730291762.jpg\" style=\"height:150px; width:150px\" /></strong></p>\r\n', 6499.00, '', 'Philips 58PUS8505 58\'\' 146 Ekran Uydu Alıcılı 4K Ultra HD Android Smart LED TV', 35, '1', '0'),
(27, 11, '2020-12-08 13:02:57', 'Canon Pixma  Mürekkep Püskürtmeli Yazıcı', '', 'canon-pixma-murekkep-puskurtmeli-yazici', '<p><strong>Canon Pixma E304 Airprint +Wifi M&uuml;rekkep P&uuml;sk&uuml;rtmeli Yazıcı</strong></p>\r\n\r\n<p><strong>A3 Yok</strong></p>\r\n\r\n<p><strong>Air Print Var</strong></p>\r\n\r\n<p><strong>Baskı Kalitesi (Renkli) 4800 x 1200 DPI</strong></p>\r\n\r\n<p><strong>Baskı Kalitesi (Siyah) 4800 x 1200 DPI</strong></p>\r\n\r\n<p><strong>Baskı T&uuml;r&uuml; Renkli</strong></p>\r\n\r\n<p><strong>Dakikadaki Renkli Baskı Hızı(Max) 4 Sayfa</strong></p>\r\n\r\n<p><strong>Dakikadaki Siyah/Beyaz Baskı Hızı(Max) 8 Sayfa</strong></p>\r\n\r\n<p><strong>Dublex Baskı Yok</strong></p>\r\n\r\n<p><strong>Ethernet Bağlantısı Var</strong></p>\r\n\r\n<p><strong>Faks &Ouml;zelliği Yok</strong></p>\r\n\r\n<p><strong>Fotoğraf Baskısı Var</strong></p>\r\n\r\n<p><strong>Fotokopi &Ouml;zelliği Yok</strong></p>\r\n\r\n<p><strong>Kağıt Boyutları A4</strong></p>\r\n\r\n<p><strong>Kağıt Giriş Kapasitesi 60 Sayfa</strong></p>\r\n\r\n<p><strong>Kartuş / Toner Adedi 2</strong></p>\r\n\r\n<p><strong>Renkli TaramaYok</strong></p>\r\n\r\n<p><strong>Sarf Durumu (Kutudaki)Tam Dolu Kartuş</strong></p>\r\n\r\n<p><strong>Tarama &Ccedil;&ouml;z&uuml;n&uuml;rl&uuml;ğ&uuml; Yok</strong></p>\r\n\r\n<p><strong>Tarayıcı &Ouml;zelliği Yok</strong></p>\r\n\r\n<p><strong>Usb Kablo Yok</strong></p>\r\n\r\n<p><strong>USB Var</strong></p>\r\n\r\n<p><strong>Wi-Fi Var</strong></p>\r\n\r\n<p><strong>Yazıcı Tipi Tek Fonksiyonlu</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://productimages.hepsiburada.net/s/26/1500/10165933211698.jpg\" style=\"height:150px; width:150px\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', 519.00, '', 'Canon Pixma E304 Airprint +Wifi Mürekkep Püskürtmeli Yazıcı', 465, '1', '0'),
(28, 11, '2020-12-08 13:08:13', 'Epson Fotokopi-Tarayıcı Mürekkep Tanklı Yazıcı', '', 'epson-fotokopi-tarayici-murekkep-tankli-yazici', '<p><strong>Epson L3110 Ecotank Fotokopi-Tarayıcı M&uuml;rekkep Tanklı Yazıcı (C11CG87401)</strong></p>\r\n\r\n<p><strong>A3 Yok</strong></p>\r\n\r\n<p><strong>Ağırlık (kg) 3,9</strong></p>\r\n\r\n<p><strong>Air Print Yok</strong></p>\r\n\r\n<p><strong>Baskı Kalitesi (Renkli) 5760 x 1440 DPI</strong></p>\r\n\r\n<p><strong>Baskı Kalitesi (Siyah) 5760 x 1440 DPI</strong></p>\r\n\r\n<p><strong>Baskı T&uuml;r&uuml; Renkli</strong></p>\r\n\r\n<p><strong>Bit Değeri 48 Bit</strong></p>\r\n\r\n<p><strong>Boyutlar 375&lrm; x 347 x 179 mm</strong></p>\r\n\r\n<p><strong>Dakikadaki Renkli Baskı Hızı(Max) 5 Sayfa</strong></p>\r\n\r\n<p><strong>Dakikadaki Siyah/Beyaz Baskı Hızı(Max) 10 Sayfa</strong></p>\r\n\r\n<p><strong>Dublex Baskı Yok</strong></p>\r\n\r\n<p><strong>Fotoğraf BaskısI Var</strong></p>\r\n\r\n<p><strong>Fotokopi &Ouml;zelliği Var</strong></p>\r\n\r\n<p><strong>Kağıt Boyutları A4, A5, A6, B5, C6</strong></p>\r\n\r\n<p><strong>Kağıt &Ccedil;ıkış Kapasitesi 30 Sayfa</strong></p>\r\n\r\n<p><strong>Kağıt Giriş Kapasitesi 100 Sayfa</strong></p>\r\n\r\n<p><strong>Kart Okuyucu Yok</strong></p>\r\n\r\n<p><strong>Kartuş / Toner Adedi 4</strong></p>\r\n\r\n<p><strong>Paralel Port Yok</strong></p>\r\n\r\n<p><strong>Renkli Tarama Var</strong></p>\r\n\r\n<p><strong>Sarf Durumu (Kutudaki) Tam Dolu Kartuş</strong></p>\r\n\r\n<p><strong>Tarama &Ccedil;&ouml;z&uuml;n&uuml;rl&uuml;ğ&uuml; 600 - 1200 DPI</strong></p>\r\n\r\n<p><strong>Tarayıcı &Ouml;zelliği Var</strong></p>\r\n\r\n<p><strong>Usb Kablo Yok</strong></p>\r\n\r\n<p><strong>USB Var</strong></p>\r\n\r\n<p><strong>Wi-Fi Yok</strong></p>\r\n\r\n<p><strong>Yazıcı Tipi &Ccedil;ok Fonksiyonlu</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://productimages.hepsiburada.net/s/28/500/10214180716594.jpg\" style=\"height:150px; width:150px\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1399.00, 'vrJcZaN1bwI', 'Epson L3110 Ecotank Fotokopi-Tarayıcı Mürekkep Tanklı Yazıcı (C11CG87401)', 265, '1', '0'),
(29, 15, '2020-12-08 13:19:04', 'Su Geçirmez Softshell Erkek Spor Mont', '', 'su-gecirmez-softshell-erkek-spor-mont', '<p><strong>Unco &amp; Boror Su Ge&ccedil;irmez Softshell Erkek Spor Mont</strong></p>\r\n\r\n<p><strong>NorthFashion</strong></p>\r\n\r\n<p><strong>Unco &amp; Boror Su Ge&ccedil;irmez Softshell Erkek Spor Mont</strong></p>\r\n\r\n<p><strong>Cinsiyet Erkek</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://productimages.hepsiburada.net/s/44/1500/10803476889650.jpg\" style=\"height:150px; width:150px\" /></strong></p>\r\n', 199.90, 'Wbae5zXfpVc', 'Unco & Boror Su Geçirmez Softshell Erkek Spor Mont  NorthFashion', 300, '1', '0'),
(30, 16, '2020-12-08 13:26:02', ' Web Tasarımı Ve Web Programlama', '', 'web-tasarimi-ve-web-programlama', '<p><strong>A&rsquo;Dan Z&rsquo;Ye Yeni Nesil Tekniklerle Web Tasarımı Ve Web Programlama - Uğur Gelişken</strong></p>\r\n\r\n<p><strong>Kitap, genel amacı ile size web tasarımı ve web programlama konusunda bil hemen hemen her şeyi; pratik &ouml;rneklerle ve sekt&ouml;rde kullanılan g&uuml;ncel tekniklere uygulamalı bir şekilde anlatmaktadır. &bull; Web D&uuml;nyasının Dillerini Tanıma, Altın Kurallar ve Wireframe Ara&ccedil;larıyla Eskiz Tasa &bull; HTML5 Dilinin Genel Kullanımı, Etiketler, Formlar ve Semantic Web Sayfa D&uuml;zeni &bull; CSS3, SASS - SCSS ile Veri Bi&ccedil;imlendirme ve &Ouml;rnek Uygulamalar &bull; JavaScript ile Web Programlama ve JavaScript&#39;&#39;te Nesne Y&ouml;nelimli Programlama Yak &bull; HTML5 API&#39;&#39;leri ile &Ccedil;alışmak ve &Ouml;rnek Uygulamalar &bull; Bootstrap - jouery Framework ile Tasarım ve Responsive Aray&uuml;z Tasarım Teknikleri &bull; VelocityJS ve AniJS ile Sayfa Bileşenlerine İnteraktiflik Katma &bull; AngularJS MVW* Framework&#39;&#39;&uuml; ile Komplike Web Siteleri i&ccedil;in Web Aray&uuml;z&uuml; Programla &bull; Web Sitesi Yayınlama Aşamaları, cPanel ile Site ve phpMyAdmin ile Veritabanı Y&ouml;neti &bull; PHP Dili Temelleri, OOP Yaklaşımıyla Programlama ve PHP&#39;&#39;nin HTML5 ile Birlikte Kullan &bull; MySQLi ile Veritabanı Y&ouml;netimi ve SQL Sorgularını Kullanarak İ&ccedil;erik Y&ouml;netimi Sağlama &bull; SEO Yaklaşımlarına G&ouml;re Web Programlama Teknikleri, SEF URL, MasterPage ve Sayfala &bull; MWM Mimarisiyle Adım Adım Responsive Web Sitesi ve Site i&ccedil;in CMS Uygulaması Hazı &bull; CushyCMS ile Kod Yazmadan Web Siteniz i&ccedil;in İ&ccedil;erik Y&ouml;netimi Sağlama &bull; HTML5 ve PhaserJS ile Uygulamalı Olarak Canvas - VVebGL Oyun Programlama &bull; Adobe Flash / AS 3.0 Geliştiricileri i&ccedil;in JS ile HTML5 Canvas - WebGL Uygulama Geliştirme Ayrıca kitap ile birlikte verilen DVD&#39;&#39;de, kitapta anlatılan &ouml;rneklere ait kaynak kodlar, gerekli ve gere&ccedil;ler ile birlikte, &Uuml;CRETSİZ olarak Adobe Edge Animate CC ve Adobe Flash Pro HTML5 Uygulama ve Animasyon Geliştirme eğitim setleri hediye edilmektedir.</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://productimages.hepsiburada.net/s/32/500/10378632822834.jpg\" style=\"height:150px; width:150px\" /></strong></p>\r\n', 110.00, 'Xilbqe3R3Ic', 'A’Dan Z’Ye Yeni Nesil Tekniklerle Web Tasarımı Ve Web Programlama - Uğur Gelişken', 115, '1', '0'),
(31, 16, '2020-12-08 13:32:41', 'Php Web Programlama', '', 'php-web-programlama', '<p><strong>Sıfırdan İleri Seviyeye Php Web Programlama - Emrah Y&uuml;ksel</strong></p>\r\n\r\n<p><strong>Kitap Hakkında Mesleğiniz farklı olabilir, Web Programlama konusunda hi&ccedil;bir bilginiz olmayabilir, daha &ouml;nce deneyip vazge&ccedil;miş olabilirsiniz... Bu kitap, size PHP ile Web Geliştirme d&uuml;nyasının kapılarını a&ccedil;arak, hayal ettiğiniz projeleri kodlamanız i&ccedil;in gerekli olan t&uuml;m bilgi, uygulama ve y&ouml;nlendirmeleri i&ccedil;ermektedir. Kitapta, asıl amacımız PHP programlama dilini &ouml;ğrenmek olsa da PHP ile web tabanlı projeler i&ccedil;erisinde olacağımız i&ccedil;in Temel HTML ve Temel CSS b&ouml;l&uuml;mlerine de yer verilmiştir. Verdiğim t&uuml;m eğitimlerde &ouml;ğrencilerime tavsiyem bir &ldquo;Başucu Defterleri&rdquo;nin olması ve &ouml;nemli g&ouml;r&uuml;p hatırlamak isteyeceklerini bu deftere not etmeleriydi. Bu kitap aslında o başucu defterinin hazırlanmış halidir. Birlikte başarmak i&ccedil;in hadi hemen başlayalım... &bull; Başlarken İhtiyacınız Olanlar &bull; Lokal Sunucu ve Edit&ouml;r Kurulumu &bull; Temel HTML &bull; Temel CSS &bull; PHP Giriş &bull; Değişkenler ve Operat&ouml;rler &bull; Diziler &bull; Denetim Yapıları &bull; HTML Formlar ile &Ccedil;alışma &bull; Fonksiyonlar &bull; Zaman İşlemleri &bull; Hata İstisna Y&ouml;netimi &bull; D&uuml;zenli İfadeler &bull; Dosya Sistemi &bull; MySQL Veritabanı &bull; PDO &bull; Bootstrap &amp; CRUD İşlemleri Proje &bull; OOP &bull; cURL &bull; PHP Simple HTML Dom Parser &bull; Filtreleme ve Doğrulama &bull; Şifreleme Veri G&uuml;venliği &bull; URL İşlevleri &bull; G&uuml;venlik &bull; SEF .htaccess Yapılandırması &bull; PHPMailer ile E-Posta Emrah Y&Uuml;KSEL Yazarımız, Anadolu &Uuml;niversitesi Y&ouml;netim Bilişim Sistemleri b&ouml;l&uuml;m&uuml;n&uuml; tamamladıktan sonra &ccedil;eşitli kamu kuruluşlarında edindiği 11 yıla yakın tecr&uuml;besinin ardından yine bir kamu kurumunda Bilgi İşlem Y&ouml;neticisi olarak profesyonel hayatıma devam etmektedir. 2016 yılı Mayıs ayında a&ccedil;tığı Youtube Kanalında 600 &lsquo;den fazla konu &uuml;zerine yayınladığı eğitim videoları 3.000.000&rsquo;u aşan izlenme almış ve bu kanalın getirdiği talepler &uuml;zerine 2017 yılı Eyl&uuml;l ayı itibariyle Udemy&rsquo;de kapsayıcı m&uuml;fredata sahip PHP başta olmak &uuml;zere &ccedil;eşitli konular &uuml;zerine video kursları hazırlamıştır. Mevcut kurslarda bug&uuml;ne kadar 15000+ kişiye eğitim vermiş ve 5 &uuml;zerinden 4,8 geri d&ouml;n&uuml;ş puanlaması ile 2017 yılında Udemy &uuml;zerinde T&uuml;rkiye genelinde en iyi 3 eğitmenden biri olarak &ouml;d&uuml;le layık g&ouml;r&uuml;lm&uuml;şt&uuml;r. 1 Nisan 2018 İtibariyle Dijital i&ccedil;eriklerini Akademi b&uuml;nyesinden &uuml;retmek ve dijital i&ccedil;erik &uuml;retecek eğitmenlerin gelişimine katkı sunmak ve ortak &ccedil;alışma yapmak amacıyla Eğitimin Anahtarı sloganıyla EDUKEY Dijital Eğitim Akademisini kurdu. T&uuml;rkiye genelinde &ccedil;eşitli &uuml;niversitelerde bilgilendirme konferanslarına ve eğitimlere, konuşmacı ve eğitmen olarak katılmaya devam etmektedir.</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://productimages.hepsiburada.net/s/31/500/10326879371314.jpg\" style=\"height:150px; width:150px\" /></strong></p>\r\n', 33.00, 'oYw69st2kiI', 'Sıfırdan İleri Seviyeye Php Web Programlama - Emrah Yüksel', 4000, '1', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunfoto`
--

CREATE TABLE `urunfoto` (
  `urunfoto_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urunfoto_resimyol` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `urunfoto_sira` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urunfoto`
--

INSERT INTO `urunfoto` (`urunfoto_id`, `urun_id`, `urunfoto_resimyol`, `urunfoto_sira`) VALUES
(4, 31, 'dimg/urun/268203081720750244322.PNG', 1),
(11, 29, 'dimg/urun/239423053431371283065.PNG', 1),
(18, 28, 'dimg/urun/3087730728237632548510.PNG', 1),
(19, 28, 'dimg/urun/2483422987239112291512.PNG', 2),
(20, 28, 'dimg/urun/2506123473248152509611.PNG', 3),
(21, 10, 'dimg/urun/2335830684253312440013.PNG', 1),
(22, 10, 'dimg/urun/2551623938246812644114.PNG', 2),
(23, 10, 'dimg/urun/2858220156282752394315.PNG', 3),
(24, 11, 'dimg/urun/2024625804306873134916.PNG', 1),
(25, 11, 'dimg/urun/2843626534302092760017.PNG', 2),
(26, 11, 'dimg/urun/2284431774258542998418.PNG', 3),
(27, 14, 'dimg/urun/2599029407271612557819.PNG', 1),
(28, 14, 'dimg/urun/2864325731216333000420.PNG', 2),
(29, 14, 'dimg/urun/2715225023220192809621.PNG', 3),
(30, 16, 'dimg/urun/2474225129236862523923.PNG', 1),
(31, 16, 'dimg/urun/3094122050206072658122.PNG', 2),
(32, 15, 'dimg/urun/3055427083256763045425.PNG', 1),
(33, 15, 'dimg/urun/2558330858287182894026.PNG', 2),
(34, 15, 'dimg/urun/2075020916248182647524.PNG', 3),
(35, 17, 'dimg/urun/2561625439311652772328.PNG', 1),
(36, 17, 'dimg/urun/2351730815298652555827.PNG', 0),
(37, 17, 'dimg/urun/2862031677289452937829.PNG', 0),
(38, 18, 'dimg/urun/2477821671206342602831.PNG', 0),
(39, 18, 'dimg/urun/2291727178200312011330.PNG', 0),
(40, 18, 'dimg/urun/2735229050309882913232.PNG', 0),
(41, 19, 'dimg/urun/2969728432259033012734.PNG', 0),
(42, 19, 'dimg/urun/3095124373239752160833.PNG', 0),
(43, 19, 'dimg/urun/2867029115240222768235.PNG', 0),
(44, 20, 'dimg/urun/2950527312294702418136.PNG', 0),
(45, 20, 'dimg/urun/2813628273245312866637.PNG', 0),
(46, 20, 'dimg/urun/2066224964258203075738.PNG', 0),
(47, 21, 'dimg/urun/3013323249235592098140.PNG', 0),
(48, 21, 'dimg/urun/2036523482202382331639.PNG', 0),
(49, 21, 'dimg/urun/3162230916213422961641.PNG', 0),
(50, 22, 'dimg/urun/2037028737248682230043.PNG', 0),
(51, 22, 'dimg/urun/2534621651270532756642.PNG', 0),
(52, 22, 'dimg/urun/2579230130270452658944.PNG', 0),
(53, 23, 'dimg/urun/2284629585298752420446.PNG', 0),
(54, 23, 'dimg/urun/3137326005200692497645.PNG', 0),
(55, 23, 'dimg/urun/2172822201244293124247.PNG', 0),
(56, 24, 'dimg/urun/2582026861303873155949.PNG', 0),
(57, 24, 'dimg/urun/2052830743254662937548.PNG', 0),
(58, 24, 'dimg/urun/2479331716258592519050.PNG', 0),
(59, 25, 'dimg/urun/2875931548249482330952.PNG', 0),
(60, 25, 'dimg/urun/2288127436267862939451.PNG', 0),
(61, 25, 'dimg/urun/2144929126261592641453.PNG', 0),
(62, 26, 'dimg/urun/2247722673255822778555.PNG', 0),
(63, 26, 'dimg/urun/2071431681242022580854.PNG', 0),
(64, 26, 'dimg/urun/2418720691270963196056.PNG', 0),
(65, 27, 'dimg/urun/2791323073295822003758.PNG', 0),
(66, 27, 'dimg/urun/3009428593301942686257.PNG', 0),
(67, 27, 'dimg/urun/2522625179285122036459.PNG', 0),
(74, 30, 'dimg/urun/245973197526119243061.PNG', 0),
(75, 3, 'dimg/urun/295042433625648259428.PNG', 0),
(76, 3, 'dimg/urun/276072934022388209679.PNG', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `yorum_id` int(11) NOT NULL,
  `urun_id` int(11) DEFAULT NULL,
  `kullanici_id` int(11) NOT NULL,
  `yorum_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `yorum_baslik` text COLLATE utf8_turkish_ci NOT NULL,
  `yorum_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yorum_onay` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`yorum_id`, `urun_id`, `kullanici_id`, `yorum_detay`, `yorum_baslik`, `yorum_zaman`, `yorum_onay`) VALUES
(1, 30, 2, 'dasd', 'asdas', '2020-11-25 10:27:46', '0'),
(2, 30, 2, 'Emrah hoca gayet başarılı. ', 'Emrah Yüksel ile PHP öğrenin', '2020-11-25 11:42:47', '0'),
(36, 30, 2, 'Ürün çok hızlı elime ulaştı.', 'UGUR GELİSKEN', '2020-12-15 13:22:18', '0'),
(61, 30, 2, 'Kitap Gayet Basarılı\r\n', 'TARKAN KARA', '2020-12-17 10:57:19', '0'),
(77, 3, 16, 'Gayet Kullanışlı', 'Mobile', '2020-12-28 08:35:06', '0'),
(78, 3, 16, 'DDDDDD', 'YASİN YAGCI', '2020-12-28 08:36:47', '0'),
(88, 11, 2, 'ASDAS', 'SADASD', '2021-01-10 14:18:53', '0');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayar`
--
ALTER TABLE `ayar`
  ADD PRIMARY KEY (`ayar_id`);

--
-- Tablo için indeksler `banka`
--
ALTER TABLE `banka`
  ADD PRIMARY KEY (`banka_id`);

--
-- Tablo için indeksler `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`hakkimizda_id`);

--
-- Tablo için indeksler `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`kullanici_id`);

--
-- Tablo için indeksler `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Tablo için indeksler `sepet`
--
ALTER TABLE `sepet`
  ADD PRIMARY KEY (`sepet_id`);

--
-- Tablo için indeksler `siparis`
--
ALTER TABLE `siparis`
  ADD PRIMARY KEY (`siparis_id`);

--
-- Tablo için indeksler `siparis_detay`
--
ALTER TABLE `siparis_detay`
  ADD PRIMARY KEY (`siparisdetay_id`);

--
-- Tablo için indeksler `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Tablo için indeksler `urun`
--
ALTER TABLE `urun`
  ADD PRIMARY KEY (`urun_id`);

--
-- Tablo için indeksler `urunfoto`
--
ALTER TABLE `urunfoto`
  ADD PRIMARY KEY (`urunfoto_id`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`yorum_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `banka`
--
ALTER TABLE `banka`
  MODIFY `banka_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `kullanici_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Tablo için AUTO_INCREMENT değeri `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Tablo için AUTO_INCREMENT değeri `sepet`
--
ALTER TABLE `sepet`
  MODIFY `sepet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- Tablo için AUTO_INCREMENT değeri `siparis`
--
ALTER TABLE `siparis`
  MODIFY `siparis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=410843624;

--
-- Tablo için AUTO_INCREMENT değeri `siparis_detay`
--
ALTER TABLE `siparis_detay`
  MODIFY `siparisdetay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- Tablo için AUTO_INCREMENT değeri `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Tablo için AUTO_INCREMENT değeri `urun`
--
ALTER TABLE `urun`
  MODIFY `urun_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Tablo için AUTO_INCREMENT değeri `urunfoto`
--
ALTER TABLE `urunfoto`
  MODIFY `urunfoto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `yorum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

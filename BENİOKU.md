Google E-tablolar, LibreOffice Hesap Tablosu, MS Excel ve Web Sayfaları için Ebced
Hesaplama fonksiyonları

KESİN TUTARLI YA DA DOĞRU HESAPLANMIŞ SONUÇ VAAT EDİLMİYOR; KODLARI 
GÖZDEN GEÇİRİN VE İHTİYAÇLARINIZA GÖRE YENİDEN DÜZENLEYİN Kİ ARADIĞINIZ 
KESİNLİĞE ULAŞABİLESİNİZ.

Fonksiyon-fonksiyon kullanıcı tanımlı fonksiyonların açıklaması.
***
### abjad("ebced değeri bulunacak metin"; ebced tablosu kodu; şedde seçeneği; ayrıntı seçeneği)
### wordbyword("ebced değeri bulunacak metin"; ebced tablosu kodu; şedde seçeneği; ayrıntı seçeneği)
***
>#### "ebced değeri bulunacak metin"

Türkçe, Arapça ya da İbranice bir metin ya da metnin bulunduğu hücre.

>#### ebced tablosu kodu

0 - 5 tablo kodları Arapça, İbranice ve Türkçe için

* 0 Asgari Ebced
* 1 Sağir Ebced (Cümel-i Kebir)
* 2 Kebir Ebced
* 3 Ekber Ebced
* 4 Sağir Ebced + Harf Miktarı
* 5 Harf Miktarı

6 - 35 tablo kodları sadece Arapça için

![ebced tabloları - abjad tables](https://github.com/metatronslove/abjad/blob/1b8fb33d7611926237c2ee0c4fc884918030dc76/Ebced%20Tablosu%20Kodlar%C4%B1%20-%20Abjad%20Table%20Codes.jpg)

>#### şedde seçeneği

Şeddeli harf  içermeyen metinler  hesaplanırken formulde verilmesi 
gerekmez. Şeddeli harfler çift hesaplanacaksa 2, tek hesaplanacaksa 1 
girin.

>#### ayrıntı seçeneği

Bu seçeneği girmek seçimliktir, eğer 1 olarak girerseniz her harf için 
verilmiş olan tablo koduna göre değerleriyle beraber listeler.

***
### bastet(“metin veya sayı”; bast tekrar adedi; tablo kodu; şedde seçeneği; "dil seçeneği"; ayrıntı ayarı)
***
>#### "metin veya sayı"

Eğer  Arapça  ya da  İbranice  bir  metin girerseniz tablo koduna göre 
ebced değerini kullanır, doğrudan sayı verirseniz de işlem yapar.

>#### bast tekrar adedi

Usul-ul bast yöntemi açısından ebced değerine uygulanacak yayma işlemini
kaç kez tekrar edeceğini belirtmelisiniz.

>#### tablo kodu

Usul-ul bast yöntemini hangi ebced tablosuna göre uygulayacağını 
belirtmelisiniz, bu tablo kodları abjad() fonksiyonundaki  tablo 
kodlarını  içerir,  abjad() fonksiyonundaki kodlara ek  olarak  yayma  
işlemlerinin  sonundaki harf miktarını ekleme  işlemini yapmaması  için
negatif ebced tablosu kodları kullanabilirsiniz, bu negatif kodların 
akılda kalması  için  pozitif ebced kodlarını  -1  ile çarpıp  -1 
ekleyerek bulunabildiğini söyleyebiliriz,  mesela  ebced  tablosu  kodu
1  olan  sağir  ebced  için  harf  miktarı eklenmeyecekse tablo kodu 
olarak -2 girerseniz.

>#### şedde seçeneği

Şeddeli harfleri çift hesaplatmak için 2, tek hesaplatmak için 1 
girilebilir, şedde yoksa girilmesi gerekmez, seçimliktir.

>#### "dil seçeneği"

bast etme işlemleri  Arapça sayı okunuşlarına göre yapılacaksa "ARABIC",
İbranice okunuşlara göre yapılacaksa "HEBREW" olarak girilir. Türkçe 
için "TURKCE"

>#### "ayrıntı ayarı"

ebcedini hesaplayıp, harf miktarını ekleyerek vermek yerine hesapladığı 
sayının istintakını yani okunuşunu döndürür.

***
### nutket(sayı; dil)
***

>#### sayı

0 - 999999999999999 arasındaki sayılar.

>#### dil 

"ARABIC" Arapça
"HEBREW" İbranice
"TURKCE" Türkçe

***
### unsur(metin; çıktı türü kodu; unsur kodu; şedde seçeneği, hoca seçeneği)
***

>#### metin

harfleri elementlere göre tasnif edilecek olan Arapça veya İbranice metin

>#### çıktı türü kodu

* 0 harf miktarı
* 1 harf listesi

>#### unsur kodu

* 0 ateş
* 1 hava
* 2 su
* 3 toprak

>#### şedde seçeneği

* 1 şeddeli harfler tek sefer hesaba katılır
* 2 şeddeli harfler iki kez hesaba katılır

>#### hoca seçeneği

* 0 "TURKCE" Türk alfabesinin unsurları
* 1 "ARABI" Muhiyyiddin İbn Arabi
* 2 "BUNI" Ahmed El Buni
* 3 "HUSEYNI" Süleyman El Huseyni
* 4 "HEBREW" İbrani alfabesi için unsurlar
* girilmemesi ya da 0-4 dışında girilmesi halinde de yanıt verdiği bir 
seçenek mevcuttur.

***
### saf(metin; ayraç; şedde seçeneği)
***

>#### metin

Ebced incelemesine katkısı olmayan karakterlerden ve şeddeler dahil 
harekelerden arındırılacak Arapça veya İbranice metin

>#### ayraç

* 0  girilirse metni arındırır ve boşluklar orjinaldeki yerlerinde kalır
* " "  girilirse incelemeye dahil olabilecek harfleri aralarında 
boşluklar olduğu halde listeler

ihtiyaç varsa boşluk yerine başka karakterler de girilebilir.

>#### şedde seçeneği

2 girilirse, şeddeli harfleri iki kez döndürür

***
### numbers2arab(rakamları dönüştürülecek hücre)
***

>#### rakamları dönüştürülecek hücre

Arap rakamlarından [0-9] oluşan sayılar girilmiş hücrededir, bunlar Hint
rakamlarına dönüşür. Formul yayarken oldukça kullanışlıdır.

***
### huddam(hesaplanmış sayı; vazifeli türü belirteci; yöntem seçeneği)
***

>#### hesaplanmış sayı

sihirli kare çalışmak için gereken vazifeli ruhsal varlık için 
hesaplanan sayıdır

>#### vazifeli türü belirteci

üretilecek vazifeli ismi için son ek seçimidir

* "ULVI"  girilirse, son ek ayil olur.
* "SUFLI" girilirse, son ek yuş olur.
* "ŞER" girilirse, son ek tıyş olur.

Bu belirteç için çift tırnak işareti arasına arap harfleriyle istenen 
herhangi bir başka ek de girilebiliyor. Ebced hesaplama yöntemimizden 
kaynaklanan bir sebeple "ULVI" türü için verilen ayil son ekinin ebced 
değeri 51 olarak hesaplandı, kitaplarda verilen 41 tutarını 
hedefliyorsanız, "ULVI" yazmaktansa hemze ye maksura harfi yerine hemze
ya da elif harfi kullanarak kendi tür belirtecinizi girin.

>#### yöntem seçeneği

Yöntem seçeneği, abjad() fonksiyonundaki Sağir ebced tablosu kodları 
olan 1, 7, 12, 17, 22, 27, 32'dir. Cümel-i Kebir tablosuna uyan bir 
ebced tekniği ile isim üretmek istiyorsanız seçimlik olan bu yöntem
seçeneğini girmeyin. Bu seçenek için 12 girdiğinizde Cümel-i Kebir
tablosu yerine Deneysel Frekans Ebced tablosuna uyan isimler üretmeye
başlar. 

Yöntem seçeneğinin bir başka hesaplama biçimi için Sağir Ebced tablosu
koduna bir ekleyerek (+1) girilen yöntem seçenekleri de tanımlıdır
bunlar da 2, 8, 13, 18, 23, 28, 33 olarak girilirse nasıl çalıştıklarını
deneyerek keşfedebilirsiniz.

***
### rakamtopla(indirgenecek sayı; basamak miktarı)
***

>#### indirgenecek sayı

herhangi bir sayı

>#### basamak miktarı

* 3 girilirse, indirgenecek sayının basamaklarını toplayarak 3 basamaklı
bir sayıya ulaşanadek toplamayı sürdürür.
* 2 girilirse 2 basamağa,
* 1 girilirse tek basamağa kadar indirger!
* 0 girilirse indirgeme işlemlerinde karşılaştığı tüm aşamaları listeler.

***
### teksir("çoğaltılacak metin"; "ayraç"; şedde seçeneği)
***

>#### "çoğaltılacak metin"

buraya gireceğiniz Arapça ya da İbranice metin için harfleri önce sondan
sonra baştan tüm harfleri alana kadar alarak metindeki harflerin farklı 
sıralamalarıyla çoğaltılasına yarar.

>#### "ayraç"

çoğaltma işlemi sırasında görsellik açısından " " boşluğun ayraç olarak 
kullanılmasını öneririm, başka karakterler de seçilebilir.

>#### şedde seçeneği

2 girilirse, şeddeli harfleri iki kez döndürür

***
### tesbeh(hedef sayı; minimum değer; tesbih tane adedi; tesbih bölümleri)
***

>#### hedef sayı

boncuklu tesbih kullanırken ebced hesabıyla belirlenmiş bir sayıya 
ulaşılacaksa buraya girilir
 
>#### minimum değer

hesaplanacak değer sözün gelimi 25 minimum değeri girildiğinde 25'ten 
küçük girilen hedef sayılar için hedef sayının KARESİ'ne hedef sayı 
muamelesi yapar.
 
>#### tesbih tane adedi

Tesbihin kullanım önerisini verebilmek için kullanılacak tesbihin 
özelliklerini vermemiz gerekiyor 99'luk tesbih için 99 girmek gibi...

>#### tesbih bölümleri

tesbihin kullanım önerisini verebilmek için kullanılacak tesbihin 
özelliklerini vermemiz gerekiyor, 99'luk tesbih için 33'lü bölümler 
olması gibi.

Biraz bağlantı:
|Konum Bağlantı Adresi|İçerik|
|:--------------------------------------------------------|------------------------------------------------------:|
|https://abdil.one/|Kodlayıcının blogu|
|https://ebced.abdil.one/|Eğlence için JS örneklendirmesi|
|https://forum.libreoffice.org.tr/viewforum.php?f=6|Hesap Tablosu ile alakalı soru ve yanıtlar|
|https://github.com/metatronslove/abjad|Kullanıcı Tanımlı Ebced Fonksiyonları için Kaynak|
|https://go.abdil.one/6|Kodların merak edilmesi gerekmeyen eskilei|
|https://ruhsalenerji.org|İslami Gizli İlimlerle İlgili İçerik|
|https://tinyurl.com/1v3fk|Ebced Fonksiyonlarının Google Sheet ile kullanımı|
|https://tinyurl.com/3bc3dh3s4b1|Kaynağı indirme olası alternatifi|
|https://tinyurl.com/bl4nksh33t|Ebced Fonksiyonları olan Boş Google E-tablolar dökümanı|
|https://tinyurl.com/huddam|Ebced Fonksiyonlarının Google Sheet ile kullanımı|
|https://tinyurl.com/t3stc0d3|Ebced Fonksiyonlarının Google Sheet ile kullanımı|
|https://www.facebook.com/ebcedmakro|Kodlayıcının sayfası|
|https://www.youtube.com/channel/UCuv0cfdSZ9F0bFTh64n802g|Kodlayıcının kanalı|

Biraz video:
[![LibreOffice Calc makroları AndrOpen Office'de KULLANILABİLİR](https://img.youtube.com/vi/H1VLp7zScys/maxresdefault.jpg)](https://youtu.be/H1VLp7zScys "LibreOffice Calc makroları AndrOpen Office'de KULLANILABİLİR")

# abjad
Google E-tablolar ve LibreOffice Hesap Tablosu için Ebced Hesaplama fonksiyonları

HİÇ BİR KESİN TUTARLI YA DA DOĞRU HESAPLANMIŞ SONUÇ VAADETMİYORUM; KODLARI GÖZDEN GEÇİRİN VE 
İHTİYAÇLARINIZA GÖRE YENİDEN DÜZENLEYİN Kİ ARADIĞINIZ KESİNLİĞE ULAŞABİLESİNİZ.

Fonksiyon-fonksiyon kullanıcı tanımlı fonksiyonların açıklaması.
***
###    abjad("ebced değeri bulunacak metin"; ebced tablosu kodu; şedde seçeneği; ayrıntı seçeneği)
***
>####        "ebced değeri bulunacak metin"

            Arapça ya da İbranice bir metin ya da metnin bulunduğu hücre.

>####        ebced tablosu kodu

            0 - 5 tablo kodları Arapça ve İbranice için

            0 Asgari Ebced
            1 Sağir Ebced (Cümel-i Kebir)
            2 Kebir Ebced
            3 Ekber Ebced
            4 Sağir Ebced + Harf Miktarı
            5 Harf Miktarı
            
            6 - 16 tablo kodları sadece Arapça için
            
            6 Asgari Frekans Sırası 
            7 Sağir Frekans Sırası
            8 Kebir Frekans Sırası
            9 Ekber Frekans Sırası
            10 Sağir Frekans Sırası + Harf Miktarı
            11 Asgari Frekans Ebcedi
            12 Sağir Frekans Ebcedi
            13 Kebir Frekans Ebcedi
            14 Ekber Frekans Ebcedi
            15 Sağir Frekans Ebcedi + Harf Miktarı

>####        şedde seçeneği

            Şeddeli harf  içermeyen metinler  hesaplanırken formulde verilmesi gerekmez. Şeddeli 
            harfler çift hesaplanacaksa 2, tek hesaplanacaksa 1 girin.

>####        ayrıntı seçeneği

            bu seçeneği girmek seçimliktir, eğer 1 olarak girerseniz her harf için verilmiş olan
            tablo koduna göre değerleriyle beraber listeler.
***            
###         bastet(“metin veya sayı”; bast tekrar adedi; tablo kodu; şedde seçeneği; "dil seçeneği")
***
>####        "metin veya sayı"

            eğer  Arapça  ya da  İbranice  bir  metin girerseniz tablo koduna göre ebced değerini
            kullanır, doğrudan sayı verirseniz de işlem yapar.

>####        bast tekrar adedi

            usul-ul bast yöntemi açısından ebced değerine uygulanacak yayma işlemini kaç kez
            tekrar edeceğini belirtmelisiniz.

>####        tablo kodu

            usul-ul bast yöntemini hangi ebced tablosuna göre uygulayacağını belirtmelisiniz, bu
            tablo kodları abjad() fonksiyonundaki  tablo kodlarını  içerir,  abjad() fonksiyonundaki
            kodlara   ek  olarak  yayma  işlemlerinin  sonundaki   harf miktarını   ekleme  işlemini
            yapmaması  için  negatif ebced tablosu kodları   kullanabilirsiniz,   bu negatif kodların
            akılda kalması  için  pozitif ebced kodlarını  -1  ile çarpıp  -1 ekleyerek bulunabildiğini
            söyleyebiliriz,  mesela  ebced  tablosu  kodu   1  olan  sağir  ebced  için  harf  miktarı
            eklenmeyecekse tablo kodu olarak -2 girerseniz.

>####        şedde seçeneği

            şeddeli harfleri çift hesaplatmak için 2, tek hesaplatmak için 1 girilebilir, şedde yoksa
            girilmesi gerekmez, seçimliktir.

>####        "dil seçeneği"

            bast etme işlemleri  Arapça   sayı   okunuşlarına göre yapılacaksa "ARABIC", İbranice
            okunuşlara göre yapılacaksa "HEBREW" olarak girilir.
            
***
###     unsur(metin; çıktı türü kodu; unsur kodu; şedde seçeneği)
***

>####    metin

            harfleri elementlere göre tasnif edilecek olan Arapça veya İbranice metin

>####    çıktı türü kodu

            0 harf miktarı
            1 harf listesi

>####    unsur kodu

            0 ateş
            1 hava
            2 su
            3 toprak

>####    şedde seçeneği

            1 şeddeli harfler tek sefer hesaba katılır
            2 şeddeli harfler iki kez hesaba katılır

***
###     saf(metin; ayraç)
***

>####    metin

            ebced incelemesine katkısı olmayan karakterlerden ve şeddeler dahil harekelerden
            arındırılacak Arapça veya İbranice metin

>####    ayraç

            0       girilirse metni arındırır ve boşluklar orjinaldeki yerlerinde kalır
            " "     girilirse incelemeye dahil olabilecek harfleri aralarında boşluklar olduğu halde
                     listeler

            ihtiyaç varsa boşluk yerine başka karakterler de girilebilir.

***
###     numbers2arab(rakamları dönüştürülecek hücre)
***

>####    rakamları dönüştürülecek hücre

                Arap rakamlarından [0-9] oluşan sayılar girilmiş hücrededir, bunlar Hint rakamlarına
                dönüşür. Formul yayarken oldukça kullanışlıdır.

***
###     huddam(hesaplanmış sayı; vazifeli türü belirteci; yöntem seçeneği)
***

>####    hesaplanmış sayı

            sihirli kare çalışmak için gereken vazifeli ruhsal varlık için hesaplanan sayıdır

>####    vazifeli türü belirteci

            üretilecek vazifeli ismi için son ek seçimidir

            "ULVI"  girilirse, son ek ayil olur.
            "SUFLI" girilirse, son ek yuş olur.
            "ŞER" girilirse, son ek tıyş olur.

            bu belirteç için çift tırnak işareti arasına arap harfleriyle istenen herhangi bir başka ek de
            girilebiliyor. Ebced hesaplama yöntemimizden kaynaklanan bir sebeple "ULVI" türü için
            verilen ayil son ekinin ebced değeri 51 olarak hesaplandı, kitaplarda verilen 41 tutarını
            hedefliyorsanız, "ULVI" yazmaktansa hemze ye maksura harfi yerine hemze ya da elif harfi
            kullanarak kendi tür belirtecinizi girin.

>####    yöntem seçeneği

            Cümel-i Kebir tablosuna uyan bir ebced tekniği ile isim üretmek istiyorsanız seçimlik olan
            bu yöntem seçeneğini girmeyin. Bu seçenek için 1 girdiğinizde Cümel-i Kebir tablosu yerine
            Deneysel Frekans Ebced tablosuna uyan isimler üretmeye başlar.

***
###     rakamtopla(indirgenecek sayı; basamak miktarı)
***

>####    indirgenecek sayı

                herhangi bir sayı

>####    basamak miktarı

                3 girilirse, indirgenecek sayının basamaklarını toplayarak 3 basamaklı bir sayıya ulaşanadek
                toplamayı sürdürür.
                2 girilirse 2 basamağa,
                1 girilirse tek basamağa kadar indirger!
                0 girilirse indirgeme işlemlerinde karşılaştığı tüm aşamaları listeler.

***
###     teksir("çoğaltılacak metin"; "ayraç")
***

>####   "çoğaltılacak metin"

            buraya gireceğiniz Arapça ya da İbranice metin için harfleri önce sondan sonra baştan tüm harfleri
            alana kadar alarak metindeki harflerin farklı sıralamalarıyla çoğaltılasına yarar.

>####   "ayraç"

            çoğaltma işlemi sırasında görsellik açısından " " boşluğun ayraç olarak kullanılmasını öneririm,
            başka karakterler de seçilebilir.

***
###     tesbeh(hedef sayı; minimum değer; tesbih tane adedi; tesbih bölümleri)
***

>####    hedef sayı

            boncuklu tesbih kullanırken ebced hesabıyla belirlenmiş bir sayıya ulaşılacaksa buraya girilir
    
>####    minimum değer

            hesaplanacak değer sözün gelimi 25 minimum değeri girildiğinde 25'ten küçük girilen hedef sayılar
            için hedef sayının KARESİ'ne hedef sayı muamelesi yapar.
    
>####    tesbih tane adedi

            tesbihin kullanım önerisini verebilmek için kullanılacak tesbihin özelliklerini vermemiz gerekiyor
            99'luk tesbih için 99 girmek gibi...

>####    tesbih bölümleri

            tesbihin kullanım önerisini verebilmek için kullanılacak tesbihin özelliklerini vermemiz gerekiyor,
            99'luk tesbih için 33'lü bölümler olması gibi.            

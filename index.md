# Join us here to participate these codes as open source, I believe in finding common points. Use Discussions tab.

A google spread sheet pre-added some macro code sets is here:
    https://tinyurl.com/bl4nksh33t

# abjad https://github.com/metatronslove/abjad
Abjad Calculation Macro Commands To Use Custom Functions For Google Sheets And LibreOffice Calc

I DO NOT OFFER ANY CERTAIN CALCULATION; CHECK THE CODE AND RECREATE YOUR FUNCTIONS TO REACH
YOUR CERTAINITY !!!

[![wordbyword() function](https://i.ytimg.com/vi/FWqtQP_V5u4/maxresdefault.jpg)](https://youtu.be/FWqtQP_V5u4 "wordbyword() function")

Function by function description of custom functions... 
***
### abjad("text to find abjad value"; abjad table code; shadda option; detail option)
### wordbyword("text to find abjad value"; abjad table code; shadda option; detail option)
***
>#### "text to find abjad value"

Arabic or Hebrew text or cell including that text.

>#### abjad table code

0 - 5 table codes for both Arabic and Hebrew
    
* 0 Minimum Abjad
* 1 Small Abjad (Cumel-i Kebir)
* 2 Big Abjad
* 3 Maximum Abjad
* 4 Small Abjad + Letter Quantity
* 5 Letter Quantity

6 - 15 table codes for Arabic only

* 6 Minimum Frequency Order
* 7 Small Frequency Order
* 8 Big Frequency Order
* 9 Maximum Frequency Order
* 10 Small Frequency Order + Letter Quantity
* 11 Minimum Frequency Abjad
* 12 Small Frequency Abjad
* 13 Big Frequency Abjad
* 14 Maximum Frequency Abjad
* 15 Small Frequency Abjad + Letter Quantity

>#### shadda option

Unnecessary to give for texts do not contain shadda; in order to calculate 
letters with shadda "double times" give 2, for single time give 1.

>#### detail option

giving this option is optional,  if you give  1  here, it lists every letter 
with value according to given table code.

[![https://tinyurl.com/t3stc0d3](https://i.ibb.co/Jp19XXS/Ekran-g-r-nt-s-2021-10-08-14-47-23.png)](https://tinyurl.com/t3stc0d3)

***
###  bastet(“text or number”; bast repetitions; table code; shadda option; “language”)
***
>#### "text or number"

If you enter Arabic or Hebrew text, you can set the abjad value according to the table
code. uses it, even if you give a number directly, it does the operation.

>#### bast repetitions

In terms of the method-ul bast method, how many times will the spread operation be
applied to the abjad value? you must indicate that how many times it will repeat.

>#### table code

You must specify according to which abjad table you will apply the usul-ul bast
method, this The table codes contain the table codes in the abjad() function, the table
codes in the abjad() function the process of adding the amount of letters at the end of
the spreading operations in addition to the codes You can use negative abjad table
codes to use these tables. To keep in mind, it can be found by multiplying
positive abjad codes by -1 and adding -1. we can say, for example, the number of
letters for the small abjad whose abjad table code is 1 If it will not be added, you enter
-2 as the table code.

>#### shadda option

You can enter 2 for double calculation and 1 for odd calculation, if there is no shadda.
It is optional, not required.

>#### "language"

"ARABIC", if "bastet" operations will be done according to Arabic numeral
readings. If it is to be made according to Hebrew the readings, it is entered as "HEBREW".
 
***
### unsur(text; output type code; element code; feature option)
***

>#### text

Arabic or Hebrew text whose letters are to be sorted by element

>#### output type code

* 0 letter quantity
* 1 letter list

>#### element code

* 0 fire
* 1 air
* 2 water
* 3 earth

>#### shadda option

* 1-letters are counted once
* 2-shadda letters count twice

***
### saf(text; separator)
***

>#### text

From the characters that do not contribute to the abjad analysis and from the actions
including the shaddas. Arabic or Hebrew text to be purified

>#### separator

If 0 is entered, it purifies the text and the spaces stay where they were in the original.
If " " is entered, the letters that may be included in the analysis are displayed with 
spaces between them, lists

If necessary, other characters can be entered instead of spaces.

***
### numbers2arab(cell to convert numbers)
***

>#### cell to convert numbers

Numbers consisting of Arabic numerals [0-9] are in the entered cell, these are Indian 
numerals. turns into It is very useful when spreading formulas.

[![https://tinyurl.com/1v3fk](https://i.ibb.co/bK80X5H/Ekran-g-r-nt-s-2021-10-11-19-55-02.png)](https://tinyurl.com/1v3fk)

***
### huddam(calculated number; duty type specifier; method option)
***

>#### calculated number

The magic square has a number calculated for the tasked spiritual being required to work.

>#### duty type specifier

is the suffix selection for the task name to be generated

* If "ULVI" is entered, the suffix is ayeel.
* If "SUFLI" is entered, the suffix is yush.
* If "ŞER" is entered, the suffix will be teesh.

any other desired suffix in Arabic letters between double quotation marks for this token.
can be entered. For "ULVI" type for a reason due to our abjad calculation method The abjad value
of the given ayil suffix was calculated as 51, the amount of 41 given in the books. If you are
targeting, instead of typing "ULVI", use the letter "hemze" or "alif" instead of the letter "ulvi".
Enter your own type identifier using

>#### method option

Optional if you want to produce a name with an abjad technique that fits the Cümel-i Kebir table.
do not enter this method option. When you enter 1 for this option, the Cümel-i Kebir table is
replaced with Experimental Frequency Abjad Table begins to produce names that fit the Abjad table.

***
### rakamtopla(number to reduce; number of digits)
***

>#### number to reduce

any number

>#### number of digits

* If 3 is entered, add the digits of the number to be reduced until you reach a 3-digit number.
continues to collect.
* If 2 is entered, 2 digits,
* If 1 is entered, it reduces to one digit!
* If 0 is entered, it lists all the stages it encounters in the reduction process.

***
### teksir("text to duplicate"; "separator")
***

>#### "text to duplicate"

For the Arabic or Hebrew text you enter here, type all letters from the beginning to the end.
It allows the letters in the text to be reproduced in different order by taking the space up to
the area.

>#### "separator"

During the duplication process, I recommend using the " " space as a separator for visual
purposes, Other characters can also be selected.

***
### tesbeh(target number; minimum value; number of rosary beads; rosary sections)
***

>#### target number

If a number determined by the abjad calculation is to be reached while using the beaded rosary, it
is entered here.
    
>#### minimum value

value to be calculated ie target numbers entered less than 25 when the minimum value of 25 is
entered treats the SQUARE of the target number as the target number.
    
>#### number of rosary beads

In order to give a recommendation for the use of the rosary, we need to give the characteristics
of the rosary to be used. It's like entering 99 for a 99 rosary.

>#### rosary sections

In order to give the recommendation for the use of the rosary, we need to give the characteristics
of the rosary to be used, It's like having 33 sections for a 99 rosary. 

# abjad https://github.com/metatronslove/abjad
Google E-tablolar ve LibreOffice Hesap Tablosu için Ebced Hesaplama fonksiyonları

HİÇ BİR KESİN TUTARLI YA DA DOĞRU HESAPLANMIŞ SONUÇ VAADETMİYORUM; KODLARI GÖZDEN GEÇİRİN VE 
İHTİYAÇLARINIZA GÖRE YENİDEN DÜZENLEYİN Kİ ARADIĞINIZ KESİNLİĞE ULAŞABİLESİNİZ.

[![wordbyword() function](https://i.ytimg.com/vi/FWqtQP_V5u4/maxresdefault.jpg)](https://youtu.be/FWqtQP_V5u4 "wordbyword() function")

Fonksiyon-fonksiyon kullanıcı tanımlı fonksiyonların açıklaması.
***
### abjad("ebced değeri bulunacak metin"; ebced tablosu kodu; şedde seçeneği; ayrıntı seçeneği)
### wordbyword("ebced değeri bulunacak metin"; ebced tablosu kodu; şedde seçeneği; ayrıntı seçeneği)
***
>#### "ebced değeri bulunacak metin"

Arapça ya da İbranice bir metin ya da metnin bulunduğu hücre.

>#### ebced tablosu kodu

0 - 5 tablo kodları Arapça ve İbranice için

* 0 Asgari Ebced
* 1 Sağir Ebced (Cümel-i Kebir)
* 2 Kebir Ebced
* 3 Ekber Ebced
* 4 Sağir Ebced + Harf Miktarı
* 5 Harf Miktarı

6 - 16 tablo kodları sadece Arapça için

* 6 Asgari Frekans Sırası 
* 7 Sağir Frekans Sırası
* 8 Kebir Frekans Sırası
* 9 Ekber Frekans Sırası
* 10 Sağir Frekans Sırası + Harf Miktarı
* 11 Asgari Frekans Ebcedi
* 12 Sağir Frekans Ebcedi
* 13 Kebir Frekans Ebcedi
* 14 Ekber Frekans Ebcedi
* 15 Sağir Frekans Ebcedi + Harf Miktarı

>#### şedde seçeneği

Şeddeli harf  içermeyen metinler  hesaplanırken formulde verilmesi gerekmez. Şeddeli 
harfler çift hesaplanacaksa 2, tek hesaplanacaksa 1 girin.

>#### ayrıntı seçeneği

bu seçeneği girmek seçimliktir, eğer 1 olarak girerseniz her harf için verilmiş olan
tablo koduna göre değerleriyle beraber listeler.

[![https://tinyurl.com/t3stc0d3](https://i.ibb.co/Jp19XXS/Ekran-g-r-nt-s-2021-10-08-14-47-23.png)](https://tinyurl.com/t3stc0d3)

***
### bastet(“metin veya sayı”; bast tekrar adedi; tablo kodu; şedde seçeneği; "dil seçeneği")
***
>#### "metin veya sayı"

eğer  Arapça  ya da  İbranice  bir  metin girerseniz tablo koduna göre ebced değerini
kullanır, doğrudan sayı verirseniz de işlem yapar.

>#### bast tekrar adedi

usul-ul bast yöntemi açısından ebced değerine uygulanacak yayma işlemini kaç kez
tekrar edeceğini belirtmelisiniz.

>#### tablo kodu

usul-ul bast yöntemini hangi ebced tablosuna göre uygulayacağını belirtmelisiniz, bu
tablo kodları abjad() fonksiyonundaki  tablo kodlarını  içerir,  abjad() fonksiyonundaki
kodlara ek  olarak  yayma  işlemlerinin  sonundaki harf miktarını ekleme  işlemini
yapmaması  için  negatif ebced tablosu kodları kullanabilirsiniz, bu negatif kodların
akılda kalması  için  pozitif ebced kodlarını  -1  ile çarpıp  -1 ekleyerek bulunabildiğini
söyleyebiliriz,  mesela  ebced  tablosu  kodu 1  olan  sağir  ebced  için  harf  miktarı
eklenmeyecekse tablo kodu olarak -2 girerseniz.

>#### şedde seçeneği

şeddeli harfleri çift hesaplatmak için 2, tek hesaplatmak için 1 girilebilir, şedde yoksa
girilmesi gerekmez, seçimliktir.

>#### "dil seçeneği"

bast etme işlemleri  Arapça sayı okunuşlarına göre yapılacaksa "ARABIC", İbranice
okunuşlara göre yapılacaksa "HEBREW" olarak girilir.

***
### unsur(metin; çıktı türü kodu; unsur kodu; şedde seçeneği)
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

***
### saf(metin; ayraç)
***

>#### metin

ebced incelemesine katkısı olmayan karakterlerden ve şeddeler dahil harekelerden
arındırılacak Arapça veya İbranice metin

>#### ayraç

* 0  girilirse metni arındırır ve boşluklar orjinaldeki yerlerinde kalır
* " "  girilirse incelemeye dahil olabilecek harfleri aralarında boşluklar olduğu halde
  listeler

ihtiyaç varsa boşluk yerine başka karakterler de girilebilir.

***
### numbers2arab(rakamları dönüştürülecek hücre)
***

>#### rakamları dönüştürülecek hücre

Arap rakamlarından [0-9] oluşan sayılar girilmiş hücrededir, bunlar Hint rakamlarına
dönüşür. Formul yayarken oldukça kullanışlıdır.

[![https://tinyurl.com/1v3fk](https://i.ibb.co/bK80X5H/Ekran-g-r-nt-s-2021-10-11-19-55-02.png)](https://tinyurl.com/1v3fk)

***
### huddam(hesaplanmış sayı; vazifeli türü belirteci; yöntem seçeneği)
***

>#### hesaplanmış sayı

sihirli kare çalışmak için gereken vazifeli ruhsal varlık için hesaplanan sayıdır

>#### vazifeli türü belirteci

üretilecek vazifeli ismi için son ek seçimidir

* "ULVI"  girilirse, son ek ayil olur.
* "SUFLI" girilirse, son ek yuş olur.
* "ŞER" girilirse, son ek tıyş olur.

bu belirteç için çift tırnak işareti arasına arap harfleriyle istenen herhangi bir başka ek de
girilebiliyor. Ebced hesaplama yöntemimizden kaynaklanan bir sebeple "ULVI" türü için
verilen ayil son ekinin ebced değeri 51 olarak hesaplandı, kitaplarda verilen 41 tutarını
hedefliyorsanız, "ULVI" yazmaktansa hemze ye maksura harfi yerine hemze ya da elif harfi
kullanarak kendi tür belirtecinizi girin.

>#### yöntem seçeneği

Cümel-i Kebir tablosuna uyan bir ebced tekniği ile isim üretmek istiyorsanız seçimlik olan
bu yöntem seçeneğini girmeyin. Bu seçenek için 1 girdiğinizde Cümel-i Kebir tablosu yerine
Deneysel Frekans Ebced tablosuna uyan isimler üretmeye başlar.

***
### rakamtopla(indirgenecek sayı; basamak miktarı)
***

>#### indirgenecek sayı

herhangi bir sayı

>#### basamak miktarı

* 3 girilirse, indirgenecek sayının basamaklarını toplayarak 3 basamaklı bir sayıya ulaşanadek
toplamayı sürdürür.
* 2 girilirse 2 basamağa,
* 1 girilirse tek basamağa kadar indirger!
* 0 girilirse indirgeme işlemlerinde karşılaştığı tüm aşamaları listeler.

***
### teksir("çoğaltılacak metin"; "ayraç")
***

>#### "çoğaltılacak metin"

buraya gireceğiniz Arapça ya da İbranice metin için harfleri önce sondan sonra baştan tüm harfleri
alana kadar alarak metindeki harflerin farklı sıralamalarıyla çoğaltılasına yarar.

>#### "ayraç"

çoğaltma işlemi sırasında görsellik açısından " " boşluğun ayraç olarak kullanılmasını öneririm,
başka karakterler de seçilebilir.

***
### tesbeh(hedef sayı; minimum değer; tesbih tane adedi; tesbih bölümleri)
***

>#### hedef sayı

boncuklu tesbih kullanırken ebced hesabıyla belirlenmiş bir sayıya ulaşılacaksa buraya girilir
 
>#### minimum değer

hesaplanacak değer sözün gelimi 25 minimum değeri girildiğinde 25'ten küçük girilen hedef sayılar
için hedef sayının KARESİ'ne hedef sayı muamelesi yapar.
 
>#### tesbih tane adedi

tesbihin kullanım önerisini verebilmek için kullanılacak tesbihin özelliklerini vermemiz gerekiyor
99'luk tesbih için 99 girmek gibi...

>#### tesbih bölümleri

tesbihin kullanım önerisini verebilmek için kullanılacak tesbihin özelliklerini vermemiz gerekiyor,
99'luk tesbih için 33'lü bölümler olması gibi.

# References

* JavaScript
* Google Apps Script
* LibreOffice Basic

There ara enough syntax references to code in these languages. Simple used search engines for this.
***

* İlm-i Cifir Şerhi ve Havassı - Muhiyiddin ibni Arabi - Turkish Translation by Mustafa Varlı
* Usul-ul Bast Fi Sırrı-l Evfak Vel Havas - İdris Çelebi
* İstinzal-i Hüddam - misticshop.com
* Esrar-ı Mendel - misticshop.com
* Muska Yazım Ve İmha Teknikleri - misticshop.com
* Gizli İlimler Hazinesi - Mustafa İloğlu
* Ruhsalenerji.Org various subjects on boards
* Wikipedia Turkish - Arabic - English encyclopedic references
* Havas İlminin Derinlikleri - Facebook Group

My Code Simply Refers To These Sources Worked On Them Between 2017 - 2021
***

Other than codes I have published on github; I have notes taken in pdf files and some other things
which could be found at Google Drive or Dosya.Org:

    https://drive.google.com/drive/folders/1O9FdxTU5YXS-My3eHtqc8a3XjqZLuSSF
    
and

    https://dosya.org/u6yl

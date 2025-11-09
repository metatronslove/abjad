# Ebced Makroları Kullanım Kılavuzu (2025)

Bu kılavuz, Sahur Özel tarafından geliştirilen Ebced hesaplama makrolarının farklı platformlardaki güncel kullanımlarını açıklamaktadır. Kodlar, LibreOffice Basic'ten JavaScript, Python ve Google Apps Script gibi modern dillere çevrilmiştir.

## platform Desteği

Bu fonksiyon seti, aşağıdaki platformlar ve programlama dilleri için mevcuttur. Fonksiyon adları ve temel parametreler platformlar arasında tutarlıdır.

| Platform / Yazılım | Kod Dosyası | Dil |
| :--- | :--- | :--- |
| **Google E-Tablolar** | `4_google_sheets.gs` | Google Apps Script (JavaScript) |
| **Microsoft Excel (365)** | `4_ms_excel-365.bas` | VBA |
| **LibreOffice Calc** | `4_libreoffice_calc.bas` | LibreOffice Basic |
| **Web Sayfaları / Node.js** | `abjad.js` / `abjad.ts` | JavaScript / TypeScript |
| **Python Projeleri** | `Abjad.py` / `abjad-deneyleri.py` | Python |

## Ana Fonksiyonlar

Aşağıda, kütüphanedeki ana hesaplama fonksiyonları ve kullanımları detaylandırılmıştır.

-----

### `ABJAD()`

Bir metnin, belirtilen ebced tablosuna göre sayısal değerini hesaplar.

**Parametreler**

  * `metin`: Ebced değeri hesaplanacak olan metin veya hücre.
  * `tablo`: Kullanılacak hesaplama tablosunun kodu (0-35 arası).
  * `shadda` (Seçimlik): Şeddeli harflerin nasıl hesaplanacağını belirler.
      * `1` (Varsayılan): Şeddeli harfleri tek harf olarak sayar.
      * `2`: Şeddeli harfleri çift harf olarak sayar.
  * `detail` (Seçimlik): Çıktı formatını belirler.
      * `0` (Varsayılan): Toplam sayısal değeri verir.
      * `1`: Hesaplama dökümünü metin olarak verir (örn: `[ب=2][س=60][م=40]`).

**Tablo Kodları ve Yöntemleri**
Fonksiyon, 0'dan 35'e kadar tablo kodlarını destekler. Bu kodlar ana hesaplama yöntemlerinin (Sağir, Kebir, Asgari, Ekber) farklı alfabelere (Arapça, İbranice, Latince/Türkçe) uygulanmış halleridir.

| Yöntem | Kod Mantığı (Örnek Kodlar) | Açıklama |
| :--- | :--- | :--- |
| **Asgari Ebced** | `0, 6, 11, 16, 21, 26, 31`  | Sağir Ebced değerinin 12'ye bölümünden kalanı hesaplar (`asgar()` fonksiyonu). |
| **Sağir Ebced** (Cümel-i Kebir) | `1, 4, 5, 7, 10, 12, 15...`  | Standart (küçük) ebced tablosu. |
| **Kebir Ebced** | `2, 8, 13, 18, 23, 28, 33`  | Harfin okunuşunun (örn: 'ا' için 'الف') Sağir Ebced değerini hesaplar. |
| **Ekber Ebced** | `3, 9, 14, 19, 24, 29, 34`  | Harfin Sağir Ebced değerinin metin okunuşunun (`bastet()` ile) Sağir Ebced değerini hesaplar. |
| **+ Harf Miktarı** | `4, 10, 15, 20, 25, 30, 35`  | İlgili tablonun Sağir Ebced hesabına metindeki toplam harf sayısını ekler. |

# Ebced Tablo Kodları  
**Cümel-i Kebir ve Diğer Sistemler**  

---

## 📊 Temel Ebced Sistemleri (0-5)  

| Türkçe Lejant            | İngilizce Lejant         | Kod | Açıklama                          |
|--------------------------|--------------------------|-----|-----------------------------------|
| **Asgari Ebced**         | **Minimum Abjad**        | 0   | En temel Ebced sistemi.           |
| **Sağir Ebced**          | **Small Abjad**          | 1   | Küçük Ebced (Cümel-i Kebir).      |
| **Kebir Ebced**          | **Big Abjad**            | 2   | Büyük Ebced.                      |
| **Ekber Ebced**          | **Maximum Abjad**        | 3   | En geniş kapsamlı Ebced.          |
| **Sağir + Harf Adedi**   | **Small + Letter Qty**   | 4   | Sağir Ebced + harf sayısı ekler.  |
| **Harf Adedi**           | **Letter Quantity**      | 5   | Sadece harf sayısını hesaplar.    |

---

## 🌍 Diğer Ebced Sistemleri (6-35)  

| Kod Aralığı | Türkçe Sistem Adı       | İngilizce Sistem Adı    | Açıklama                          |
|-------------|-------------------------|-------------------------|-----------------------------------|
| **6-10**    | **Mağribi Ebced**       | Maghrebi Abjad          | Mağrib bölgesine özgü sistem.     |
| **11-15**   | **Kur'an Frekans Sırası**| Quran Frequency Order   | Kur'an harflerinin frekans sırası.|
| **16-20**   | **Hica Sırası**        | Hija Order             | Hica bölgesi harf düzeni.        |
| **21-25**   | **Mağribi Hica Sırası**| Maghrebi Hija Order    | Mağribi-Hica karışık sıralama.   |
| **26-30**   | **İklil Sırası**        | Aqli Order              | Akıllı/mantıksal harf gruplandırması. |
| **31-35**   | **Şemsî Ebced Sırası**  | Shamse Abjad Order      | Şemsî Ebced.                      |

---

## 🧮 Hisab El Cümel  
**Desteklenen Sistemler**:  
- `6-10` Mağribi Ebced  
- `11-15` Kur'an Frekans Sırası  
- `16-20` Hica Sırası  
- `21-25` Mağribi Hica Sırası  
- `26-30` İklil Sırası  
- `31-35` Şemsî Ebced Sırası  

---
> **Not**: Kodlar **0-35** arasındadır. Her aralık, belirli bir Ebced sistemini temsil eder.  

**Kullanım Örnekleri**

  * **Google/Excel/LibreOffice:**
    ```excel
    =ABJAD(A1; 1; 1; 0)
    =ABJAD("بسم الله"; 1; 2)
    =ABJAD(A1; 2;; 1)
    ```
  * **Python:**
    ```python
    # Abjad.py sınıfını import ettikten sonra
    ebced = Abjad()
    sonuc = ebced.abjad("بسم الله", tablo=1, shadda=1, detail=0)
    ```
  * **JavaScript / Apps Script:**
    ```javascript
    let sonuc = abjad("بسم الله", 1, 1, 0);
    ```

-----

### `BASTET()`

Bir metnin veya sayının "Usul-ul Bast" işlemini, belirtilen tekrar sayısınca uygular. Bu işlem, bir sayının metin olarak okunuşunun ebced değerini bulmayı tekrarlamaktır.

**Parametreler**

  * `metin`: Bast edilecek metin veya sayısal değer.
  * `mt`: Bast işleminin kaç defa tekrar edileceği (`Bast Tekrar Adedi`).
  * `tablo`: Kullanılacak ebced tablo kodu.
      * **0-35:** Pozitif tablo kodları. Hesaplamada `nutket()` (okunuş) fonksiyonundan gelen metnin ebced değerine, o metnin harf sayısı da eklenir (`abjad(ns, 5)`).
      * **-1 ile -36 arası:** Negatif "ayna" tablo kodları. Harf sayısını toplama *eklemez*. (Örn: Tablo 1 için `-2` kullanılır `(1x-1)-1 = -2`).
  * `shadda` (Seçimlik): Şedde ayarı (1 veya 2).
  * `language` (Seçimlik): Sayının okunuşu (`nutket`) için kullanılacak dil. "ARABIC", "HEBREW" veya "TURKCE".
  * `detail` (Seçimlik): Çıktı türü.
      * `0` (Varsayılan): Sonuçtaki sayısal değeri (Baster) verir.
      * `1`: Son işlemdeki metin okunuşunu (Nutuk) verir.

**Kullanım Örnekleri**

  * **Google/Excel/LibreOffice:**
    ```excel
    =BASTET(A1; 4; 1; 1; "ARABIC"; 0)
    =BASTET(786; 2; -2; 1; "ARABIC"; 1)
    ```
  * **Python:**
    ```python
    ebced = Abjad()
    sonuc = ebced.bastet(786, 2, tablo=1, shadda=1, language="ARABIC", detail=0)
    ```
  * **JavaScript / Apps Script:**
    ```javascript
    let sonuc = bastet(786, 2, 1, 1, "ARABIC", 0);
    ```

-----

### `UNSUR()`

Bir metindeki harfleri dört tabiata (anasır-ı erbaa) göre sınıflandırır, sayar veya listeler.

**Parametreler**

  * `metin`: Analiz edilecek metin.
  * `otabiat`: Çıktı türü.
      * `0` veya `"adet"`: Belirtilen tabiattaki harflerin *sayısını* verir.
      * `1` veya `"liste"`: Belirtilen tabiattaki harflerin *listesini* verir.
  * `otype`: Unsur (tabiat) kodu.
      * `0`: Ateş (Fire)
      * `1`: Hava (Air)
      * `2`: Su (Water)
      * `3`: Toprak (Earth)
  * `shadda` (Seçimlik): Şedde ayarı (1 veya 2).
  * `guide` (Seçimlik): Hangi alimin (Hoca Ayarı) tasnifinin kullanılacağını belirler.
      * `0` veya `"TURKCE"`: Türk alfabesi için.
      * `1` veya `"ARABI"`: İbn Arabi.
      * `2` veya `"BUNI"`: Ahmed El Buni.
      * `3` veya `"HUSEYNI"`: Süleyman El Huseyni.
      * `4` veya `"HEBREW"`: İbrani alfabesi.
      * *Diğer/Boş*: Yaygın olarak kullanılan (default) Arapça tasnifi.

**Kullanım Örnekleri**

  * **Google/Excel/LibreOffice:**
    ```excel
    =UNSUR(A1; 0; 0; 1; 1)
    ```
    *(A1'deki metnin, 1 (ARABI) yöntemine göre, 0 (Ateş) unsurundaki harf 0 (adedini) verir.)*
  * **Python:**
    ```python
    # abjad-deneyleri.py dosyasındaki fonksiyon
    adet = unsur("متن", 0, 0, 1, 1)
    ```
  * **JavaScript / Apps Script:**
    ```javascript
    let liste = unsur("متن", 1, 2, 1, 1);
    ```

-----

### `NUMEROLOG()`

Metinleri, modern veya geleneksel numeroloji sistemlerine göre analiz eder.

**Parametreler**

  * `metin`: Analiz edilecek metin.
  * `tablo`: Kullanılacak numeroloji yöntemi (küçük/büyük harf duyarsız).
      * `"date"`: Tarih verisini (örn: 20.01.2023 -\> 2023120) sayı olarak işler.
      * `"modern"`: Pisagoryan (Çağdaş) numeroloji. Sesli/sessiz harf analizi sağlar.
      * `"tr"`: Türk alfabesindeki harf sırasına göre (A=1, B=2... Z=29) .
      * `"en"`: İngiliz alfabesindeki harf sırasına göre (A=1, B=2... Z=26) .
      * `"arb(ebced)"`: Arapça Ebced dizimi .
      * `"arb(mebced)"`: Mağribi Ebced dizimi .
      * `"arb(hica)"`: Hica (Elifba) dizimi .
      * `"arb(mhica)"`: Mağribi Hica dizimi .
      * `"osman"`: Osmanlı alfabesi dizimi .
  * `outas`: Çıktı Türü.
      * `"tam"`: Yönteme göre hesaplanan toplam sayı.
      * `"hepsi"`: Toplam sayının tek haneye indirgenme sürecini gösterir (örn: `786 ► 21 ► 3`).
      * `"sesli"`: Sadece sesli harflerin toplamı (sadece "modern" yöntemde).
      * `"sessiz"`: Sadece sessiz harflerin toplamı (sadece "modern" yöntemde).
      * `1`, `2`, `3`...: Toplam sayının kaç haneye indirgeneceğini belirtir (örn: `1` tek haneye indirger).
  * `shadda` (Seçimlik): Şedde ayarı (1 veya 2).

**Kullanım Örnekleri**

  * **Google/Excel/LibreOffice:**
    ```excel
    =NUMEROLOG(A1; "modern"; "sesli"; 1)
    =NUMEROLOG(A2; "arb(hica)"; "hepsi"; 2)
    ```
  * **Python:**
    ```python
    # abjad-deneyleri.py dosyasındaki fonksiyon
    sonuc = numerolog("Sahur Özel", "modern", "hepsi", 1)
    ```
  * **JavaScript / Apps Script:**
    ```javascript
    let sonuc = numerolog("Sahur Özel", "tr", 1, 1);
    ```

-----

### `HUDDAM()`

Bir sayısal değere karşılık gelen vefk vazifelisi (hadim) ismini türetir.

**Parametreler**

  * `num`: Kaynak sayı (ebced toplamı).
  * `htype`: Vazifeli türü.
      * `"ULVI"` (veya `"ULVİ"`): Ulvi isim (örn: 'ئيل' eki).
      * `"SUFLI"` (veya `"SUFLİ"`): Sufli isim (örn: 'يوش' eki).
      * `"ŞER"` (veya `"SER"`): Şer isim (örn: 'طيش' eki).
      * *Özel Ek*: Çift tırnak içinde özel bir Arapça ek de verilebilir (örn: `"ائيل"`).
  * `method` (Seçimlik): Harflendirme için kullanılacak ebced tablo kodu.
      * `1` (Varsayılan), `7`, `12`, `17`, `22`, `27`, `32`.

**Kullanım Örnekleri**

  * **Google/Excel/LibreOffice:**
    ```excel
    =HUDDAM(B2; "ULVI"; 1)
    =HUDDAM(786; "SUFLI"; 7)
    ```
  * **Python:**
    ```python
    # abjad-deneyleri.py dosyasındaki fonksiyon
    isim = huddam(786, "ULVI", 1)
    # Abjad.py sınıfındaki alternatif
    isim = ebced.generate_name(786, htype='ULVI', method=1, language='arabic')
    ```
  * **JavaScript / Apps Script:**
    ```javascript
    let isim = huddam(786, "ULVI", 1);
    ```

-----

### `TEKSIR()`

Bir metni "teksir" (kırma, çoğaltma) işlemine tabi tutar.

**Parametreler**

  * `metin`: Teksir edilecek kaynak metin.
  * `ayrac` (Seçimlik): Harflerin arasına konulacak ayraç (örn: `" "`).
  * `shadda` (Seçimlik): Şedde ayarı (1 veya 2).

**Kullanım Örnekleri**

  * **Google/Excel/LibreOffice:**
    ```excel
    =TEKSIR(A1; " "; 1)
    ```
  * **Python:**
    ```python
    ebced = Abjad()
    sonuc = ebced.teksir("متن", " ", 1)
    ```
  * **JavaScript / Apps Script:**
    ```javascript
    let sonuc = teksir("متن", " ", 1);
    ```

-----

### `RAKAMTOPLA()`

Bir sayının basamaklarını, belirtilen haneye inene kadar toplar.

**Parametreler**

  * `valuez`: Rakamları toplanacak sayı.
  * `amount`: Sonucun kaç basamaklı olacağı.
      * `0`: Tek haneye kadar olan tüm toplama adımlarını gösterir (örn: `12345 ► 15 ► 6`).
      * `1`: Sonucu tek haneye indirger ve sadece o haneyi gösterir.
      * `2`, `3`...: Sonucu o basamak sayısına indirger.

**Kullanım Örnekleri**

  * **Google/Excel/LibreOffice:**
    ```excel
    =RAKAMTOPLA(A1; 1)
    =RAKAMTOPLA(9876; 0)
    ```
  * **Python:**
    ```python
    ebced = Abjad()
    sonuc = ebced.rakamtopla(9876, 1)
    adimlari_goster = ebced.rakamtopla(9876, 0)
    ```
  * **JavaScript / Apps Script:**
    ```javascript
    let sonuc = rakamtopla(9876, 1);
    ```

-----

### `NUTKET()`

Sayısal bir değeri metin (okunuş) olarak yazar. Bu fonksiyon `BASTET` ve `ABJAD` (Ekber Ebced) fonksiyonları tarafından dahili olarak kullanılır.

**Parametreler**

  * `MyNumber`: Metne çevrilecek sayı.
  * `language`: Okunuşun hangi dilde yapılacağı.
      * `"ARABIC"` 
      * `"HEBREW"` 
      * `"TURKCE"` 

**Kullanım Örnekleri**

  * **Google/Excel/LibreOffice:**
    ```excel
    =NUTKET(1453; "ARABIC")
    =NUTKET(2023; "TURKCE")
    ```
  * **Python:**
    ```python
    ebced = Abjad()
    okunus = ebced.nutket(1453, "ARABIC")
    ```
  * **JavaScript / Apps Script:**
    ```javascript
    let okunus = nutket(1453, "ARABIC");
    ```

-----

### `SAF()`

Bir metni "saflaştırır"; ebced hesabına dahil edilmeyen harfleri (harekeler, noktalama işaretleri vb.) metinden çıkarır.

**Parametreler**

  * `metin`: Saflaştırılacak metin.
  * `ayrac`: Harflerin arasına konulacak ayraç.
      * `""` (boş metin): Harfleri bitişik yazar.
      * `" "` (boşluk): Harflerin arasına boşluk koyar.
      * `0`: Harfleri bitişik yazar.
      * *Diğer karakterler*: (örn: `"-"`) Harflerin arasına o karakteri koyar.
  * `shadda` (Seçimlik): Şedde ayarı (1 veya 2). `2` seçilirse şeddeli harfi kopyalar.

**Kullanım Örnekleri**

  * **Google/Excel/LibreOffice:**
    ```excel
    =SAF(A1; " "; 1)
    =SAF("اَلرَّحْمٰنِ"; 0; 2)
    ```
  * **Python:**
    ```python
    ebced = Abjad()
    temiz_metin = ebced.saf("اَلرَّحْمٰنِ", 0, 1)
    ```
  * **JavaScript / Apps Script:**
    ```javascript
    let temiz_metin = saf("اَلرَّحْمٰنِ", 0, 1);
    ```

-----

## Yardımcı Fonksiyonlar

  * **`WORDBYWORD()`**: Metnin ebced değerini kelime kelime hesaplar ve her kelimenin yanına altayazı ile değerini ekler.
  * **`NUMBERS2ARAB()` / `ArabToIndian()`**: Latin rakamlarını (`0-9`) Doğu Arap/Hint rakamlarına (`٠-٩`) çevirir.
  * **`IndianToArab()`**: Doğu Arap/Hint rakamlarını (`٠-٩`) Latin rakamlarına (`0-9`) çevirir.
  * **`ALTAYAZ()`**: Bir metindeki rakamları ve bazı özel karakterleri alt simge (subscript) karakterlere dönüştürür (örn: `(786)` -\> `₍₇₈₆₎`) .
  * **`TESBIH()`**: Bir zikir adedine ulamak için tesbihin nasıl kullanılması gerektiğini hesaplar (kaç tur, kaç bölüm vb.).
  * **`SAY()`**: Bir metin içinde başka bir metin parçasının kaç kez geçtiğini sayar. Kelime, harf veya tecvid kurallarına (Elif-Lam takısı) göre arama modları bulunur .
  * **`ASGAR()`**: `ABJAD` fonksiyonu için bir yardımcıdır, bir sayının 12'ye bölümünden kalanını verir (Mod 12).

  ## 🔗 Resources
- [Live Web Calculator](https://one.fanclub.rocks/occult-abjad-calculator)
- [Mobile Implementation Guide](https://youtu.be/H1VLp7zScys)
- [Coders Weblog](https://one.fanclub.rocks/)

---

## 🎯 Hedef Kitle  

1. **Spiritüel Arayış İçinde Olanlar ve Mistikler**  
   - **Özellikler**: Meraklı, içe dönük, açık fikirli.  
   - **Kullanım**: Kutsal metinlerdeki gizli anlamları keşfetmek.  

2. **Numerologlar ve Ebced Meraklıları**  
   - **Özellikler**: Analitik, detay odaklı, sayı-dil ilişkisine ilgili.  
   - **Kullanım**: Metinlerdeki sembolik anlamları çözmek.  

3. **Tarihçiler ve Dilbilimciler**  
   - **Özellikler**: Akademik, metodik.  
   - **Kullanım**: Ebced gibi tarihi sayı sistemlerini incelemek.  

4. **Dindar veya İnanç Temelli Bireyler**  
   - **Özellikler**: Dindar, derin düşünceli.  
   - **Kullanım**: Dini metinleri veya ilahi mesajları araştırmak.  

5. **Yazarlar ve Sanatçılar**  
   - **Özellikler**: Yaratıcı, sembolizme ilgili.  
   - **Kullanım**: Eserlerine derin anlamlar katmak.  

6. **Bulmaca ve Bilmece Meraklıları**  
   - **Özellikler**: Eğlenceli, entelektüel meraklı.  
   - **Kullanım**: Karmaşık problemleri çözmek veya şifreleri çözmek.  

7. **Komplo Teorisyenleri ve Alternatif Düşünürler**  
   - **Özellikler**: Ana akım anlatılara şüpheci.  
   - **Kullanım**: Sistemlerdeki gizli gerçekleri ortaya çıkarmak.  

## 🎁 Destek Ol
**Çalışmalarımın sürmesine olanak sağlamak için bağışta bulunabilirsiniz.**  
*Lütfen bağış yapmadan önce en az iki kere düşünün çünkü geri ödemeler için ayıracak hiç zamanım ve imkanım yok.*  
**Katkılarınız için paylaştıklarımı kullanan herkes adına teşekkürlerimi kabul edin.**

## 🎁 Support Me
**You can support me to keep my projects alive.**  
*Please think twice before donating because I have no time or means to handle refunds.*  
**On behalf of everyone who uses what I share, I accept your thanks for your contributions.**

[![Papara ile Destekle](https://img.shields.io/badge/Bağış%20Yap-%E2%9D%A4-blue)](https://ppr.ist/1T9dx8tUT)
[![Donate using Papara](https://img.shields.io/badge/Donate-%E2%9D%A4-blue)](https://ppr.ist/1T9dx8tUT)

[![Papara ile Desteklen](1513592797QR.png)](https://ppr.ist/1T99dYF5X)

> *"Numbers are the language of the universe."*
> *– Ancient Proverb*
```To share
https://metatronslove.github.io/abjad/
```

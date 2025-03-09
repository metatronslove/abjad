İşte **Türkçe** olarak düzenlenmiş ve markdown formatında hazırlanmış `README.md` içeriği:

# Ebced Hesaplama Makro Komutları  
**Google E-Tablolar, LibreOffice Calc, MS Excel ve Web Sayfaları İçin**  

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

---

## 🛠️ Temel Fonksiyonlar  

### `abjad("metin"; tablo_kodu; şedde_seçeneği; detay_seçeneği)`  
- **Amaç**: Arapça/İbranice metinlerin Ebced değerlerini hesaplar.  
- **Parametreler**:  
  - `metin`: Arapça veya İbranice metin.  
  - `tablo_kodu`: 0-35 (tarihi sayı sistemleri).  
  - `şedde_seçeneği`: 1 (tek sayım) veya 2 (çift sayım).  
  - `detay_seçeneği`: 1 girilirse harf harf detaylı liste.  
- **Örnek**:  
  ```excel
  =ABJAD("النور", 1, 2, 0) → 256  
  ```

### `bastet("metin veya sayı"; tekrar_sayısı; tablo_kodu; dil)`  
- **Amaç**: Usul-ul bast yöntemiyle kozmik genişleme döngüleri uygular.  
- **Parametreler**:  
  - `metin veya sayı`: Metin veya doğrudan sayı.  
  - `tekrar_sayısı`: Genişleme döngülerinin sayısı.  
  - `tablo_kodu`: Ebced tablo kodu (negatif de olabilir).  
  - `dil`: "ARABIC", "HEBREW" veya "TURKCE".  
- **Örnek**:  
  ```excel
  =BASTET("کون", 7, -2, "ARABIC")  
  ```

### `nutket(sayı; dil)`  
- **Amaç**: Sayıları Arapça/İbranice/Türkçe kelimelere çevirir.  
- **Parametreler**:  
  - `sayı`: 0 ile 999999999999999 arasında bir sayı.  
  - `dil`: "ARABIC", "HEBREW" veya "TURKCE".  
- **Örnek**:  
  ```excel
  =NUTKET(123, "ARABIC") → "مائة وثلاثة وعشرون"  
  ```

### `unsur(metin; çıktı_türü; unsur_kodu; şedde_seçeneği; rehber)`  
- **Amaç**: Harfleri elementlere göre sınıflandırır.  
- **Parametreler**:  
  - `metin`: Arapça veya İbranice metin.  
  - `çıktı_türü`: 0 (miktar) veya 1 (harf listesi).  
  - `unsur_kodu`: 0 (ateş), 1 (hava), 2 (su), 3 (toprak).  
  - `şedde_seçeneği`: 1 (tek sayım) veya 2 (çift sayım).  
  - `rehber`: Element sınıflandırma sistemi (örn. İbn Arabi).  
- **Örnek**:  
  ```excel
  =UNSUR("النور", 1, 0, 2, 1)  
  ```

### `saf(metin; ayraç; şedde_seçeneği)`  
- **Amaç**: Metni Ebced analizi için arındırır.  
- **Parametreler**:  
  - `metin`: Arapça veya İbranice metin.  
  - `ayraç`: 0 (boşlukları koru) veya " " (boşluk ekle).  
  - `şedde_seçeneği`: 1 (tek sayım) veya 2 (çift sayım).  
- **Örnek**:  
  ```excel
  =SAF("بِسْمِ اللَّهِ", 0, 2)  
  ```

### `numbers2arab(hücre)`  
- **Amaç**: Batı rakamlarını Doğu rakamlarına çevirir.  
- **Parametreler**:  
  - `hücre`: Rakamların bulunduğu hücre.  
- **Örnek**:  
  ```excel
  =NUMBERS2ARAB(A1) → "١٢٣"  
  ```

### `huddam(sayı; görev_türü; yöntem)`  
- **Amaç**: Ruhsal varlıklar için görev isimleri üretir.  
- **Parametreler**:  
  - `sayı`: Hesaplanmış sayı.  
  - `görev_türü`: "ULVI", "SUFLI" veya özel son ek.  
  - `yöntem`: Ebced tablo kodu.  
- **Örnek**:  
  ```excel
  =HUDDAM(51, "ULVI", 1) → "Al-Malik al-Ayeel"  
  ```

### `rakamtopla(sayı; basamak_sayısı)`  
- **Amaç**: Sayıları mistik tek haneye indirger.  
- **Parametreler**:  
  - `sayı`: Herhangi bir sayı.  
  - `basamak_sayısı`: 1 (tek haneye), 2 (iki haneye), 0 (tüm aşamalar).  
- **Örnek**:  
  ```excel
  =RAKAMTOPLA(12345, 1) → 6  
  ```

### `teksir("metin"; "ayraç"; şedde_seçeneği)`  
- **Amaç**: Harfleri sigil oluşturmak için çoğaltır.  
- **Parametreler**:  
  - `metin`: Arapça veya İbranice metin.  
  - `ayraç`: Harfleri ayırmak için karakter (örn. " ").  
  - `şedde_seçeneği`: 1 (tek sayım) veya 2 (çift sayım).  
- **Örnek**:  
  ```excel
  =TEKSIR("النور", " ", 2)  
  ```

### `tesbeh(hedef_sayı; min_değer; tesbih_tanesi; bölümler)`  
- **Amaç**: Tesbih kullanımı için rezonans önerileri hesaplar.  
- **Parametreler**:  
  - `hedef_sayı`: Ebced hesaplamasıyla belirlenen sayı.  
  - `min_değer`: Minimum değer (örn. 25).  
  - `tesbih_tanesi`: Tesbih tanesi sayısı (örn. 99).  
  - `bölümler`: Tesbih bölüm sayısı (örn. 33).  
- **Örnek**:  
  ```excel
  =TESBEH(99, 25, 99, 33)  
  ```

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
| **16-20**   | **Hicaz Sırası**        | Hijaz Order             | Hicaz bölgesi harf düzeni.        |
| **21-25**   | **Mağribi Hicaz Sırası**| Maghrebi Hijaz Order    | Mağribi-Hicaz karışık sıralama.   |
| **26-30**   | **İklil Sırası**        | Aqli Order              | Akıllı/mantıksal harf gruplandırması. |
| **31-35**   | **Şam Ebced Sırası**    | Sham Abjad Order        | Şam bölgesine özgü Ebced.         |

---

## 🧮 Hisab El Cümel  
**Desteklenen Sistemler**:  
- `6-10` Mağribi Ebced  
- `11-15` Kur'an Frekans Sırası  
- `16-20` Hicaz Sırası  
- `21-25` Mağribi Hicaz Sırası  
- `26-30` İklil Sırası  
- `31-35` Şam Ebced Sırası  

---

> **Not**: Kodlar **0-35** arasındadır. Her aralık, belirli bir Ebced sistemini temsil eder.  

## 🔗 Kaynaklar  
- [Canlı Web Hesaplayıcı](https://one.fanclub.rocks/occult-abjad-calculator)  
- [Mobil Uygulama Rehberi](https://youtu.be/H1VLp7zScys)  
- [Kodlayıcının Blogu](https://one.fanclub.rocks/)  

---

> *"Sayılar, evrenin dilidir."*  
> *– Antik Özdeyiş*
```

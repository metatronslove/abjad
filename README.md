# Abjad Calculation Macro Commands
**For Google Sheets, LibreOffice Calc, MS Excel, and Web Pages**

---

## 🎯 Intended Audiences

1. **Spiritual Seekers and Mystics**
   - **Traits**: Curious, introspective, open-minded.
   - **Use Case**: Uncover hidden meanings in sacred texts.

2. **Numerologists and Gematria Enthusiasts**
   - **Traits**: Analytical, fascinated by number-language relationships.
   - **Use Case**: Decode symbolic meanings in texts.

3. **Historians and Linguists**
   - **Traits**: Scholarly, methodical.
   - **Use Case**: Study historical numeral systems like Abjad.

4. **Religious or Faith-Based Individuals**
   - **Traits**: Devout, reflective.
   - **Use Case**: Explore religious texts or divine messages.

5. **Writers and Artists**
   - **Traits**: Creative, drawn to symbolism.
   - **Use Case**: Add layers of meaning to creative works.

6. **Puzzle and Riddle Enthusiasts**
   - **Traits**: Playful, intellectually curious.
   - **Use Case**: Solve complex problems or decode patterns.

7. **Conspiracy Theorists and Alternative Thinkers**
   - **Traits**: Skeptical of mainstream narratives.
   - **Use Case**: Uncover hidden truths or patterns.

---

## 🛠️ Core Functions

### `abjad("text"; table_code; shadda; detail)`
- **Purpose**: Calculate Abjad values for Arabic/Hebrew text.
- **Parameters**:
  - `text`: Arabic or Hebrew text.
  - `table_code`: 0-35 (historical numeral systems).
  - `shadda`: 1 (single count) or 2 (double count).
  - `detail`: 1 for letter-by-letter breakdown.
- **Example**:
  ```excel
  =ABJAD("النور", 1, 2, 0) → 256
  ```

### `bastet("text or number"; reps; table_code; language)`
- **Purpose**: Apply the usul-ul bast method for cosmic expansion.
- **Parameters**:
  - `text or number`: Input text or direct number.
  - `reps`: Number of expansion cycles.
  - `table_code`: Abjad table code (can be negative).
  - `language`: "ARABIC", "HEBREW", or "TURKCE".
- **Example**:
  ```excel
  =BASTET("کون", 7, -2, "ARABIC")
  ```

### `nutket(number; language)`
- **Purpose**: Convert numbers to Arabic/Hebrew/Turkish words.
- **Parameters**:
  - `number`: Between 0 and 999999999999999.
  - `language`: "ARABIC", "HEBREW", or "TURKCE".
- **Example**:
  ```excel
  =NUTKET(123, "ARABIC") → "مائة وثلاثة وعشرون"
  ```

### `unsur(text; output_type; element_code; shadda; guide)`
- **Purpose**: Sort letters by elemental classification.
- **Parameters**:
  - `text`: Arabic or Hebrew text.
  - `output_type`: 0 (quantity) or 1 (letter list).
  - `element_code`: 0 (fire), 1 (air), 2 (water), 3 (earth).
  - `shadda`: 1 (single count) or 2 (double count).
  - `guide`: Element classification system (e.g., Ibn Arabi).
- **Example**:
  ```excel
  =UNSUR("النور", 1, 0, 2, 1)
  ```

### `saf(text; separator; shadda)`
- **Purpose**: Purify text for Abjad analysis.
- **Parameters**:
  - `text`: Arabic or Hebrew text.
  - `separator`: 0 (keep spaces) or " " (add spaces).
  - `shadda`: 1 (single count) or 2 (double count).
- **Example**:
  ```excel
  =SAF("بِسْمِ اللَّهِ", 0, 2)
  ```

### `numbers2arab(cell)`
- **Purpose**: Convert Arabic numerals to Eastern Arabic numerals.
- **Parameters**:
  - `cell`: Cell containing numbers (0-9).
- **Example**:
  ```excel
  =NUMBERS2ARAB(A1) → Converts "123" to "١٢٣"
  ```

### `huddam(number; duty_type; method)`
- **Purpose**: Generate spiritual duty names.
- **Parameters**:
  - `number`: Calculated number for the spiritual being.
  - `duty_type`: "ULVI", "SUFLI", or custom suffix.
  - `method`: Abjad table code for calculation.
- **Example**:
  ```excel
  =HUDDAM(51, "ULVI", 1) → "Al-Malik al-Ayeel"
  ```

### `rakamtopla(number; digits)`
- **Purpose**: Reduce numbers to mystical digits.
- **Parameters**:
  - `number`: Any number.
  - `digits`: 1 (single digit), 2 (two digits), or 0 (all stages).
- **Example**:
  ```excel
  =RAKAMTOPLA(12345, 1) → 6
  ```

### `teksir("text"; "separator"; shadda)`
- **Purpose**: Duplicate letters for sigil creation.
- **Parameters**:
  - `text`: Arabic or Hebrew text.
  - `separator`: Character to separate letters (e.g., " ").
  - `shadda`: 1 (single count) or 2 (double count).
- **Example**:
  ```excel
  =TEKSIR("النور", " ", 2)
  ```

### `tesbeh(target; min_value; beads; sections)`
- **Purpose**: Calculate rosary resonance patterns.
- **Parameters**:
  - `target`: Target number from Abjad calculation.
  - `min_value`: Minimum value (e.g., 25).
  - `beads`: Number of rosary beads (e.g., 99).
  - `sections`: Number of rosary sections (e.g., 33).
- **Example**:
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

## 🔗 Resources
- [Live Web Calculator](https://one.fanclub.rocks/occult-abjad-calculator)
- [Mobile Implementation Guide](https://youtu.be/H1VLp7zScys)
- [Coders Weblog](https://one.fanclub.rocks/)

---

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

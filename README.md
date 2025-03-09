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

---

## 📜 Abjad Table Codes

| Code | System |
|------|--------|
| 0    | Minimum Abjad |
| 1    | Small Abjad (Cumel-i Kebir) |
| 2    | Big Abjad |
| 3    | Maximum Abjad |
| 4    | Small Abjad + Letter Quantity |
| 5    | Letter Quantity |
| 6-35 | Arabic-specific tables |

---

## 🔗 Resources
- [Live Web Calculator](https://one.fanclub.rocks/occult-abjad-calculator)
- [Mobile Implementation Guide](https://youtu.be/H1VLp7zScys)
- [Coders Weblog](https://one.fanclub.rocks/)

---

> *"Numbers are the language of the universe."*
> *– Ancient Proverb*
```

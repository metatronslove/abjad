import math
import random
import time
import traceback
# -------------------- Functions to modify -----------------------------

def abjad(metin, tablo=1, shadda=1, detail=0):
	try:
		abjadsum = S = N = T = SH = SM = err = hrk = space = newline = 0
		SN = nitem = ''
		for choosen in metin:
			if choosen in ['ا', 'أ', 'إ', 'آ', 'ء', 'ى']:
				if tablo in [1, 4, 5, 7, 10, 12, 15]: S = 1
				elif tablo in [0, 6, 11]: S = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13]: S = abjad('الف', tablo - 1, 1)
				elif tablo in [3, 9, 14]: S = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				else: err = 1
			elif choosen == 'ؤ':
				if tablo in [1, 4, 7, 10]: S = 7
				elif tablo in [12, 15]: S = 6
				elif tablo in [0, 6, 11]: S = asgar('ا', tablo + 1) + asgar('و', tablo + 1)
				elif tablo in [2, 8, 13]: S = abjad('الف', tablo - 1, 1) + abjad('واو', tablo - 1, 1)
				elif tablo in [3, 9, 14]: S = bastet('ا', 1, -1 - (tablo - 2) , 1, 'ARABIC') + bastet('و', 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ئ':
				if tablo in [1, 4, 7, 10]: S = 11
				elif tablo in [12, 15]: S = 7
				elif tablo in [0, 6, 11]: S = asgar('ا', tablo + 1) + asgar('ي', tablo + 1)
				elif tablo in [2, 8, 13]: S = abjad('الف', tablo - 1, 1) + abjad('يا', tablo - 1, 1)
				elif tablo in [3, 9, 14]: S = bastet('ا', 1, -1 - (tablo - 2) , 1, 'ARABIC') + bastet('ي', 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ۀ':
				if tablo in [1, 4, 7, 10]: S = 15
				elif tablo in [12, 15]: S = 13
				elif tablo in [0, 6, 11]: S = asgar('ي', tablo + 1) + asgar('ه', tablo + 1)
				elif tablo in [2, 8, 13]: S = abjad('يا', tablo - 1, 1) + abjad('ها', tablo - 1, 1)
				elif tablo in [3, 9, 14]: S = bastet('ي', 1, -1 - (tablo - 2) , 1, 'ARABIC') + bastet('ه', 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['ب', 'ﭖ']:
				if tablo in [1, 4, 7, 10]: S = 2
				elif tablo in [12, 15]: S = 9
				elif tablo in [0, 6, 11]: S = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13]: S = abjad('با', tablo - 1, 1)
				elif tablo in [3, 9, 14]: S = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['ج', 'ﭺ']:
				if tablo in [1, 4, 7, 10]: S = 3
				elif tablo in [12, 15]: S = 100
				elif tablo in [0, 6, 11]: S = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13]: S = abjad('جيم', tablo - 1, 1)
				elif tablo in [3, 9, 14]: S = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'د':
				if tablo in [1, 4, 7, 10]: S = 4
				elif tablo in [12, 15]: S = 70
				elif tablo in [0, 6, 11]: S = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13]: S = abjad('دال', tablo - 1, 1)
				elif tablo in [3, 9, 14]: S = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['ه', 'ة']:
				if tablo in [1, 4, 7, 10]: S = 5
				elif tablo in [12, 15]: S = 7
				elif tablo in [0, 6, 11]: S = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13]: S = abjad('ها', tablo - 1, 1)
				elif tablo in [3, 9, 14]: S = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'و':
				if tablo in [1, 4, 7, 10]: S = 6
				elif tablo in [12, 15]: S = 5
				elif tablo in [0, 6, 11]: S = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13]: S = abjad('واو', tablo - 1, 1)
				elif tablo in [3, 9, 14]: S = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['ز', 'ﮊ']:
				if tablo in [1, 4, 7, 10]: S = 7
				elif tablo in [12, 15]: S = 600
				elif tablo in [0, 6, 11]: S = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13]: S = abjad('زا', tablo - 1, 1)
				elif tablo in [3, 9, 14]: S = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ح':
				if tablo in [1, 4, 7, 10]: S = 8
				elif tablo in [12, 15]: S = 90
				elif tablo in [0, 6, 11]: S = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13]: S = abjad('حا', tablo - 1, 1)
				elif tablo in [3, 9, 14]: S = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ط':
				if tablo in [1, 4, 7, 10]: S = 9
				elif tablo in [12, 15]: S = 800
				elif tablo in [0, 6, 11]: S = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13]: S = abjad('طا', tablo - 1, 1)
				elif tablo in [3, 9, 14]: S = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['ی', 'ي']:
				if tablo in [1, 4, 7, 10]: S = 10
				elif tablo in [12, 15]: S = 6
				elif tablo in [0, 6, 11]: S = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13]: S = abjad('يا', tablo - 1, 1)
				elif tablo in [3, 9, 14]: S = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['ك', 'ﮒ', 'ک']:
				if tablo in [1, 4, 7, 10, 12, 15]: S = 20
				elif tablo in [0, 6, 11]: S = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13]: S = abjad('كاف', tablo - 1, 1)
				elif tablo in [3, 9, 14]: S = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ل':
				if tablo in [1, 4, 7, 10]: S = 30
				elif tablo in [12, 15]: S = 2
				elif tablo in [0, 6, 11]: S = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13]: S = abjad('لام', tablo - 1, 1)
				elif tablo in [3, 9, 14]: S = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ﻻ':
				if tablo in [1, 4, 7, 10]: S = 31				
				elif tablo in [12, 15]: S = 3
				elif tablo in [0, 6, 11]: S = asgar('ا', tablo + 1) + asgar('ل', tablo + 1)
				elif tablo in [2, 8, 13]: S = abjad('الف', tablo - 1, 1) + abjad('لام', tablo - 1, 1)
				elif tablo in [3, 9, 14]: S = bastet('ل', 1, -1 - (tablo - 2) , 1, 'ARABIC') + bastet('ا', 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'م':
				if tablo in [1, 4, 7, 10]: S = 40
				elif tablo in [12, 15]: S = 4
				elif tablo in [0, 6, 11]: S = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13]: S = abjad('ميم', tablo - 1, 1)
				elif tablo in [3, 9, 14]: S = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['ن', 'ﯓ']:
				if tablo in [1, 4, 7, 10]: S = 50
				elif tablo in [12, 15]: S = 3
				elif tablo in [0, 6, 11]: S = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13]: S = abjad('نون', tablo - 1, 1)
				elif tablo in [3, 9, 14]: S = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'س':
				if tablo in [1, 4, 12, 15]: S = 60				
				elif tablo in [7, 10]: S = 300
				elif tablo in [0, 6, 11]: S = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13]: S = abjad('سين', tablo - 1, 1)
				elif tablo in [3, 9, 14]: S = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ع':
				if tablo in [1, 4, 7, 10]: S = 70
				elif tablo in [12, 15]: S = 30
				elif tablo in [0, 6, 11]: S = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13]: S = abjad('عين', tablo - 1, 1)
				elif tablo in [3, 9, 14]: S = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ف':
				if tablo in [1, 4, 7, 10]: S = 80
				elif tablo in [12, 15]: S = 40
				elif tablo in [0, 6, 11]: S = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13]: S = abjad('فا', tablo - 1, 1)
				elif tablo in [3, 9, 14]: S = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ص':
				if tablo in [1, 4]: S = 90
				elif tablo in [7, 10]: S = 60
				elif tablo in [12, 15]: S = 400
				elif tablo in [0, 6, 11]: S = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13]: S = abjad('صاد', tablo - 1, 1)
				elif tablo in [3, 9, 14]: S = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ق':
				if tablo in [1, 4, 7, 10]: S = 100
				elif tablo in [12, 15]: S = 50
				elif tablo in [0, 6, 11]: S = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13]: S = abjad('قاف', tablo - 1, 1)
				elif tablo in [3, 9, 14]: S = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ر':
				if tablo in [1, 4, 7, 10]: S = 200
				elif tablo in [12, 15]: S = 8
				elif tablo in [0, 6, 11]: S = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13]: S = abjad('را', tablo - 1, 1)
				elif tablo in [3, 9, 14]: S = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ش':
				if tablo in [1, 4, 12, 15]: S = 300
				elif tablo in [7, 10]: S = 1000
				elif tablo in [0, 6, 11]: S = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13]: S = abjad('شين', tablo - 1, 1)
				elif tablo in [3, 9, 14]: S = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ت':
				if tablo in [1, 4, 7, 10]: S = 400
				elif tablo in [12, 15]: S = 10
				elif tablo in [0, 6, 11]: S = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13]: S = abjad('تا', tablo - 1, 1)
				elif tablo in [3, 9, 14]: S = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ث':
				if tablo in [1, 4, 7, 10]: S = 500
				elif tablo in [12, 15]: S = 700
				elif tablo in [0, 6, 11]: S = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13]: S = abjad('ثا', tablo - 1, 1)
				elif tablo in [3, 9, 14]: S = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'خ':
				if tablo in [1, 4, 7, 10]: S = 600
				elif tablo in [12, 15]: S = 200
				elif tablo in [0, 6, 11]: S = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13]: S = abjad('خا', tablo - 1, 1)
				elif tablo in [3, 9, 14]: S = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ذ':
				if tablo in [1, 4, 7, 10]: S = 700
				elif tablo in [12, 15]: S = 80
				elif tablo in [0, 6, 11]: S = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13]: S = abjad('ذال', tablo - 1, 1)
				elif tablo in [3, 9, 14]: S = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ض':
				if tablo in [1, 4]: S = 800
				elif tablo in [7, 10]: S = 90
				elif tablo in [12, 15]: S = 500
				elif tablo in [0, 6, 11]: S = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13]: S = abjad('ضاد', tablo - 1, 1)
				elif tablo in [3, 9, 14]: S = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ظ':
				if tablo in [1, 4]: S = 900
				elif tablo in [7, 10]: S = 800
				elif tablo in [12, 15]: S = 1000
				elif tablo in [0, 6, 11]: S = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13]: S = abjad('ظا', tablo - 1, 1)
				elif tablo in [3, 9, 14]: S = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'غ':
				if tablo in [1, 4]: S = 1000
				elif tablo in [7, 10, 12, 15]: S = 900
				elif tablo in [0, 6, 11]: S = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13]: S = abjad('غين', tablo - 1, 1)
				elif tablo in [3, 9, 14]: S = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'א':
				if tablo in [1, 4]: S = 1
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('אלף', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ב':
				if tablo in [1, 4]: S = 2
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('בית', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ג':
				if tablo in [1, 4]: S = 3
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('גימל', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ד':
				if tablo in [1, 4]: S = 4
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('דלת', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ה':
				if tablo in [1, 4]: S = 5
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('הא', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ו':
				if tablo in [1, 4]: S = 6
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('וו', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ז':
				if tablo in [1, 4]: S = 7
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('זין', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ח':
				if tablo in [1, 4]: S = 8
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('חית', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ט':
				if tablo in [1, 4]: S = 9
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('טיח', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'י':
				if tablo in [1, 4]: S = 10
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('יוד', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'כ':
				if tablo in [1, 4]: S = 20
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('כף', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ל':
				if tablo in [1, 4]: S = 30
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('למד', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'מ':
				if tablo in [1, 4]: S = 40
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('מם', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'נ':
				if tablo in [1, 4]: S = 50
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('נון', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ס':
				if tablo in [1, 4]: S = 60
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('סמך', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ע':
				if tablo in [1, 4]: S = 70
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('עין', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'פ':
				if tablo in [1, 4]: S = 80
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('פא', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'צ':
				if tablo in [1, 4]: S = 90
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('צדי', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ק':
				if tablo in [1, 4]: S = 100
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('קוף', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ר':
				if tablo in [1, 4]: S = 200
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('ריש', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ש':
				if tablo in [1, 4]: S = 300
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('שין', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ת':
				if tablo in [1, 4]: S = 400
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('תו', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ך':
				if tablo in [1, 4]: S = 500
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('ךף', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ם':
				if tablo in [1, 4]: S = 600
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('םם', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ן':
				if tablo in [1, 4]: S = 700
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('וןן', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ף':
				if tablo in [1, 4]: S = 800
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('ףא', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen == 'ץ':
				if tablo in [1, 4]: S = 900
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('ץדי', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['A', 'a']:
				if tablo in [1, 4]: S = 1
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('aa', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['B', 'b']:
				if tablo in [1, 4]: S = 2
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('be', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['C', 'c', 'Ç', 'ç']:
				if tablo in [1, 4]: S = 3
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('ce', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['D', 'd']:
				if tablo in [1, 4]: S = 4
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('de', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['E', 'e']:
				if tablo in [1, 4]: S = 5
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('ee', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['F', 'f']:
				if tablo in [1, 4]: S = 6
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('fe', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['G', 'g']:
				if tablo in [1, 4]: S = 7
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('ge', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['Ğ', 'ğ']:
				if tablo in [1, 4]: S = 8
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('yumuşakge', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['H', 'h']:
				if tablo in [1, 4]: S = 9
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('he', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['I', 'ı']:
				if tablo in [1, 4]: S = 10
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('ıı', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['İ', 'i']:
				if tablo in [1, 4]: S = 20
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('ii', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['J', 'j']:
				if tablo in [1, 4]: S = 30
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('je', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['K', 'k']:
				if tablo in [1, 4]: S = 40
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('ke', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['L', 'l']:
				if tablo in [1, 4]: S = 50
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('le', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['M', 'm']:
				if tablo in [1, 4]: S = 60
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('me', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['N', 'n']:
				if tablo in [1, 4]: S = 70
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('ne', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['O', 'o']:
				if tablo in [1, 4]: S = 80
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('oo', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['Ö', 'ö']:
				if tablo in [1, 4]: S = 90
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('öö', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['P', 'p']:
				if tablo in [1, 4]: S = 100
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('p', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['R', 'r']:
				if tablo in [1, 4]: S = 200
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('re', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['S', 's']:
				if tablo in [1, 4]: S = 300
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('se', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['Ş', 'ş']:
				if tablo in [1, 4]: S = 400
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('şe', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['T', 't']:
				if tablo in [1, 4]: S = 500
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('te', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['U', 'u']:
				if tablo in [1, 4]: S = 600
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('uu', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['Ü', 'ü']:
				if tablo in [1, 4]: S = 700
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('üü', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['V', 'v']:
				if tablo in [1, 4]: S = 800
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('ve', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['Y', 'y']:
				if tablo in [1, 4]: S = 900
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('ye', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: S = 1
				else: err = 1
			elif choosen in ['Z', 'z']:
				if tablo in [1, 4]: S = 1000
				elif tablo == 0: S = asgar(choosen, 1)
				elif tablo == 2: S = abjad('ze', 1, 1)
				elif tablo == 3: S = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: S = 1
				else: err = 1
			else:
				S = 0
				N += 1
				if choosen == 'ّ':
					if shadda == 2:
						C = 1
						while saf(metin[T-C], '') == '':
							C += 1
						SH += 1
						choosen = metin[T-C]
						S = abjad(metin[T-C], tablo, 1)
					elif shadda == 1: S = 0
					else: 
						err = 3
					hrk += 1
				elif choosen == 'ٰ':
					C = 1
					while saf(metin[T-C], '') == '' or metin[T-C] == 'ـ':
						if metin[T-C] == 'ـ' or saf(metin[T-C], '') == metin[T-C]: 
							S = abjad('ا', tablo, 1)
						else:
							C += 1
				elif choosen == ' ': space += 1
				elif choosen in ['َ', 'ِ', 'ً', 'ٍ', 'ُ', 'ْ', 'ٌ', 'ـ']: hrk += 1
				elif choosen in ['\n','\r']: newline += .5
				else:
					err = 2
					nitem += choosen
			T += 1
			if detail == 1:
				if saf(choosen, 0) == 'ا': SN += '[' + 'ا' + '=' + str(S) + ']'
				elif saf(choosen, 0) == choosen: SN += '[' + choosen + '=' + str(S) + ']'
			else: SM += S
		if tablo in [4, 10, 15]:
			if detail == 1 : SN += '[+' + str((len(metin) - N) + SH) + ' harf]'
			else : SM += ((len(metin) - N) + SH)
		if err == 0:
			if detail == 1: abjadsum = SN
			else: abjadsum = SM
		elif err == 1: abjadsum = 'Table Code?'
		elif err == 2: abjadsum = str(N - (space + hrk)) + ' Undefined:' + str(nitem) + ' ||' + str(space) + ' spaces||' + str(hrk) + ' harakat'
		elif err == 3: abjadsum = 'Shadda Option?'
	except Exception:
		traceback.print_exc()
	except: abjadsum = 'Error?'
	return abjadsum
	
def wordbyword(metin, tablo=1, shadda=1, detail=0):
	try:
		content = word = ''
		metin += ' '
		for counter in metin:
			word += counter
			if counter in [' ', '\n']:
				calculation =  '('  + str(abjad(word, tablo, shadda, detail)) + ')' + counter
				content = content + word + altayaz(calculation)
				word = ''
				calculation = ''
	except Exception:
		traceback.print_exc()
	except: content = 'Error?'
	return content
	
def is_int(value):
	if value is None: return False
	try: 
		int(value)
		return True
	except: return False
		
def bastet(metin, mt, tablo=1, shadda=1, language='ARABIC', detail=0):
	try:
		err = 0
		if is_int(metin): baster = int(metin)
		else:
			if tablo in range(0, 16): baster = abjad(metin, tablo, shadda)
			elif tablo in range(-16, 0):
				invertablo = (-1 * tablo) - 1
				baster = abjad(metin, invertablo, shadda)
		for hm in range(1, mt + 1):
			ns = ''
			ns = nutket(baster, language.upper())
			baster = 0
			if tablo in range(0, 16): baster = abjad(ns, tablo, 1) + abjad(ns, 5, 1)
			elif tablo in range(-16, 0): baster = abjad(ns, invertablo, 1)
			else: baster = 'Table Code?'
		if err == 0:
			if detail == 1:	baster = ns
		elif err == 1: baster = 'Language?'
		return baster
	except Exception:
		traceback.print_exc()
	except: return 'Error?'
	
def unsur(metin, otabiat, otype, shadda=1, guide=0):
	try:
		T = 0
		for selectable in metin:
			if selectable == 'ّ':
				if shadda == 2:
					C = 1
					while saf(metin[T-C], 0) == '':
						C += 1
					selectable = metin[T-C]
			if selectable in ['ا', 'ب', 'ج', 'س', 'ص', 'ر', 'خ', 'ه', 'ز', 'ح', 'ط', 'ي', 'ی', 'ل', 'ة', 'ث', 'د', 'ك', 'ع', 'ف', 'ق', 'ش', 'ض', 'و', 'م', 'ن', 'ت', 'ذ', 'ظ', 'غ']: selected += selectable
			elif selectable in ['أ', 'إ', 'آ', 'ء', 'ى']: selected += 'ا'
			elif selectable == 'ؤ': selected += 'و' + 'ا'
			elif selectable == 'ۀ': selected += 'ه' + 'ي'
			elif selectable == 'ئ':	selected += 'ي' + 'ا'
			elif selectable in ['א', 'ב', 'ג', 'ד', 'ה', 'ו', 'ז', 'ח', 'ט', 'י', 'כ', 'ל', 'מ', 'נ', 'ס', 'ע', 'פ', 'צ', 'ק', 'ר', 'ש', 'ת', 'ם', 'ן', 'ף', 'ץ', 'ך']: selected += selectable
			elif selectable.upper() in ['A', 'B', 'C', 'Ç', 'D', 'E', 'F', 'G', 'Ğ', 'H', 'I', 'İ', 'J', 'K', 'L', 'M', 'N', 'O', 'Ö', 'P', 'R', 'S', 'Ş', 'T', 'U', 'Ü', 'V', 'Y', 'Z']: selected += selectable.upper()
			T += 1
		metin = selected
		if guide in ['TURKCE', 0]:
			if otype in ['fire', 'ateş', 0]:
				for counter in metin:
					if counter in ['A', 'D', 'Ğ', 'J', 'N', 'R', 'U', 'Z']:
						liste += counter + ' '
						adet += 1
			elif otype in ['air', 'hava', 1]:
				for counter in metin:
					if counter in ['B', 'E', 'H', 'K', 'O', 'S', 'Ü']:
						liste += counter + ' '
						adet += 1
			elif otype in ['water', 'su', 2]:
				for counter in metin:
					if counter in ['C', 'F', 'I', 'L', 'Ö', 'Ş', 'V']:
						liste += counter + ' '
						adet += 1
			elif otype in ['earth', 'toprak', 3]:
				for counter in metin:
					if counter in ['Ç', 'G', 'İ', 'M', 'P', 'T', 'Y']:
						liste += counter + ' '
						adet += 1
		elif guide in ['HEBREW', 4]:
			if otype in ['fire', 'ateş', 0]:
				for counter in metin:
					if counter in ['א', 'ה', 'ט', 'מ', 'פ', 'ש', 'ף']:
						liste += counter + ' '
						adet += 1
			elif otype in ['air', 'hava', 1]:
				for counter in metin:
					if counter in ['ב', 'ו', 'י', 'נ', 'צ', 'ת', 'ץ']:
						liste += counter + ' '
						adet += 1
			elif otype in ['water', 'su', 2]:
				for counter in metin:
					if counter in ['ג', 'ז', 'כ', 'ס', 'ק', 'ם', 'ך']:
						liste += counter + ' '
						adet += 1
			elif otype in ['earth', 'toprak', 3]:
				for counter in metin:
					if counter in ['ד', 'ח', 'ל', 'ע', 'ר', 'ן']:
						liste += counter + ' '
						adet += 1
		elif guide in ['ARABI', 1]:
			if otype in ['fire', 'ateş', 0]:
				for counter in metin:
					if counter in ['ا', 'ه', 'ط', 'م', 'ف', 'ش', 'ذ']:
						liste += counter + ' '
						adet += 1
			elif otype in ['air', 'hava', 1]:
				for counter in metin:
					if counter in ['د', 'ح', 'ل', 'ع', 'ر', 'خ', 'غ']:
						liste += counter + ' '
						adet += 1
			elif otype in ['water', 'su', 2]:
				for counter in metin:
					if counter in ['ب', 'و', 'ن', 'ي', 'ی', 'ص', 'ت', 'ض']:
						liste += counter + ' '
						adet += 1
			elif otype in ['earth', 'toprak', 3]:
				for counter in metin:
					if counter in ['ج', 'ز', 'ك', 'س', 'ق', 'ث', 'ظ']:
						liste += counter + ' '
						adet += 1
		elif guide in ['BUNI', 2]:
			if otype in ['fire', 'ateş', 0]:
				for counter in metin:
					if counter in ['ا', 'ه', 'ط', 'م', 'ف', 'ش', 'ذ']:
						liste += counter + ' '
						adet += 1
			elif otype in ['air', 'hava', 1]:
				for counter in metin:
					if counter in ['ب', 'و', 'ن', 'ي', 'ی', 'ص', 'ت', 'ض']:
						liste += counter + ' '
						adet += 1
			elif otype in ['water', 'su', 2]:
				for counter in metin:
					if counter in ['د', 'ح', 'ل', 'ع', 'ر', 'خ', 'غ']:
						liste += counter + ' '
						adet += 1
			elif otype in ['earth', 'toprak', 3]:
				for counter in metin:
					if counter in ['ج', 'ز', 'ك', 'س', 'ق', 'ث', 'ظ']:
						liste += counter + ' '
						adet += 1
		elif guide in ['HUSEYNI', 3]:
			if otype in ['fire', 'ateş', 0]:
				for counter in metin:
					if counter in ['ا', 'ه', 'ط', 'م', 'ف', 'ش', 'ذ']:
						liste += counter + ' '
						adet += 1
			elif otype in ['air', 'hava', 1]:
				for counter in metin:
					if counter in ['ج', 'ز', 'ك', 'س', 'ق', 'ث', 'ظ']:
						liste += counter + ' '
						adet += 1
			elif otype in ['water', 'su', 2]:
				for counter in metin:
					if counter in ['د', 'ح', 'ل', 'ع', 'ر', 'خ', 'غ']:
						liste += counter + ' '
						adet += 1
			elif otype in ['earth', 'toprak', 3]:
				for counter in metin:
					if counter in ['ب', 'و', 'ي', 'ی', 'ن', 'ص', 'ت', 'ض']:
						liste += counter + ' '
						adet += 1
		else:
			if otype in ['fire', 'ateş', 0]:
				for counter in metin:
					if counter in ['ا', 'ب', 'ج', 'س', 'ص', 'ر', 'خ']:
						liste += counter + ' '
						adet += 1
			elif otype in ['air', 'hava', 1]:
				for counter in metin:
					if counter in ['ه', 'ز', 'ح', 'ط', 'ي', 'ل', 'ة', 'ث', 'ی']:
						liste += counter + ' '
						adet += 1
			elif otype in ['water', 'su', 2]:
				for counter in metin:
					if counter in ['د', 'ك', 'ع', 'ف', 'ق', 'ش', 'ض']:
						liste += counter + ' '
						adet += 1
			elif otype in ['earth', 'toprak', 3]:
				for counter in metin:
					if counter in ['و', 'م', 'ن', 'ت', 'ذ', 'ظ', 'غ']:
						liste += counter + ' '
						adet += 1
		if otabiat in ['liste', 'list', 1]:	return liste
		elif otabiat in ['adet', 'amount', 0]: return adet
	except Exception:
		traceback.print_exc()
	except: return 'Error?'
		
def saf(metin, ayrac=' ', shadda=1):
	try:
		T = 0; result = ''
		if ayrac == 0: irun = ''
		else: irun = ayrac
		for selectable in metin:
			if selectable == ' ':
				if ayrac == '':	s = selectable
				elif ayrac == 0: s = ''
				else: s = irun
			if selectable == 'ّ' and shadda == 2:
				C = 1
				while saf(metin[T-C], '') == '':
					C += 1
				selectable = metin[T-C]
			if selectable in ['ا', 'ب', 'ج', 'س', 'ص', 'ر', 'خ', 'ه', 'ز', 'ح', 'ط', 'ي', 'ی', 'ل', 'ة', 'ث', 'د', 'ك', 'ع', 'ف', 'ق', 'ش', 'ض', 'و', 'م', 'ن', 'ت', 'ذ', 'ظ', 'غ']: s = selectable + irun
			elif selectable in ['أ', 'إ', 'آ', 'ء', 'ى']: s = selectable + irun # 'ا'
			elif selectable == 'ؤ': s = selectable + irun# 'و' + 'ا'
			elif selectable == 'ۀ': 	s = selectable + irun # 'ه' + 'ي'
			elif selectable == 'ئ':	s = selectable + irun# 'ي' + 'ا'
			elif selectable in ['א', 'ב', 'ג', 'ד', 'ה', 'ו', 'ז', 'ח', 'ט', 'י', 'כ', 'ל', 'מ', 'נ', 'ס', 'ע', 'פ', 'צ', 'ק', 'ר', 'ש', 'ת', 'ם', 'ן', 'ף', 'ץ', 'ך']: s = selectable
			elif selectable in ['A', 'B', 'C', 'Ç', 'D', 'E', 'F', 'G', 'Ğ', 'H', 'I', 'İ', 'J', 'K', 'L', 'M', 'N', 'O', 'Ö', 'P', 'R', 'S', 'Ş', 'T', 'U', 'Ü', 'V', 'Y', 'Z']: s = selectable
			elif selectable in ['a', 'b', 'c', 'ç', 'd', 'e', 'f', 'g', 'ğ', 'h', 'ı', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'ö', 'p', 'r', 's', 'ş', 't', 'u', 'ü', 'v', 'y', 'z']: s = selectable
			else: s = ''
			T += 1
			result += s
		return result		
	except Exception:
		traceback.print_exc()
	except: return 'Error?'
	
def teksir(metin, ayrac=' ', shadda=1):
	try:
		if shadda == 2: newmetin = saf(metin, 0, 2)
		else: newmetin = saf(metin, 0)
		sonucu = ''; lengthdouble = 0
		result = saf(newmetin, ayrac) + '\n'
		iksir = newmetin
		for produce in range(1, len(newmetin)):
			if len(newmetin) / 2 == math.floor(len(newmetin) / 2): lengthdouble = 1
			iksir = ''
			for counter in range(1, 1 + math.floor(len(newmetin) / 2)):
				inverse = len(newmetin) - counter
				iksir += newmetin[inverse]
				iksir += newmetin[counter - 1]
			if lengthdouble != 1: iksir += newmetin[math.floor(len(newmetin) / 2)]
			sonucu = result + saf(iksir, ayrac) + '\n'
			result = sonucu
			newmetin = saf(iksir, 0)
		return sonucu
	except Exception:
		traceback.print_exc()
	except: return 'Error?'
		
def numbers2arab(metin):
	try:
		na = ''
		for choosen in metin:
			if choosen == '0': na += '٠'
			elif choosen == '1': na += '١'
			elif choosen == '2': na += '٢'
			elif choosen == '3': na += '٣'
			elif choosen == '4': na += '٤'
			elif choosen == '5': na += '٥'
			elif choosen == '6': na += '٦'
			elif choosen == '7': na += '٧'
			elif choosen == '8': na += '٨'
			elif choosen == '9': na += '٩'
			elif choosen == ' ': na += ' '
			else: na += choosen
		return na
	except: return 'Error?'
		
def tesbih(zkr, minimum, boncuk, bolum):
	try:
		if zkr < minumum: zkr *= zkr
		turn = math.floor(zkr / boncuk)
		zero = zkr - (turn * boncuk)
		part = math.floor(zero / bolum)
		once = zero - (part * bolum)
		if turn > 0: result = '[' + turn + ' turn]'
		if part > 0: result += '[' + part + 'x' + bolum + ']'
		if once > 0: result += '[and ' + once + ']'
		return result
	except:
		return 'Error?'
		
def altayaz(girdi):
	try:
		ss = ''
		for counter in girdi:
			if counter == '0': ss += '₀'
			elif counter == '1': ss += '₁'
			elif counter == '2': ss += '₂'
			elif counter == '3': ss += '₃'
			elif counter == '4': ss += '₄'
			elif counter == '5': ss += '₅'
			elif counter == '6': ss += '₆'
			elif counter == '7': ss += '₇'
			elif counter == '8': ss += '₈'
			elif counter == '9': ss += '₉'
			elif counter == '+': ss += '₊'
			elif counter == '-': ss += '₋'
			elif counter == '=': ss += '₌'
			elif counter in ['(', '[']: ss += '₍'
			elif counter in [')', ']']: ss += '₎'
			else: ss += counter
		return ss
	except: return 'Error?'

def rakamtopla(valuez, amount):
	try:
		if amount == 0:
			hepsi = str(valuez)
			while len(str(valuez)) > 1:
				newsum = 0
				for choosen in str(valuez):
					newsum += int(choosen)
				valuez = newsum
			hepsi += " ► " + newsum
			return hepsi
		else:
			while len(str(valuez)) > amount:
				newsum = 0
				for choosen in str(valuez):
					newsum += int(choosen)
				valuez = newsum
			return valuez
	except: return 'Error?'
		
def newline(amount):
	try:
		for rows in range(amount):
			nl += "\n"
		return nl
	except: return 'Error?'
		
def asgar(harf, level=1):
	try:
		c = abjad(harf, level, 1)
		if c > 12: return c - (12 * math.floor(c / 12))
		else: return c
	except:
		return 'Error?'
		
def nutket(mynumber, language='ARABIC'):
	try:
		temp = spell = ''
		count = 0
		if language.upper() == 'ARABIC':
			if mynumber == 0 and count == 0: return 'صفر'
			mynumber = str(mynumber)
			PlaceOnes = ['', 'ألف', 'مليون', 'مليار', 'تريليون']
			PlaceTwos = ['', 'ألفان', 'مليونان', 'ملياران', 'تريليونان']
			PlaceAppent = ['', 'ألفاً', 'مليوناً', 'ملياراً', 'تريليوناً']
			PlacePlural = ['', 'آلاف', 'ملايين', 'مليارات', 'تريليونات']
			while mynumber != '':
				EventHappenned = 0
				if count > 0 and float(mynumber[-3:]) == 1:
					temp = ''
					if len(spell) > 0: spell = PlaceOnes[count] + ' و ' + spell
					else: spell = PlaceOnes[count] + ' ' + spell
				elif count > 0 and float(mynumber[-3:]) == 2:
					temp = ''
					if len(spell) > 0: spell = PlaceTwos[count] + ' و ' + spell
					else: spell = PlaceTwos[count] + ' ' + spell
				else: temp = GetHundreds(mynumber[-3:], language.upper(), count, spell)
				if temp != '':
					if count > 0:
						if len(spell) > 0: spell = ' و ' + spell
						if float(mynumber[-3:]) != 2:
							if math.floor(float(mynumber[-3:]) / 100) != 1:
								if float(mynumber[-3:]) >= 3 and float(mynumber[-3:]) <= 10:
									spell =  ' ' + PlacePlural[count] + spell
									EventHappenned = 1
					if EventHappenned == 0:
						if len(spell) > 0: spell =  ' ' + PlaceAppent[count] + spell
						else: spell =  ' ' + PlaceOnes[count] + spell
						EventHappenned = 0
					spell = temp + spell
					temp = ''
				if len(mynumber) > 3: mynumber = mynumber[:len(mynumber) - 3]
				else: mynumber = ''
				count += 1
		elif language.upper() == 'HEBREW':
			if mynumber == 0 and count == 0: return 'אֶפֶס'
			mynumber = str(mynumber)
			PlaceOnes = ['', 'אלף', 'מיליון', 'מיליארד', 'טריליון']
			PlaceTwos = ['', 'אלפיים ', 'שני מיליון ', 'שני מיליארד ', 'שני טריליון ']
			PlaceAppent = ['', 'אלפא', 'מיליון', 'מיליארד', 'טריליון']
			PlacePlural = ['', 'אלפים', 'מיליונים', 'מיליארדים', 'טריליונים']
			while mynumber != '':
				EventHappenned = 0
				if count > 0 and float(mynumber[-3:]) == 1:
					temp = ''
					if len(spell) > 0: spell = PlaceOnes[count] + ' ו ' + spell
					else: spell = PlaceOnes[count] + ' ' + spell
				elif count > 0 and float(mynumber[-3:]) == 2:
					temp = ''
					if len(spell) > 0: spell = PlaceTwos[count] + ' ו ' + spell
					else: spell = PlaceTwos[count] + ' ' + spell
				else: temp = GetHundreds(mynumber[-3:], language.upper(), count, spell)
				if temp != '':
					if count > 0:
						if len(spell) > 0: spell = ' ו ' + spell
						if float(mynumber[-3:]) != 2:
							if math.floor(float(mynumber[-3:]) / 100) != 1:
								if float(mynumber[-3:]) >= 3 and float(mynumber[-3:]) <= 10:
									spell =  ' ' + PlacePlural[count] + spell
									EventHappenned = 1
					if EventHappenned == 0:
						if len(spell) > 0: spell =  ' ' + PlaceAppent[count] + spell
						else: spell =  ' ' + PlaceOnes[count] + spell
						EventHappenned = 0
					spell = temp + spell
					temp = ''
				if len(mynumber) > 3: mynumber = mynumber[:len(mynumber) - 3]
				else: mynumber = ''
				count += 1
		elif language.upper() == 'TURKCE':
			if mynumber == 0 and count == 0: return 'sıfır'
			Place = ['', 'bin ', 'milyon ', 'milyar ', 'trilyon ']
			mynumber = str(mynumber)
			while mynumber != '':
				if count == 1 and float(mynumber[-3:]) == 1:
					temp = ''
					spell = Place[count] + spell
				else: temp = GetHundreds(mynumber[-3:], language.upper())
				if temp != '':
					spell = temp + ' ' + Place[count] + spell
					temp = ''
				if len(mynumber) > 3: mynumber = mynumber[:len(mynumber) - 3]
				else: mynumber = ''
				count += 1
		return spell.strip()
	except Exception:
		traceback.print_exc()
	except:
		return 'Error?'
		
def GetHundreds(mynumber, language='ARABIC', count=0, spell=''):
	try:
		result = ''
		mynumber = ('000' + mynumber)[-3:]
		if language.upper() == 'ARABIC':
			if float(mynumber[0:1]) > 0:
				if float(mynumber[-2:]) == 0 and float(mynumber[1:2]) == 2:
					if count == 0: result = 'مئتان '
					else: result = 'مئتا '
				else:
					if float(mynumber[0:1]) == 1: result = 'مائة '
					elif float(mynumber[0:1]) == 2: result = 'مئتان '
					elif float(mynumber[0:1]) == 3: result = 'ثلاثمائة '
					elif float(mynumber[0:1]) == 4: result = 'أربعمائة '
					elif float(mynumber[0:1]) == 5: result = 'خمسمائة '
					elif float(mynumber[0:1]) == 6: result = 'ستمائة '
					elif float(mynumber[0:1]) == 7: result = 'سبعمائة '
					elif float(mynumber[0:1]) == 8: result = 'ثمانمائة '
					elif float(mynumber[0:1]) == 9: result = 'تسعمائة '
			if len(result) > 0 and float(mynumber[-2:]) != 0: result += ' و '
			if mynumber[1:2] != "0": result += str(GetTens(mynumber[-2:], language, count, float(mynumber[0:1]), result + spell))
			else: result += str(GetDigit(mynumber[2:3], language, count, result + spell))
		elif language.upper() == 'HEBREW':
			if float(mynumber[0:1]) > 0:
				if float(mynumber[0:1]) == 1: result = 'מאה '
				elif float(mynumber[0:1]) == 2: result = 'מאתיים '
				elif float(mynumber[0:1]) == 3: result = 'שלוש מאות '
				elif float(mynumber[0:1]) == 4: result = 'ארבע מאות '
				elif float(mynumber[0:1]) == 5: result = 'חמש מאות '
				elif float(mynumber[0:1]) == 6: result = 'שש מאות '
				elif float(mynumber[0:1]) == 7: result = 'שבע מאות '
				elif float(mynumber[0:1]) == 8: result = 'שמונה מאות '
				elif float(mynumber[0:1]) == 9: result = 'תשע מאות '
			if len(result) > 0 and float(mynumber[-2:]) != 0: result += ' ו '
			if mynumber[1:2] != "0": result += str(GetTens(mynumber[-2:], language, count, float(mynumber[0:1]), result + spell))
			else: result += str(GetDigit(mynumber[2:3], language, count, result + spell))
		elif language.upper() == 'TURKCE':
			if mynumber[0:1] != "0":
				if float(mynumber[0:1]) > 1: result = str(GetDigit(mynumber[0:1], language)) + ' yüz '
				else: result = 'yüz '
			if mynumber[1:2] != "0": result += str(GetTens(mynumber[-2:], language, count, float(mynumber[0:1]), result + spell))
			else: result += str(GetDigit(mynumber[2:3], language, count, result + spell))
		return result
	except Exception:
		traceback.print_exc()
	except:
		return 'Error?'
		
def GetTens(tenstext, language='ARABIC', count=0, hundreds=0, spell=''):
	try:
		result = ''
		if language.upper() == 'ARABIC':
			PlaceOnes = ['', 'ألف ', 'مليون ', 'مليار ', 'تريليون ']
			PlaceTwos = ['', 'ألفان ', 'مليونان ', 'ملياران ', 'تريليونان ']
			if float(tenstext[:1]) == 1:
				if float(tenstext) == 10: result = 'عشرة'
				elif float(tenstext) == 11: result = 'إحدى عشرة'
				elif float(tenstext) == 12: result = 'اثنتا عشرة'
				elif float(tenstext) == 13: result = 'ثلاث عشرة'
				elif float(tenstext) == 14: result = 'أربع عشرة'
				elif float(tenstext) == 15: result = 'خمس عشرة'
				elif float(tenstext) == 16: result = 'ست عشرة'
				elif float(tenstext) == 17: result = 'سبع عشرة'
				elif float(tenstext) == 18: result = 'ثماني عشرة'
				elif float(tenstext) == 19: result = 'تسع عشرة'
			else:
				if float(tenstext[:1]) == 2 and hundreds == 0 and count > 0: result = PlaceTwos[count] + result
				else:
					if float(tenstext[:1]) == 2 and count > 1: result = PlaceOnes[count] + result
					elif float(tenstext[:1]) == 1 or float(tenstext[:1]) == 2:
						if count == 1 and hundreds == 0 and float(tenstext) == 0: result = result + ''
				if float(tenstext) > 0:
					if float(tenstext[:1]) > 1: result += str(GetTensStatus(float(tenstext[:1]), language))
					if len(result) > 0 and float(tenstext[-1:]) != 0: result += 'و '
					result += str(GetDigit(tenstext[-1:], language))
				else:
					if len(spell) > 0  and float(tenstext[:1]) != 0 or len(result) > 0 and float(tenstext[:1]) != 0: result += 'و '
					result += str(GetTensStatus(float(tenstext[:1]), language))
		elif language.upper() == 'HEBREW':
			PlaceOnes = ['', 'אלפים ', 'מיליון ', 'מיליארד ', 'טריליון ']
			PlaceTwos = ['', 'אלפיים ', 'שני מיליון ', 'שני מיליארד ', 'שני טריליון ']
			if float(tenstext[:1]) == 1:
				if float(tenstext) == 10: result = 'עשר '
				elif float(tenstext) == 11: result = 'אחת עשרה '
				elif float(tenstext) == 12: result = 'שתים עשרה '
				elif float(tenstext) == 13: result = 'שלוש עשרה '
				elif float(tenstext) == 14: result = 'ארבע עשרה '
				elif float(tenstext) == 15: result = 'חמש עשרה '
				elif float(tenstext) == 16: result = 'שש עשרה '
				elif float(tenstext) == 17: result = 'שבע עשרה '
				elif float(tenstext) == 18: result = 'שמונה עשרה '
				elif float(tenstext) == 19: result = 'תשע עשרה '
			else:
				if float(tenstext[:1]) == 2 and hundreds == 0 and count > 0: result = PlaceTwos[count] + result
				else:
					if float(tenstext[:1]) == 2 and count > 1: result = PlaceOnes[count] + result
					elif float(tenstext[:1]) == 1 or float(tenstext[:1]) == 2:
						if count == 1 and hundreds == 0 and float(tenstext) == 0: result = result + ''
				if float(tenstext) > 0:
					if float(tenstext[:1]) > 1: result += str(GetTensStatus(float(tenstext[:1]), language))
					if len(result) > 0 and float(tenstext[-1:]) != 0: result += 'ו '
					result += str(GetDigit(tenstext[-1:], language))
				else:
					if len(spell) > 0  and float(tenstext[:1]) != 0 or len(result) > 0 and float(tenstext[:1]) != 0: result += 'ו '
					result += str(GetTensStatus(float(tenstext[:1]), language))
		elif language.upper() == 'TURKCE':
			if float(tenstext[:1]) == 1: result = "on "
			elif float(tenstext[:1]) == 2: result = "yirmi "
			elif float(tenstext[:1]) == 3: result = "otuz "
			elif float(tenstext[:1]) == 4: result = "kırk "
			elif float(tenstext[:1]) == 5: result = "elli "
			elif float(tenstext[:1]) == 6: result = "altmış "
			elif float(tenstext[:1]) == 7: result = "yetmiş "
			elif float(tenstext[:1]) == 8: result = "seksen "
			elif float(tenstext[:1]) == 9: result = "doksan "
			result += str(GetDigit(tenstext[-1:], language))
		return result
	except Exception:
		traceback.print_exc()
	except:
		return 'Error?'
		
def GetTensStatus(tens, language='ARABIC'):
	try:
		if language.upper() == 'ARABIC':
			if tens == 2: result = 'عشرين '
			elif tens == 3: result = 'ثلاثين '
			elif tens == 4: result = 'أربعين '
			elif tens == 5: result = 'خمسين '
			elif tens == 6: result = 'ستين '
			elif tens == 7: result = 'سبعين '
			elif tens == 8: result = 'ثمانين '
			elif tens == 9: result = 'تسعين '
		elif language.upper() == 'HEBREW':
			if tens == 2: result = 'עשרים '
			elif tens == 3: result = 'שלושים '
			elif tens == 4: result = 'ארבעים '
			elif tens == 5: result = 'חמישים '
			elif tens == 6: result = 'שישים '
			elif tens == 7: result = 'שבעים '
			elif tens == 8: result = 'שמונים '
			elif tens == 9: result = 'תשעים '
		return result
	except Exception:
		traceback.print_exc()
	except:
		return 'Error?'
		
def GetDigit(digit, language='ARABIC'):
	try:
		if language.upper() == 'ARABIC':
			if float(digit) == 1: return 'احد'
			elif float(digit) == 2: return 'اثنان'
			elif float(digit) == 3: return 'ثلاثة'
			elif float(digit) == 4: return 'أربعة'
			elif float(digit) == 5: return 'خمسة'
			elif float(digit) == 6: return 'ستة'
			elif float(digit) == 7: return 'سبعة'
			elif float(digit) == 8: return 'ثمانية'
			elif float(digit) == 9: return 'تسعة'
			else: return ''
		elif language.upper() == 'HEBREW':
			if float(digit) == 1: return 'אחת'
			elif float(digit) == 2: return 'שניים'
			elif float(digit) == 3: return 'שלושה'
			elif float(digit) == 4: return 'ארבעה'
			elif float(digit) == 5: return 'חמש'
			elif float(digit) == 6: return 'שישה'
			elif float(digit) == 7: return 'שבע'
			elif float(digit) == 8: return 'שמונה'
			elif float(digit) == 9: return 'תשע'
			else: return ''
		elif language.upper() == 'TURKCE':
			if float(digit) == 1: return 'bir'
			elif float(digit) == 2: return 'iki'
			elif float(digit) == 3: return 'üç'
			elif float(digit) == 4: return 'dört'
			elif float(digit) == 5: return 'beş'
			elif float(digit) == 6: return 'altı'
			elif float(digit) == 7: return 'yedi'
			elif float(digit) == 8: return 'sekiz'
			elif float(digit) == 9: return 'dokuz'
			else: return ''
	except Exception:
		traceback.print_exc()
	except:
		return 'Error?'

def huddam(num, htype='ulvi', method=1):
	try:
		h = gh = ''
		counts = 1
		hpart = ['']
		htype = htype.upper()
		method = 1
		if method not in [7, 12]: method = 1
		if htype in ['ULVI', 'ULVİ']: suffix = abjad('ئيل', method, 1)
		elif htype in ['SUFLI', 'SUFLİ']: suffix = abjad('يوش', method, 1)
		elif htype in ['ŞER', 'SER']: suffix = abjad('طيش', method, 1)
		else: suffix = abjad(htype, method, 1)
		while suffix >= num:
			num += 361
		preffix = str(num - suffix)
		if len(preffix) > 3:
			for departs in range(len(preffix), len(preffix) - (math.floor(len(preffix) / 3) * 3), -3):
				hpart.insert(counts, preffix[departs-3:departs])
				counts += 1
			rest = len(preffix) - ((counts - 1) * 3)
			if rest > 0: hpart.insert(counts, preffix[0:rest])
			else: counts -= 1
		else: hpart.insert(1, preffix)
		for counter in range(counts, 0, -1):
			for counting in range(len(str(hpart[counter]))):
				choosen = str(hpart[counter])[counting]
				turn = (4 - len(str(hpart[counter]))) + counting
				if turn == 3:
					if int(choosen) == 1:
						if 1 < len(str(hpart[counter])):
							h = 'ا'
						elif counts == 1:
							h = 'ا'
					elif int(choosen) == 2:
						if method == 12: h = 'ل'
						elif method in [1, 7]: h = 'ب'
					elif int(choosen) == 3:
						if method == 12: h = 'ن'
						elif method in [1, 7]: h = 'ج'
					elif int(choosen) == 4:
						if method == 12: h = 'م'
						elif method in [1, 7]: h = 'د'
					elif int(choosen) == 5:
						if method == 12: h = 'و'
						elif method in [1, 7]: h = 'ه'
					elif int(choosen) == 6:
						if method == 12: h = 'ي'
						elif method in [1, 7]: h = 'و'
					elif int(choosen) == 7:
						if method == 12: h = 'ه'
						elif method in [1, 7]: h = 'ز'
					elif int(choosen) == 8:
						if method == 12: h = 'ر'
						elif method in [1, 7]: h = 'ح'
					elif int(choosen) == 9:
						if method == 12: h = 'ب'
						elif method in [1, 7]: h = 'ط'
					elif int(choosen) == 0:
						if method in [1, 7, 12]: h = ''
					else: thyletter = h = ''
				elif turn == 2:
					if int(choosen) == 1:
						if method == 12: h = 'ت'
						elif method in [1, 7]: h = 'ي'
					elif int(choosen) == 2:
						h = 'ك'
					elif int(choosen) == 3:
						if method == 12: h = 'ع'
						elif method in [1, 7]: h = 'ل'
					elif int(choosen) == 4:
						if method == 12: h = 'ف'
						elif method in [1, 7]: h = 'م'
					elif int(choosen) == 5:
						if method == 12: h = 'ق'
						elif method in [1, 7]: h = 'ن'
					elif int(choosen) == 6:
						if method == 7: h = 'ص'
						elif method in [1, 12]: h = 'س'
					elif int(choosen) == 7:
						if method == 12: h = 'د'
						elif method in [1, 7]: h = 'ع'
					elif int(choosen) == 8:
						if method == 12: h = 'ذ'
						elif method in [1, 7]: h = 'ف'
					elif int(choosen) == 9:
						if method == 1: h = 'ص'
						elif method == 7: h = 'ض'
						elif method == 12: h = 'ح'
					elif int(choosen) == 0:
						if method in [1, 7, 12]: h = ''
					else: thyletter = h = ''
				elif turn == 1:
					if int(choosen) == 1:
						if method == 12: h = 'ج'
						elif method in [1, 7]: h = 'ق'
					elif int(choosen) == 2:
						if method == 12: h = 'خ'
						elif method in [1, 7]: h = 'ر'
					elif int(choosen) == 3:
						if method == 7: h = 'س'
						elif method in [1, 12]: h = 'ش'
					elif int(choosen) == 4:
						if method == 12: h = 'ص'
						elif method in [1, 7]: h = 'ت'
					elif int(choosen) == 5:
						if method == 12: h = 'ض'
						elif method in [1, 7]: h = 'ث'
					elif int(choosen) == 6:
						if method == 12: h = 'ز'
						elif method in [1, 7]: h = 'خ'
					elif int(choosen) == 7:
						if method == 12: h = 'ث'
						elif method in [1, 7]: h = 'ذ'
					elif int(choosen) == 8:
						if method == 1: h = 'ض'
						elif method == 7: h = 'ظ'
						elif method == 12: h = 'ط'
					elif int(choosen) == 9:
						if method == 1: h = 'ظ'
						elif method in[7, 12]: h = 'غ'
					else: thyletter = h = ''
				if h is not None and h != '':
					gh += h
					h = ''
			if hpart[counter] is not None:
				for counted in range(1, counter):
					if method == 1:	gh += 'غ'
					elif method == 7: gh += 'ش'
					elif method == 12: gh += 'ظ'
					if h is not None and h != '':
						gh += h
						h = ''
		if method in [1, 7, 12]:
			if htype in ['ULVI', 'ULVİ']: gh += 'ئيل'
			elif htype in ['SUFLI', 'SUFLİ']: gh += 'يوش'
			elif htype in ['ŞER', 'SER']: gh += 'طيش'
			else: gh += htype
		else: gh = htype
		return gh
	except RecursionError:
		print('thyletter =', thyletter, 'coupler =', coupler, 'sesver', sesver(thyletter, ses))
	except Exception:
		traceback.print_exc()
	except:
		return 'Error?'

# ----------------------------------------------------------------------
print('test kodu yürütülüyor') #Foksiyonları konsolda deneyebilirsin. Bu kodların amacı, eğer fonksiyonel hale gelirse ADD-IN 
# içinde kullanmaktır. (LibreOffice Add-in) Henüz kodlar tamamlanmadı, imkanın varsa katkı sağlamak için konsepti anlamaya çalış.
start = time.time()
start = time.time()
a = random.randrange(71, 1070)
b = a + 5
saglam = 0
for i in range(a, b):
	t = bastet(i, 1, 1, 1, 'ARABIC')
	print('\033[1;32m'+str(t)+'\033[1;m', bastet(i, 1, 1, 1, 'ARABIC', 1), i)
end = time.time()
print(end - start, '\033[1;32m'+str(saglam)+'\033[1;m')

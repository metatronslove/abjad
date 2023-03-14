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
		for counter in metin:
			word += counter
			if counter == ' ':
				calculation =  '('  + str(abjad(word, tablo, shadda, detail)) + ') '
				content = content + word + altayaz(calculation)
				word = ''
				calculation = '' 
		else:
			calculation =  '('  + str(abjad(word, tablo, shadda, detail)) + ') '
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
			for bc in range(0, len(str(baster))):
				turn = len(str(baster)) - bc - 1
				choosen = int(str(baster)[turn])
				if language == 'ARABIC':
					if bc == 0:
						if choosen == 1: ns += ' احد'
						elif choosen == 2: ns += ' اثنان'
						elif choosen == 3: ns += ' ثلاثة'
						elif choosen == 4: ns += ' أربعة'
						elif choosen == 5: ns += ' خمسة'
						elif choosen == 6: ns += ' ستة'
						elif choosen == 7: ns += ' سبعة'
						elif choosen == 8: ns += ' ثمانية'
						elif choosen == 9: ns += ' تسعة'
					elif bc == 1:
						if choosen == 1: ns += ' عشرة'
						elif choosen == 2: ns += ' عشرين'
						elif choosen == 3: ns += ' ثلاثين'
						elif choosen == 4: ns += ' أربعين'
						elif choosen == 5: ns += ' خمسين'
						elif choosen == 6: ns += ' ستين'
						elif choosen == 7: ns += ' سبعين'
						elif choosen == 8: ns += ' ثمانين'
						elif choosen == 9: ns += ' تسعين'
					elif bc == 2:
						if choosen == 1: ns += ' مائة'
						elif choosen == 2: ns += ' مائتان'
						elif choosen == 3: ns += ' ثلثمائة'
						elif choosen == 4: ns += ' أربعمائة'
						elif choosen == 5: ns += ' خمسمائة'
						elif choosen == 6: ns += ' ستمائة'
						elif choosen == 7: ns += ' سبعمائة'
						elif choosen == 8: ns += ' ثمانمائة'
						elif choosen == 9: ns += ' تسعمائة'
					elif bc == 3:
						if choosen == 0 and len(str(baster)) > 4: ns += ' ألأف'
						elif choosen == 1: ns += ' ألف'
						elif choosen == 2: ns += ' ألفان'
						elif choosen == 3: ns += ' ثلاثة آلاف'
						elif choosen == 4: ns += ' أربعة آلاف'
						elif choosen == 5: ns += ' خمسة آلاف'
						elif choosen == 6: ns += ' ستة آلاف'
						elif choosen == 7: ns += ' سبعة آلاف'
						elif choosen == 8: ns += ' ثمانية آلاف'
						elif choosen == 9: ns += ' تسعة آلاف'
					elif bc == 4:
						if choosen == 1: ns += ' عشرة '
						elif choosen == 2: ns += ' عشرين '
						elif choosen == 3: ns += ' ثلاثون '
						elif choosen == 4: ns += ' أربعين '
						elif choosen == 5: ns += ' خمسون '
						elif choosen == 6: ns += ' ستين '
						elif choosen == 7: ns += ' سبعين '
						elif choosen == 8: ns += ' ثمانين '
						elif choosen == 9: ns += ' تسعين '
					elif bc == 5:
						if choosen == 1: ns += ' مائة '
						elif choosen == 2: ns += ' مائتان '
						elif choosen == 3: ns += ' ثلاثمائة '
						elif choosen == 4: ns += ' أربعمائة '
						elif choosen == 5: ns += ' خمسمائة '
						elif choosen == 6: ns += ' ستمائة '
						elif choosen == 7: ns += ' سبعمائة '
						elif choosen == 8: ns += ' ثمانمائة '
						elif choosen == 9: ns += ' تسعمائة '
					elif bc == 6:
						if choosen == 0 and len(str(baster)) > 7: ns += ' مليون'
						elif choosen == 1: ns += ' مليون'
						elif choosen == 2: ns += ' مليونان'
						elif choosen == 3: ns += ' ثلاثة مليون'
						elif choosen == 4: ns += ' أربعة مليون'
						elif choosen == 5: ns += ' خمسة مليون'
						elif choosen == 6: ns += ' ستة مليون'
						elif choosen == 7: ns += ' سبعة مليون'
						elif choosen == 8: ns += ' ثمانية مليون'
						elif choosen == 9: ns += ' تسعة مليون'
					elif bc == 7:
						if choosen == 1: ns += ' عشرة '
						elif choosen == 2: ns += ' عشرين '
						elif choosen == 3: ns += ' ثلاثين '
						elif choosen == 4: ns += ' أربعين '
						elif choosen == 5: ns += ' خمسين '
						elif choosen == 6: ns += ' ستين '
						elif choosen == 7: ns += ' سبعون '
						elif choosen == 8: ns += ' ثمانون '
						elif choosen == 9: ns += ' تسعين '
				elif language == 'HEBREW':
					if bc == 0:
						if choosen == 1: ns += ' אחת'
						elif choosen == 2: ns += ' שתים'
						elif choosen == 3: ns += ' שלש'
						elif choosen == 4: ns += ' ארבע'
						elif choosen == 5: ns += ' חמש'
						elif choosen == 6: ns += ' שש'
						elif choosen == 7: ns += ' שבע'
						elif choosen == 8: ns += ' שמונה'
						elif choosen == 9: ns += ' תשע'
					elif bc == 1:
						if choosen == 1: ns += ' עשר'
						elif choosen == 2: ns += ' עשרים'
						elif choosen == 3: ns += ' שלושים'
						elif choosen == 4: ns += ' ארבעים'
						elif choosen == 5: ns += ' חמישים'
						elif choosen == 6: ns += ' ששים'
						elif choosen == 7: ns += ' שבעים'
						elif choosen == 8: ns += ' שמונים'
						elif choosen == 9: ns += ' תשעים'
					elif bc == 2:
						if choosen == 1: ns += ' מאה'
						elif choosen == 2: ns += ' מָאתַיִם'
						elif choosen == 3: ns += ' שְׁלוֹשׁ מֵאוֹת'
						elif choosen == 4: ns += ' אַרְבַּע מֵאוֹת'
						elif choosen == 5: ns += ' חֲמֵשׁ מֵאוֹת'
						elif choosen == 6: ns += ' שֵׁשׁ מֵאוֹת'
						elif choosen == 7: ns += ' שְׁבַע מֵאוֹת'
						elif choosen == 8: ns += ' שְׁמוֹנֶה מֵאוֹת'
						elif choosen == 9: ns += ' תְּשַׁע מֵאוֹת'
					elif bc == 3:
						if choosen == 0 and len(str(baster)) > 4: ns += ' אלף'
						elif choosen == 1: ns += ' אלף'
						elif choosen == 2: ns += ' אלפיים'
						elif choosen == 3: ns += ' שלושה אלף'
						elif choosen == 4: ns += ' ארבעת אלפים'
						elif choosen == 5: ns += ' חמשת אלפים'
						elif choosen == 6: ns += ' ששת אלפים'
						elif choosen == 7: ns += ' שבעת אלפים'
						elif choosen == 8: ns += ' שמונת אלפים'
						elif choosen == 9: ns += ' תשעת אלפים'
					elif bc == 4:
						if choosen == 1: ns += ' עשרתים'
						elif choosen == 2: ns += ' עשרים '
						elif choosen == 3: ns += ' שלושים '
						elif choosen == 4: ns += ' ארבעים '
						elif choosen == 5: ns += ' חמישים '
						elif choosen == 6: ns += ' שישים '
						elif choosen == 7: ns += ' שבעים '
						elif choosen == 8: ns += ' שמונים '
						elif choosen == 9: ns += ' תשעים '
					elif bc == 5:
						if choosen == 1: ns += ' מאה '
						elif choosen == 2: ns += ' מאתיים '
						elif choosen == 3: ns += ' שלוש מאות '
						elif choosen == 4: ns += ' ארבע מאות '
						elif choosen == 5: ns += ' חמש מאות '
						elif choosen == 6: ns += ' שש מאות '
						elif choosen == 7: ns += ' שבע מאות '
						elif choosen == 8: ns += ' שמונה מאות '
						elif choosen == 9: ns += ' תשע מאות '
					elif bc == 6:
						if choosen == 0 and len(str(baster)) > 7: ns += ' מיליון'
						elif choosen == 1: ns += ' מיליון'
						elif choosen == 2: ns += ' שני מיליון'
						elif choosen == 3: ns += ' שלושה מיליון'
						elif choosen == 4: ns += ' ארבע מיליון'
						elif choosen == 5: ns += ' חמישה מיליון'
						elif choosen == 6: ns += ' שישה מיליון'
						elif choosen == 7: ns += ' שבעה מיליון'
						elif choosen == 8: ns += ' שמונה מליון'
						elif choosen == 9: ns += ' תשעה מיליון'
					elif bc == 7:
						if choosen == 1: ns += ' עשר '
						elif choosen == 2: ns += ' עשרים '
						elif choosen == 3: ns += ' שלושים '
						elif choosen == 4: ns += ' ארבעים '
						elif choosen == 5: ns += ' חמישים '
						elif choosen == 6: ns += ' שישים '
						elif choosen == 7: ns += ' שבעים '
						elif choosen == 8: ns += ' שמונים '
						elif choosen == 9: ns += ' תשעים '
				if language == 'TURKCE':
					if bc == 0:
						if choosen == 1: ns += ' bir'
						elif choosen == 2: ns += ' iki'
						elif choosen == 3: ns += ' üç'
						elif choosen == 4: ns += ' dört'
						elif choosen == 5: ns += ' beş'
						elif choosen == 6: ns += ' altı'
						elif choosen == 7: ns += ' yedi'
						elif choosen == 8: ns += ' sekiz'
						elif choosen == 9: ns += ' dokuz'
					elif bc == 1:
						if choosen == 1: ns += ' on'
						elif choosen == 2: ns += ' yirmi'
						elif choosen == 3: ns += ' otuz'
						elif choosen == 4: ns += ' kırk'
						elif choosen == 5: ns += ' elli'
						elif choosen == 6: ns += ' altmış'
						elif choosen == 7: ns += ' yetmiş'
						elif choosen == 8: ns += ' seksen'
						elif choosen == 9: ns += ' doksan'
					elif bc == 2:
						if choosen == 1: ns += ' yüz'
						elif choosen == 2: ns += ' ikiyüz'
						elif choosen == 3: ns += ' üçyüz'
						elif choosen == 4: ns += ' dörtyüz'
						elif choosen == 5: ns += ' beşyüz'
						elif choosen == 6: ns += ' altıyüz'
						elif choosen == 7: ns += ' yediyüz'
						elif choosen == 8: ns += ' sekizyüz'
						elif choosen == 9: ns += ' dokuzyüz'
					elif bc == 3:
						if choosen == 0 and len(str(baster)) > 4:
								ns += ' bin'
						elif choosen == 1:
							if len(str(baster)) > 4: ns += ' bir bin'
							else: ns += ' bin'
						elif choosen == 2: ns += ' ikibin'
						elif choosen == 3: ns += ' üçbin'
						elif choosen == 4: ns += ' dörtbin'
						elif choosen == 5: ns += ' beşbin'
						elif choosen == 6: ns += ' altıbin'
						elif choosen == 7: ns += ' yedibin'
						elif choosen == 8: ns += ' sekizbin'
						elif choosen == 9: ns += ' dokuzbin'
					elif bc == 4:
						if choosen == 1: ns += ' on'
						elif choosen == 2: ns += ' yirmi'
						elif choosen == 3: ns += ' otuz'
						elif choosen == 4: ns += ' kırk'
						elif choosen == 5: ns += ' elli'
						elif choosen == 6: ns += ' altmıi'
						elif choosen == 7: ns += ' yetmiş'
						elif choosen == 8: ns += ' seksen'
						elif choosen == 9: ns += ' doksan'
					elif bc == 5:
						if choosen == 1: ns += ' yüz'
						elif choosen == 2: ns += 'ikiyüz'
						elif choosen == 3: ns += ' üçyüz'
						elif choosen == 4: ns += ' dörtyüz'
						elif choosen == 5: ns += ' beşyüz'
						elif choosen == 6: ns += ' altıyüz'
						elif choosen == 7: ns += ' yediyüz'
						elif choosen == 8: ns += ' sekizyüz'
						elif choosen == 9: ns += ' dokuzyüz'
					elif bc == 6:
						if choosen == 0 and len(str(baster)) > 7: ns += ' milyon'
						elif choosen == 1: ns += ' bir milyon'
						elif choosen == 2: ns += ' iki milyon'
						elif choosen == 3: ns += ' üç milyon'
						elif choosen == 4: ns += ' dört milyon'
						elif choosen == 5: ns += ' beş milyon'
						elif choosen == 6: ns += ' altı milyon'
						elif choosen == 7: ns += ' yedi milyon'
						elif choosen == 8: ns += ' sekiz milyon'
						elif choosen == 9: ns += ' dokuz milyon'
					elif bc == 7:
						if choosen == 1: ns += ' on'
						elif choosen == 2: ns += ' yirmi'
						elif choosen == 3: ns += ' otuz'
						elif choosen == 4: ns += ' kırk'
						elif choosen == 5: ns += ' elli'
						elif choosen == 6: ns += ' altmış'
						elif choosen == 7: ns += ' yetmiş'
						elif choosen == 8: ns += ' seksen'
						elif choosen == 9: ns += ' doksan'
				else: err = 1
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
		elif ayrac == ' ': irun = ' '
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

def huddam(num, htype='ulvi', method=1):
	try:
		h = gh = ''
		counts = 1
		hpart = ['']
		htype = htype.upper()
		if method == 7:
			if htype in ['ULVI', 'ULVİ']: suffix = abjad('ئيل', 7, 1)
			elif htype in ['SUFLI', 'SUFLİ']: suffix = abjad('يوش', 7, 1)
			elif htype in ['ŞER', 'SER']: suffix = abjad('طيش', 7, 1)
			else: suffix = abjad(htype, 7, 1)
		elif method == 12:
			if htype in ['ULVI', 'ULVİ']: suffix = abjad('ئيل', 12, 1)
			elif htype in ['SUFLI', 'SUFLİ']: suffix = abjad('يوش', 12, 1)
			elif htype in ['ŞER', 'SER']: suffix = abjad('طيش', 12, 1)
			else: suffix = abjad(htype, 12, 1)
		else:
			method = 1
			if htype in ['ULVI', 'ULVİ']: suffix = abjad('ئيل', 1, 1)
			elif htype in ['SUFLI', 'SUFLİ']: suffix = abjad('يوش', 1, 1)
			elif htype in ['ŞER', 'SER']: suffix = abjad('طيش', 1, 1)
			else: suffix = abjad(htype, 1, 1)
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
order = 0
fire = air = water = earth = ''
for k in ['A', 'B', 'C', 'Ç', 'D', 'E', 'F', 'G', 'Ğ', 'H', 'I', 'İ', 'J', 'K', 'L', 'M', 'N', 'O', 'Ö', 'P', 'R', 'S', 'Ş', 'T', 'U', 'Ü', 'V', 'Y', 'Z']:
	if order == 0: 
		fire += '\'' + k + '\', '
		order += 1
	elif order == 1: 
		air += '\'' + k + '\', '
		order += 1
	elif order == 2: 
		water += '\'' + k + '\', '
		order += 1
	elif order == 3: 
		earth += '\'' + k + '\', '
		order = 0
end = time.time()
print(end - start, '\n fire', '\033[1;32m' + fire + '\033[1;m\n', 'air', '\033[1;32m' + air + '\033[1;m\n', 'water', '\033[1;32m' + water + '\033[1;m\n', 'earth', '\033[1;32m' + earth + '\033[1;m\n')

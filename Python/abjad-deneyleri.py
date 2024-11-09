import requests
import math
import datetime
import random
import traceback
# -------------------- Functions to modify -----------------------------
def abjad(metin, tablo=1, shadda=1, detail=0):
	try:
		abjadsum = s = N = T = SH = SM = err = hrk = space = newline = 0
		SN = nitem = ''
		for choosen in metin:
			if choosen in ['ا', 'أ', 'إ', 'آ', 'ء', 'ى']:
				if tablo in [1, 4, 5, 7, 10, 12, 15, 17, 20, 22, 25, 27, 30, 32, 35]: s = 1
				elif tablo in [0, 6, 11, 16, 21, 26, 31]: s = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13, 18, 23, 28, 33]: s = abjad('الف', tablo - 1, 1)
				elif tablo in [3, 9, 14, 19, 24, 29, 34]: s = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				else: err = 1
			elif choosen == 'ؤ':
				if tablo in [1, 4, 7, 10]: s = 7
				elif tablo in [12, 15]: s = 6
				elif tablo in [17, 20, 22, 25]: s = 801
				elif tablo in [27, 30]: s = 41
				elif tablo in [32, 35]: s = 901
				elif tablo in [0, 6, 11, 16, 21, 26, 31]: s = asgar('ا', tablo + 1) + asgar('و', tablo + 1)
				elif tablo in [2, 8, 13, 18, 23, 28, 33]: s = abjad('الف', tablo - 1, 1) + abjad('واو', tablo - 1, 1)
				elif tablo in [3, 9, 14, 19, 24, 29, 34]: s = bastet('ا', 1, -1 - (tablo - 2) , 1, 'ARABIC') + bastet('و', 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ئ':
				if tablo in [1, 4, 7, 10]: s = 11
				elif tablo in [12, 15]: s = 7
				elif tablo in [17, 20, 22, 25, 27, 30, 32, 35]: s = 1001
				elif tablo in [0, 6, 11, 16, 21, 26, 31]: s = asgar('ا', tablo + 1) + asgar('ي', tablo + 1)
				elif tablo in [2, 8, 13, 18, 23, 28, 33]: s = abjad('الف', tablo - 1, 1) + abjad('يا', tablo - 1, 1)
				elif tablo in [3, 9, 14, 19, 24, 29, 34]: s = bastet('ا', 1, -1 - (tablo - 2) , 1, 'ARABIC') + bastet('ي', 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ۀ':
				if tablo in [1, 4, 7, 10]: s = 15
				elif tablo in [12, 15]: s = 13
				elif tablo in [17, 20, 22, 25]: s = 1800
				elif tablo in [27, 30]: s = 1700
				elif tablo in [32, 35]: S = 1900
				elif tablo in [0, 6, 11, 16, 21, 26, 31]: s = asgar('ي', tablo + 1) + asgar('ه', tablo + 1)
				elif tablo in [2, 8, 13, 18, 23, 28, 33]: s = abjad('يا', tablo - 1, 1) + abjad('ها', tablo - 1, 1)
				elif tablo in [3, 9, 14, 19, 24, 29, 34]: s = bastet('ي', 1, -1 - (tablo - 2) , 1, 'ARABIC') + bastet('ه', 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['ب', 'ﭖ']:
				if tablo in [1, 4, 7, 10, 17, 20, 22, 25, 27, 30, 32, 35]: s = 2
				elif tablo in [12, 15]: s = 9
				elif tablo in [0, 6, 11, 16, 21, 26, 31]: s = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13, 18, 23, 28, 33]: s = abjad('با', tablo - 1, 1)
				elif tablo in [3, 9, 14, 19, 24, 29, 34]: s = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['ج', 'ﭺ']:
				if tablo in [1, 4, 7, 10]: s = 3
				elif tablo in [12, 15]: s = 100
				elif tablo in [17, 20, 22, 25, 27, 30, 32, 35]: s = 5
				elif tablo in [0, 6, 11, 16, 21, 26, 31]: s = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13, 18, 23, 28, 33]: s = abjad('جيم', tablo - 1, 1)
				elif tablo in [3, 9, 14, 19, 24, 29, 34]: s = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'د':
				if tablo in [1, 4, 7, 10]: s = 4
				elif tablo in [12, 15]: s = 70
				elif tablo in [17, 20, 22, 25, 27, 30, 32, 35]: s = 8
				elif tablo in [0, 6, 11, 16, 21, 26, 31]: s = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13, 18, 23, 28, 33]: s = abjad('دال', tablo - 1, 1)
				elif tablo in [3, 9, 14, 19, 24, 29, 34]: s = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['ه', 'ة']:
				if tablo in [1, 4, 7, 10]: s = 5
				elif tablo in [12, 15]: s = 7
				elif tablo in [17, 20, 22, 25]: s = 800
				elif tablo in [27, 30]: s = 700
				elif tablo in [32, 35]: s = 900
				elif tablo in [0, 6, 11, 16, 21, 26, 31]: s = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13, 18, 23, 28, 33]: s = abjad('ها', tablo - 1, 1)
				elif tablo in [3, 9, 14, 19, 24, 29, 34]: s = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'و':
				if tablo in [1, 4, 7, 10]: s = 6
				elif tablo in [12, 15]: s = 5
				elif tablo in [17, 20, 22, 25]: s = 900
				elif tablo in [27, 30]: s = 40
				elif tablo in [32, 35]: s = 800
				elif tablo in [0, 6, 11, 16, 21, 26, 31]: s = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13, 18, 23, 28, 33]: s = abjad('واو', tablo - 1, 1)
				elif tablo in [3, 9, 14, 19, 24, 29, 34]: s = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['ز', 'ﮊ']:
				if tablo in [1, 4, 7, 10]: s = 7
				elif tablo in [12, 15, 27, 30]: s = 600
				elif tablo in [17, 20, 22, 25, 32, 35]: s = 20
				elif tablo in [0, 6, 11, 16, 21, 26, 31]: s = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13, 18, 23, 28, 33]: s = abjad('زا', tablo - 1, 1)
				elif tablo in [3, 9, 14, 19, 24, 29, 34]: s = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ح':
				if tablo in [1, 4, 7, 10]: s = 8
				elif tablo in [12, 15]: s = 90
				elif tablo in [17, 20, 22, 25, 27, 30, 32, 35]: s = 6
				elif tablo in [0, 6, 11, 16, 21, 26, 31]: s = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13, 18, 23, 28, 33]: s = abjad('حا', tablo - 1, 1)
				elif tablo in [3, 9, 14, 19, 24, 29, 34]: s = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ط':
				if tablo in [1, 4, 7, 10]: s = 9
				elif tablo in [12, 15]: s = 800
				elif tablo in [17, 20, 32, 35]: s = 70
				elif tablo in [22, 25]: s = 30
				elif tablo in [27, 30]: s = 100
				elif tablo in [0, 6, 11, 16, 21, 26, 31]: s = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13, 18, 23, 28, 33]: s = abjad('طا', tablo - 1, 1)
				elif tablo in [3, 9, 14, 19, 24, 29, 34]: s = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['ی', 'ي']:
				if tablo in [1, 4, 7, 10]: s = 10
				elif tablo in [12, 15]: s = 6
				elif tablo in [17, 20, 22, 25, 27, 30, 32, 35]: s = 1000
				elif tablo in [0, 6, 11, 16, 21, 26, 31]: s = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13, 18, 23, 28, 33]: s = abjad('يا', tablo - 1, 1)
				elif tablo in [3, 9, 14, 19, 24, 29, 34]: s = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['ك', 'ﮒ', 'ک']:
				if tablo in [1, 4, 7, 10, 12, 15]: s = 20
				elif tablo in [17, 20, 32, 35]: s = 400
				elif tablo in [22, 25]: s = 50
				elif tablo in [27, 30]: s = 10
				elif tablo in [0, 6, 11, 16, 21, 26, 31]: s = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13, 18, 23, 28, 33]: s = abjad('كاف', tablo - 1, 1)
				elif tablo in [3, 9, 14, 19, 24, 29, 34]: s = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ل':
				if tablo in [1, 4, 7, 10]: s = 30
				elif tablo in [12, 15]: s = 2
				elif tablo in [17, 20, 32, 35]: s = 500
				elif tablo in [22, 25]: s = 60
				elif tablo in [27, 30]: s = 20
				elif tablo in [0, 6, 11, 16, 21, 26, 31]: s = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13, 18, 23, 28, 33]: s = abjad('لام', tablo - 1, 1)
				elif tablo in [3, 9, 14, 19, 24, 29, 34]: s = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ﻻ':
				if tablo in [1, 4, 7, 10]: s = 31
				elif tablo in [12, 15]: s = 3
				elif tablo in [17, 20, 32, 35]: s = 501
				elif tablo in [22, 25]: s = 61
				elif tablo in [27, 30]: s = 21
				elif tablo in [0, 6, 11, 16, 21, 26, 31]: s = asgar('ا', tablo + 1) + asgar('ل', tablo + 1)
				elif tablo in [2, 8, 13, 18, 23, 28, 33]: s = abjad('الف', tablo - 1, 1) + abjad('لام', tablo - 1, 1)
				elif tablo in [3, 9, 14, 19, 24, 29, 34]: s = bastet('ل', 1, -1 - (tablo - 2) , 1, 'ARABIC') + bastet('ا', 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'م':
				if tablo in [1, 4, 7, 10]: s = 40
				elif tablo in [12, 15]: s = 4
				elif tablo in [17, 20, 32, 35]: s = 600
				elif tablo in [22, 25]: s = 70
				elif tablo in [27, 30]: s = 30
				elif tablo in [0, 6, 11, 16, 21, 26, 31]: s = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13, 18, 23, 28, 33]: s = abjad('ميم', tablo - 1, 1)
				elif tablo in [3, 9, 14, 19, 24, 29, 34]: s = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['ن', 'ﯓ']:
				if tablo in [1, 4, 7, 10, 27, 30]: s = 50
				elif tablo in [12, 15]: s = 3
				elif tablo in [17, 20, 32, 35]: s = 700
				elif tablo in [22, 25]: s = 80
				elif tablo in [0, 6, 11, 16, 21, 26, 31]: s = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13, 18, 23, 28, 33]: s = abjad('نون', tablo - 1, 1)
				elif tablo in [3, 9, 14, 19, 24, 29, 34]: s = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'س':
				if tablo in [1, 4, 12, 15]: s = 60
				elif tablo in [7, 10]: s = 300
				elif tablo in [17, 20, 32, 35]: s = 30
				elif tablo in [22, 25]: s = 600
				elif tablo in [27, 30]: s = 800
				elif tablo in [0, 6, 11, 16, 21, 26, 31]: s = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13, 18, 23, 28, 33]: s = abjad('سين', tablo - 1, 1)
				elif tablo in [3, 9, 14, 19, 24, 29, 34]: s = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ع':
				if tablo in [1, 4, 7, 10]: s = 70
				elif tablo in [12, 15]: s = 30
				elif tablo in [17, 20, 32, 35]: s = 90
				elif tablo in [22, 25]: s = 200
				elif tablo in [27, 30]: s = 80
				elif tablo in [0, 6, 11, 16, 21, 26, 31]: s = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13, 18, 23, 28, 33]: s = abjad('عين', tablo - 1, 1)
				elif tablo in [3, 9, 14, 19, 24, 29, 34]: s = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ف':
				if tablo in [1, 4, 7, 10]: s = 80
				elif tablo in [12, 15]: s = 40
				elif tablo in [17, 20, 32, 35]: s = 200
				elif tablo in [22, 25]: s = 400
				elif tablo in [27, 30]: s = 300
				elif tablo in [0, 6, 11, 16, 21, 26, 31]: s = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13, 18, 23, 28, 33]: s = abjad('فا', tablo - 1, 1)
				elif tablo in [3, 9, 14, 19, 24, 29, 34]: s = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ص':
				if tablo in [1, 4, 22, 25]: s = 90
				elif tablo in [7, 10, 27, 30]: s = 60
				elif tablo in [12, 15]: s = 400
				elif tablo in [17, 20, 32, 35]: s = 50
				elif tablo in [0, 6, 11, 16, 21, 26, 31]: s = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13, 18, 23, 28, 33]: s = abjad('صاد', tablo - 1, 1)
				elif tablo in [3, 9, 14, 19, 24, 29, 34]: s = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ق':
				if tablo in [1, 4, 7, 10]: s = 100
				elif tablo in [12, 15]: s = 50
				elif tablo in [17, 20, 32, 35]: s = 300
				elif tablo in [22, 25]: s = 500
				elif tablo in [27, 30]: s = 400
				elif tablo in [0, 6, 11, 16, 21, 26, 31]: s = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13, 18, 23, 28, 33]: s = abjad('قاف', tablo - 1, 1)
				elif tablo in [3, 9, 14, 19, 24, 29, 34]: s = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ر':
				if tablo in [1, 4, 7, 10]: s = 200
				elif tablo in [12, 15]: s = 8
				elif tablo in [17, 20, 22, 25, 32, 35]: s = 10
				elif tablo in [27, 30]: s = 500
				elif tablo in [0, 6, 11, 16, 21, 26, 31]: s = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13, 18, 23, 28, 33]: s = abjad('را', tablo - 1, 1)
				elif tablo in [3, 9, 14, 19, 24, 29, 34]: s = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ش':
				if tablo in [1, 4, 12, 15]: s = 300
				elif tablo in [7, 10]: s = 1000
				elif tablo in [17, 20, 32, 35]: s = 40
				elif tablo in [22, 25]: s = 700
				elif tablo in [27, 30]: s = 900
				elif tablo in [0, 6, 11, 16, 21, 26, 31]: s = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13, 18, 23, 28, 33]: s = abjad('شين', tablo - 1, 1)
				elif tablo in [3, 9, 14, 19, 24, 29, 34]: s = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ت':
				if tablo in [1, 4, 7, 10]: s = 400
				elif tablo in [12, 15]: s = 10
				elif tablo in [17, 20, 22, 25, 27, 30, 32, 35]: s = 3
				elif tablo in [0, 6, 11, 16, 21, 26, 31]: s = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13, 18, 23, 28, 33]: s = abjad('تا', tablo - 1, 1)
				elif tablo in [3, 9, 14, 19, 24, 29, 34]: s = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ث':
				if tablo in [1, 4, 7, 10]: s = 500
				elif tablo in [12, 15]: s = 700
				elif tablo in [17, 20, 22, 25, 27, 30, 32, 35]: s = 4
				elif tablo in [0, 6, 11, 16, 21, 26, 31]: s = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13, 18, 23, 28, 33]: s = abjad('ثا', tablo - 1, 1)
				elif tablo in [3, 9, 14, 19, 24, 29, 34]: s = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'خ':
				if tablo in [1, 4, 7, 10]: s = 600
				elif tablo in [12, 15]: s = 200
				elif tablo in [17, 20, 22, 25, 27, 30, 32, 35]: s = 7
				elif tablo in [0, 6, 11, 16, 21, 26, 31]: s = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13, 18, 23, 28, 33]: s = abjad('خا', tablo - 1, 1)
				elif tablo in [3, 9, 14, 19, 24, 29, 34]: s = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ذ':
				if tablo in [1, 4, 7, 10]: s = 700
				elif tablo in [12, 15]: s = 80
				elif tablo in [17, 20, 22, 25, 27, 30, 32, 35]: s = 9
				elif tablo in [0, 6, 11, 16, 21, 26, 31]: s = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13, 18, 23, 28, 33]: s = abjad('ذال', tablo - 1, 1)
				elif tablo in [3, 9, 14, 19, 24, 29, 34]: s = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ض':
				if tablo in [1, 4]: s = 800
				elif tablo in [7, 10]: s = 90
				elif tablo in [12, 15]: s = 500
				elif tablo in [17, 20, 32, 35]: s = 60
				elif tablo in [22, 25]: s = 100
				elif tablo in [27, 30]: s = 70
				elif tablo in [0, 6, 11, 16, 21, 26, 31]: s = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13, 18, 23, 28, 33]: s = abjad('ضاد', tablo - 1, 1)
				elif tablo in [3, 9, 14, 19, 24, 29, 34]: s = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ظ':
				if tablo in [1, 4]: s = 900
				elif tablo in [7, 10]: s = 800
				elif tablo in [12, 15]: s = 1000
				elif tablo in [17, 20, 32, 35]: s = 80
				elif tablo in [22, 25]: s = 40
				elif tablo in [27, 30]: s = 200
				elif tablo in [0, 6, 11, 16, 21, 26, 31]: s = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13, 18, 23, 28, 33]: s = abjad('ظا', tablo - 1, 1)
				elif tablo in [3, 9, 14, 19, 24, 29, 34]: s = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'غ':
				if tablo in [1, 4]: s = 1000
				elif tablo in [7, 10, 12, 15]: s = 900
				elif tablo in [17, 20, 32, 35]: s = 100
				elif tablo in [22, 25]: s = 300
				elif tablo in [27, 30]: s = 90
				elif tablo in [0, 6, 11, 16, 21, 26, 31]: s = asgar(choosen, tablo + 1)
				elif tablo in [2, 8, 13, 18, 23, 28, 33]: s = abjad('غين', tablo - 1, 1)
				elif tablo in [3, 9, 14, 19, 24, 29, 34]: s = bastet(choosen, 1, -1 - (tablo - 2) , 1, 'ARABIC')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'א':
				if tablo in [1, 4]: s = 1
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('אלף', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ב':
				if tablo in [1, 4]: s = 2
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('בית', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ג':
				if tablo in [1, 4]: s = 3
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('גימל', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ד':
				if tablo in [1, 4]: s = 4
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('דלת', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ה':
				if tablo in [1, 4]: s = 5
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('הא', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ו':
				if tablo in [1, 4]: s = 6
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('וו', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ז':
				if tablo in [1, 4]: s = 7
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('זין', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ח':
				if tablo in [1, 4]: s = 8
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('חית', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ט':
				if tablo in [1, 4]: s = 9
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('טיח', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'י':
				if tablo in [1, 4]: s = 10
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('יוד', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'כ':
				if tablo in [1, 4]: s = 20
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('כף', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ל':
				if tablo in [1, 4]: s = 30
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('למד', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'מ':
				if tablo in [1, 4]: s = 40
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('מם', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'נ':
				if tablo in [1, 4]: s = 50
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('נון', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ס':
				if tablo in [1, 4]: s = 60
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('סמך', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ע':
				if tablo in [1, 4]: s = 70
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('עין', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'פ':
				if tablo in [1, 4]: s = 80
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('פא', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'צ':
				if tablo in [1, 4]: s = 90
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('צדי', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ק':
				if tablo in [1, 4]: s = 100
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('קוף', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ר':
				if tablo in [1, 4]: s = 200
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('ריש', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ש':
				if tablo in [1, 4]: s = 300
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('שין', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ת':
				if tablo in [1, 4]: s = 400
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('תו', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ך':
				if tablo in [1, 4]: s = 500
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('ךף', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ם':
				if tablo in [1, 4]: s = 600
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('םם', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ן':
				if tablo in [1, 4]: s = 700
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('וןן', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ף':
				if tablo in [1, 4]: s = 800
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('ףא', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen == 'ץ':
				if tablo in [1, 4]: s = 900
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('ץדי', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'HEBREW')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['A', 'a']:
				if tablo in [1, 4]: s = 1
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('aa', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['B', 'b']:
				if tablo in [1, 4]: s = 2
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('be', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['C', 'c', 'Ç', 'ç']:
				if tablo in [1, 4]: s = 3
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('ce', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['D', 'd']:
				if tablo in [1, 4]: s = 4
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('de', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['E', 'e']:
				if tablo in [1, 4]: s = 5
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('ee', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['F', 'f']:
				if tablo in [1, 4]: s = 6
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('fe', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['G', 'g']:
				if tablo in [1, 4]: s = 7
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('ge', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['Ğ', 'ğ']:
				if tablo in [1, 4]: s = 8
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('yumuşakge', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['H', 'h']:
				if tablo in [1, 4]: s = 9
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('he', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['I', 'ı']:
				if tablo in [1, 4]: s = 10
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('ıı', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['İ', 'i']:
				if tablo in [1, 4]: s = 20
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('ii', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['J', 'j']:
				if tablo in [1, 4]: s = 30
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('je', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['K', 'k']:
				if tablo in [1, 4]: s = 40
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('ke', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['L', 'l']:
				if tablo in [1, 4]: s = 50
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('le', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['M', 'm']:
				if tablo in [1, 4]: s = 60
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('me', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['N', 'n']:
				if tablo in [1, 4]: s = 70
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('ne', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['O', 'o']:
				if tablo in [1, 4]: s = 80
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('oo', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['Ö', 'ö']:
				if tablo in [1, 4]: s = 90
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('öö', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['P', 'p']:
				if tablo in [1, 4]: s = 100
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('p', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['R', 'r']:
				if tablo in [1, 4]: s = 200
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('re', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['S', 's']:
				if tablo in [1, 4]: s = 300
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('se', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['Ş', 'ş']:
				if tablo in [1, 4]: s = 400
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('şe', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['T', 't']:
				if tablo in [1, 4]: s = 500
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('te', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['U', 'u']:
				if tablo in [1, 4]: s = 600
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('uu', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['Ü', 'ü']:
				if tablo in [1, 4]: s = 700
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('üü', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['V', 'v']:
				if tablo in [1, 4]: s = 800
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('ve', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['Y', 'y']:
				if tablo in [1, 4]: s = 900
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('ye', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: s = 1
				else: err = 1
			elif choosen in ['Z', 'z']:
				if tablo in [1, 4]: s = 1000
				elif tablo == 0: s = asgar(choosen, 1)
				elif tablo == 2: s = abjad('ze', 1, 1)
				elif tablo == 3: s = bastet(choosen, 1, -2, 1, 'TURKCE')
				elif tablo == 5: s = 1
				else: err = 1
			else:
				s = 0
				N += 1
				if choosen == 'ّ':
					if shadda == 2:
						C = 1
						while saf(metin[T-C], '') == '':
							C += 1
						SH += 1
						s = abjad(metin[T-C], tablo, 1)
					elif shadda == 1: s = 0
					else:
						err = 3
					hrk += 1
				elif choosen == 'ٰ':
					C = 1
					while saf(metin[T-C], '') == '' or metin[T-C] == 'ـ':
						if metin[T-C] == 'ـ' or saf(metin[T-C], '') == metin[T-C]:
							s = abjad('ا', tablo, 1)
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
				if saf(choosen, 0) == 'ا': SN += '[' + 'ا' + '=' + str(s) + ']'
				elif saf(choosen, 0) == choosen: SN += '[' + choosen + '=' + str(s) + ']'
			else: SM += s
		if tablo in [4, 10, 15, 20, 25, 30, 35]:
			if detail == 1 : SN += '[+' + str((len(metin) - N) + SH) + ' harf]'
			else : SM += ((len(metin) - N) + SH)
		if err == 0:
			if detail == 1: abjadsum = SN
			else: abjadsum = SM
		elif err == 1: abjadsum = 'Tablo Kodu?'
		elif err == 2: abjadsum = str(N - (space + hrk)) + ' Tanımlanmayan:' + str(nitem) + ' ||' + str(space) + ' boşluk||' + str(hrk) + ' harake'
		elif err == 3: abjadsum = 'Şedde Seçeneği?'
	except Exception:
		traceback.print_exc()
	return abjadsum

def wordbyword(metin, tablo=1, shadda=1, detail=0):
	try:
		content = word = ''
		metin += ' '
		for counter in metin:
			word += counter
			if counter in [' ', '\n']:
				calculation = '('  + str(abjad(word, tablo, shadda, detail)) + ')' + counter
				if calculation != '(0)' + counter: content += word + altayaz(calculation)
				word = ''
				calculation = ''
	except: content = 'Hata?'
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
			else: baster = 'Tablo Kodu?'
		if err == 0:
			if detail == 1:	baster = ns
		elif err == 1: baster = 'Dil?'
		return baster
	except: return 'Hata?'

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
	except: return 'Hata?'

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
	except: return 'Hata?'

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
	except: return 'Hata?'

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
	except: return 'Hata?'

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
		return 'Hata?'

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
	except: return 'Hata?'

def rakamtopla(valuez, amount):
	try:
		if amount == 0:
			hepsi = str(valuez)
			while len(str(valuez)) > 1:
				newsum = 0
				for choosen in str(valuez):
					newsum += int(choosen)
				valuez = newsum
			hepsi += ' ► ' + newsum
			return hepsi
		else:
			while len(str(valuez)) > amount:
				newsum = 0
				for choosen in str(valuez):
					newsum += int(choosen)
				valuez = newsum
			return valuez
	except: return 'Hata?'

def newline(amount):
	try:
		for rows in range(amount):
			nl += '\n'
		return nl
	except: return 'Hata?'

def asgar(harf, level=1):
	try:
		c = abjad(harf, level, 1)
		if c > 12: return c - (12 * math.floor(c / 12))
		else: return c
	except: return 'Hata?'

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
									spell = ' ' + PlacePlural[count] + spell
									EventHappenned = 1
					if EventHappenned == 0:
						if len(spell) > 0: spell = ' ' + PlaceAppent[count] + spell
						else: spell = ' ' + PlaceOnes[count] + spell
					else: EventHappenned = 0
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
									spell = ' ' + PlacePlural[count] + spell
									EventHappenned = 1
					if EventHappenned == 0:
						if len(spell) > 0: spell = ' ' + PlaceAppent[count] + spell
						else: spell = ' ' + PlaceOnes[count] + spell
					else: EventHappenned = 0
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
	except: return 'Hata?'

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
			if mynumber[1:2] != '0': result += str(GetTens(mynumber[-2:], language, count, float(mynumber[0:1]), result + spell))
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
			if mynumber[1:2] != '0': result += str(GetTens(mynumber[-2:], language, count, float(mynumber[0:1]), result + spell))
			else: result += str(GetDigit(mynumber[2:3], language, count, result + spell))
		elif language.upper() == 'TURKCE':
			if mynumber[0:1] != '0':
				if float(mynumber[0:1]) > 1: result = str(GetDigit(mynumber[0:1], language)) + ' yüz '
				else: result = 'yüz '
			if mynumber[1:2] != '0': result += str(GetTens(mynumber[-2:], language, count, float(mynumber[0:1]), result + spell))
			else: result += str(GetDigit(mynumber[2:3], language, count, result + spell))
		return result
	except Exception:
		traceback.print_exc()

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
				if float(tenstext) == 2 and hundreds == 0 and count > 0: result = PlaceTwos[count] + result
				else:
					if float(tenstext) == 2 and count > 1: result = PlaceOnes[count] + result
					elif float(tenstext) == 1 or float(tenstext) == 2:
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
				if float(tenstext) == 2 and hundreds == 0 and count > 0: result = PlaceTwos[count] + result
				else:
					if float(tenstext) == 2 and count > 1: result = PlaceOnes[count] + result
					elif float(tenstext) == 1 or float(tenstext) == 2:
						if count == 1 and hundreds == 0 and float(tenstext) == 0: result = result + ''
				if float(tenstext) > 0:
					if float(tenstext[:1]) > 1: result += str(GetTensStatus(float(tenstext[:1]), language))
					if len(result) > 0 and float(tenstext[-1:]) != 0: result += 'ו '
					result += str(GetDigit(tenstext[-1:], language))
				else:
					if len(spell) > 0  and float(tenstext[:1]) != 0 or len(result) > 0 and float(tenstext[:1]) != 0: result += 'ו '
					result += str(GetTensStatus(float(tenstext[:1]), language))
		elif language.upper() == 'TURKCE':
			if float(tenstext[:1]) == 1: result = 'on '
			elif float(tenstext[:1]) == 2: result = 'yirmi '
			elif float(tenstext[:1]) == 3: result = 'otuz '
			elif float(tenstext[:1]) == 4: result = 'kırk '
			elif float(tenstext[:1]) == 5: result = 'elli '
			elif float(tenstext[:1]) == 6: result = 'altmış '
			elif float(tenstext[:1]) == 7: result = 'yetmiş '
			elif float(tenstext[:1]) == 8: result = 'seksen '
			elif float(tenstext[:1]) == 9: result = 'doksan '
			result += str(GetDigit(tenstext[-1:], language))
		return result
	except Exception:
		traceback.print_exc()

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
	except: return 'Hata?'

def huddam(num, htype='ulvi', method=1):
	try:
		h = gh = eacher = mode = ''
		counts = 1
		hpart = ['']
		htype = htype.upper()
		if method in [2, 8, 13, 18, 23, 28, 33]:
			method -= 1
			mode = 'eacher'
		if method not in [7, 12, 17, 22, 27, 32]:
			method = 1
		if mode != 'eacher':
			mode = 'regular'
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
				eacher = ''
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
						else: h = 'ب'
					elif int(choosen) == 3:
						if method == 12: h = 'ن'
						elif method in [17, 22, 27, 32]: h = 'ت'
						else: h = 'ج'
					elif int(choosen) == 4:
						if method == 12: h = 'م'
						elif method in [17, 22, 27, 32]: h = 'ث'
						else: h = 'د'
					elif int(choosen) == 5:
						if method == 12: h = 'و'
						elif method in [17, 22, 27, 32]: h = 'ج'
						else: h = 'ه'
					elif int(choosen) == 6:
						if method == 12: h = 'ي'
						elif method in [17, 22, 27, 32]: h = 'ح'
						else: h = 'و'
					elif int(choosen) == 7:
						if method == 12: h = 'ه'
						elif method in [17, 22, 27, 32]: h = 'خ'
						else: h = 'ز'
					elif int(choosen) == 8:
						if method == 12: h = 'ر'
						elif method in [17, 22, 27, 32]: h = 'د'
						else: h = 'ح'
					elif int(choosen) == 9:
						if method == 12: h = 'ب'
						elif method in [17, 22, 27, 32]: h = 'ذ'
						else: h = 'ط'
					elif int(choosen) == 0:
						if method in [1, 7, 12, 17, 22, 27, 32]: h = ''
					else: h = ''
				elif turn == 2:
					if int(choosen) == 1:
						if method == 12: h = 'ت'
						elif method in [17, 22, 32]: h = 'ر'
						elif method == 27: h = 'ك'
						else: h = 'ي'
					elif int(choosen) == 2:
						if method in [17, 22, 32]: h = 'ز'
						elif method == 27: h = 'ل'
						else: h = 'ك'
					elif int(choosen) == 3:
						if method == 12: h = 'ع'
						elif method in [17, 32]: h = 'س'
						elif method == 22: h = 'ط'
						elif method == 27: h = 'م'
						else: h = 'ل'
					elif int(choosen) == 4:
						if method == 12: h = 'ف'
						elif method in [17, 32]: h = 'ش'
						elif method == 22: h = 'ظ'
						elif method == 27: h = 'و'
						else: h = 'م'
					elif int(choosen) == 5:
						if method == 12: h = 'ق'
						elif method in [17, 32]: h = 'ص'
						elif method == 22: h = 'ك'
						else: h = 'ن'
					elif int(choosen) == 6:
						if method in [7, 27]: h = 'ص'
						elif method in [17, 32]: h = 'ض'
						elif method == 22: h = 'ل'
						else: h = 'س'
					elif int(choosen) == 7:
						if method == 12: h = 'د'
						elif method in [17, 32]: h = 'ط'
						elif method == 22: h = 'م'
						elif method == 27: h = 'ض'
						else: h = 'ع'
					elif int(choosen) == 8:
						if method == 12: h = 'ذ'
						elif method in [17, 32]: h = 'ظ'
						elif method == 22: h = 'ن'
						elif method == 27: h = 'ع'
						else: h = 'ف'
					elif int(choosen) == 9:
						if method == 7: h = 'ض'
						elif method == 12: h = 'ح'
						elif method in [17, 32]: h = 'ع'
						elif method == 27: h = 'غ'
						else: h = 'ص'
					elif int(choosen) == 0:
						if method in [1, 7, 12, 17, 22, 27, 32]: h = ''
					else: h = ''
				elif turn == 1:
					if int(choosen) == 1:
						if method == 12: h = 'ج'
						elif method in [17, 32]: h = 'غ'
						elif method == 22: h = 'ض'
						elif method == 27: h = 'ط'
						else: h = 'ق'
					elif int(choosen) == 2:
						if method == 12: h = 'خ'
						elif method in [17, 32]: h = 'ف'
						elif method == 22: h = 'ع'
						elif method == 27: h = 'ظ'
						else: h = 'ر'
					elif int(choosen) == 3:
						if method == 7: h = 'س'
						elif method in [17, 32]: h = 'ق'
						elif method == 22: h = 'غ'
						elif method == 27: h = 'ف'
						else: h = 'ش'
					elif int(choosen) == 4:
						if method == 12: h = 'ص'
						elif method in [17, 32]: h = 'ك'
						elif method == 22: h = 'ف'
						elif method == 27: h = 'ق'
						else: h = 'ت'
					elif int(choosen) == 5:
						if method == 12: h = 'ض'
						elif method in [17, 32]: h = 'ل'
						elif method == 22: h = 'ق'
						elif method == 27: h = 'ر'
						else: h = 'ث'
					elif int(choosen) == 6:
						if method in [12, 27]: h = 'ز'
						elif method in [17, 32]: h = 'م'
						elif method == 22: h = 'س'
						else: h = 'خ'
					elif int(choosen) == 7:
						if method == 12: h = 'ث'
						elif method in [17, 32]: h = 'ن'
						elif method == 22: h = 'ش'
						elif method == 27: h = 'ه'
						else: h = 'ذ'
					elif int(choosen) == 8:
						if method == 7: h = 'ظ'
						elif method == 12: h = 'ط'
						elif method in [17, 22]: h = 'ه'
						elif method == 27: h = 'س'
						elif method == 32: h = 'و'
						else: h = 'ض'
					elif int(choosen) == 9:
						if method in [7, 12]: h = 'غ'
						elif method in [17, 22]: h = 'و'
						elif method == 27: h = 'ش'
						elif method == 32: h = 'ه'
						else: h = 'ظ'
					else: h = ''
				if h is not None and h != '':
					gh += h
					h = ''
				if hpart[counter] is not None:
					for counted in range(1, counter):
						if method == 7: eacher += 'ش'
						elif method == 12: eacher += 'ظ'
						elif method in [17, 22, 27, 32]: eacher += 'ي'
						else: eacher += 'غ'
				if mode == 'eacher':
					gh += eacher
					eacher = ''
			if mode == 'regular':
				gh += eacher
				eacher = ''
		if method in [1, 7, 12, 17, 22, 27, 32]:
			if htype in ['ULVI', 'ULVİ']: gh += 'ئيل'
			elif htype in ['SUFLI', 'SUFLİ']: gh += 'يوش'
			elif htype in ['ŞER', 'SER']: gh += 'طيش'
			else: gh += htype
		else: gh = htype
		return gh
	except Exception:
		traceback.print_exc()

def numerolog(metin, tablo='tr', outas='tam', shadda=1):
	try:
		SM = T = s = n = sesli = sessiz = err = hrk = seslit = sessizt = 0
		nesoohc = nitem = ''
		tablo = lower(tablo)
		metin = upper(metin)
		if tablo == 'date':
			s = float(str(metin.year) + str(metin.month) + str(metin.day))
		else:
			for choosen in metin:
				if choosen == 'A':
					if tablo == 'modern':
						s = 1
						sesli = 1
					elif tablo in ['tr', 'en']: s = 1
					else: err = 1
				elif choosen == 'B':
					if tablo == 'modern':
						s = 2
						sessiz = 2
					elif tablo in ['tr', 'en']: s = 2
					else: err = 1
				elif choosen == 'C':
					if tablo == 'modern':
						s = 3
						sessiz = 3
					elif tablo in ['tr', 'en']: s = 3
					else: err = 1
				elif choosen == 'Ç':
					if tablo == 'modern':
						s = 3
						sessiz = 3
					elif tablo == 'tr': s = 4
					elif tablo == 'en': s = 3
					else: err = 1
				elif choosen == 'D':
					if tablo == 'modern':
						s = 4
						sessiz = 4
					elif tablo == 'tr': s = 5
					elif tablo == 'en': s = 4
					else: err = 1
				elif choosen == 'E':
					if tablo == 'modern':
						s = 5
						sesli = 5
					elif tablo == 'tr': s = 6
					elif tablo == 'en': s = 5
					else: err = 1
				elif choosen == 'F':
					if tablo == 'modern':
						s = 6
						sessiz = 6
					elif tablo == 'tr': s = 7
					elif tablo == 'en': s = 6
					else: err = 1
				elif choosen == 'G':
					if tablo == 'modern':
						s = 7
						sessiz = 7
					elif tablo == 'tr': s = 8
					elif tablo == 'en': s = 7
					else: err = 1
				elif choosen == 'Ğ':
					if tablo == 'modern':
						s = 7
						sessiz = 7
					elif tablo == 'tr': s = 9
					elif tablo == 'en': s = 7
					else: err = 1
				elif choosen == 'H':
					if tablo == 'modern':
						s = 8
						sessiz = 8
					elif tablo == 'tr': s = 10
					elif tablo == 'en': s = 8
					else: err = 1
				elif choosen == 'I':
					if tablo == 'modern':
						s = 9
						sesli = 9
					elif tablo == 'tr': s = 11
					elif tablo == 'en': s = 9
					else: err = 1
				elif choosen == 'İ':
					if tablo == 'modern':
						s = 9
						sesli = 9
					elif tablo == 'tr': s = 12
					elif tablo == 'en': s = 9
					else: err = 1
				elif choosen == 'J':
					if tablo == 'modern':
						s = 1
						sessiz = 1
					elif tablo == 'tr': s = 13
					elif tablo == 'en': s = 10
					else: err = 1
				elif choosen == 'K':
					if tablo == 'modern':
						s = 2
						sessiz = 2
					elif tablo == 'tr': s = 14
					elif tablo == 'en': s = 11
					else: err = 1
				elif choosen == 'L':
					if tablo == 'modern':
						s = 3
						sessiz = 3
					elif tablo == 'tr': s = 15
					elif tablo == 'en': s = 12
					else: err = 1
				elif choosen == 'M':
					if tablo == 'modern':
						s = 4
						sessiz = 4
					elif tablo == 'tr': s = 16
					elif tablo == 'en': s = 13
					else: err = 1
				elif choosen == 'N':
					if tablo == 'modern':
						s = 5
						sessiz = 5
					elif tablo == 'tr': s = 17
					elif tablo == 'en': s = 14
					else: err = 1
				elif choosen == 'O':
					if tablo == 'modern':
						s = 6
						sesli = 6
					elif tablo == 'tr': s = 18
					elif tablo == 'en': s = 15
					else: err = 1
				elif choosen == 'Ö':
					if tablo == 'modern':
						s = 6
						sesli = 6
					elif tablo == 'tr': s = 19
					elif tablo == 'en': s = 15
					else: err = 1
				elif choosen == 'P':
					if tablo == 'modern':
						s = 7
						sessiz = 7
					elif tablo == 'tr': s = 20
					elif tablo == 'en': s = 16
					else: err = 1
				elif choosen == 'Q':
					if tablo == 'modern':
						s = 8
						sessiz = 8
					elif tablo == 'tr': s = 0
					elif tablo == 'en': s = 17
					else: err = 1
				elif choosen == 'R':
					if tablo == 'modern':
						s = 9
						sessiz = 9
					elif tablo == 'tr': s = 21
					elif tablo == 'en': s = 18
					else: err = 1
				elif choosen == 'S':
					if tablo == 'modern':
						s = 1
						sessiz = 1
					elif tablo == 'tr': s = 22
					elif tablo == 'en': s = 19
					else: err = 1
				elif choosen == 'Ş':
					if tablo == 'modern':
						s = 1
						sessiz = 1
					elif tablo == 'tr': s = 23
					elif tablo == 'en': s = 19
					else: err = 1
				elif choosen == 'T':
					if tablo == 'modern':
						s = 2
						sessiz = 2
					elif tablo == 'tr': s = 24
					elif tablo == 'en': s = 20
					else: err = 1
				elif choosen == 'U':
					if tablo == 'modern':
						s = 3
						sesli = 3
					elif tablo == 'tr': s = 25
					elif tablo == 'en': s = 21
					else: err = 1
				elif choosen == 'Ü':
					if tablo == 'modern':
						s = 3
						sesli = 3
					elif tablo == 'tr': s = 26
					elif tablo == 'en': s = 21
					else: err = 1
				elif choosen == 'V':
					if tablo == 'modern':
						s = 4
						sessiz = 4
					elif tablo == 'tr': s = 27
					elif tablo == 'en': s = 22
					else: err = 1
				elif choosen == 'W':
					if tablo == 'modern':
						s = 5
						sessiz = 5
					elif tablo == 'tr': s = 0
					elif tablo == 'en': s = 23
					else: err = 1
				elif choosen == 'X':
					if tablo == 'modern':
						s = 6
						sessiz = 6
					elif tablo == 'tr': s = 0
					elif tablo == 'en': s = 24
					else: err = 1
				elif choosen == 'Y':
					if tablo == 'modern':
						s = 7
						sessiz = 7
					elif tablo == 'tr': s = 28
					elif tablo == 'en': s = 25
					else: err = 1
				elif choosen == 'Z':
					if tablo == 'modern':
						s = 8
						sessiz = 8
					elif tablo == 'tr': s = 29
					elif tablo == 'en': s = 26
					else: err = 1
				elif choosen in ['ا', 'أ', 'إ', 'آ', 'ء', 'ى', 'ئ']:
					if tablo in ['arb(ebced)', 'arb(mebced)', 'arb(hica)', 'arb(mhica)', 'osman']: s = 1
					else: err = 1
				elif choosen == 'ب':
					if tablo in ['arb(ebced)', 'arb(mebced)', 'arb(hica)', 'arb(mhica)', 'osman']: s = 2
					else: err = 1
				elif choosen == 'ﭖ':
					if tablo in ['osman']: s = 3
					else: err = 1
				elif choosen == 'ت':
					if tablo in ['arb(ebced)', 'arb(mebced)']: s = 22
					elif tablo in ['arb(hica)', 'arb(mhica)']: s = 3
					elif tablo in ['osman']: s = 4
					else: err = 1
				elif choosen == 'ث':
					if tablo in ['arb(ebced)', 'arb(mebced)']: s = 23
					elif tablo in ['arb(hica)', 'arb(mhica)']: s = 4
					elif tablo in ['osman']: s = 5
					else: err = 1
				elif choosen == 'ج':
					if tablo in ['arb(ebced)', 'arb(mebced)']: s = 3
					elif tablo in ['arb(hica)', 'arb(mhica)']: s = 5
					elif tablo in ['osman']: s = 6
					else: err = 1
				elif choosen == 'ﭺ':
					if tablo in ['osman']: s = 7
					else: err = 1
				elif choosen == 'ح':
					if tablo in ['arb(ebced)', 'arb(mebced)']: s = 8
					elif tablo in ['arb(hica)', 'arb(mhica)']: s = 6
					elif tablo in ['osman']: s = 8
					else: err = 1
				elif choosen == 'خ':
					if tablo in ['arb(ebced)', 'arb(mebced)']: s = 24
					elif tablo in ['arb(hica)', 'arb(mhica)']: s = 7
					elif tablo in ['osman']: s = 9
					else: err = 1
				elif choosen == 'د':
					if tablo in ['arb(ebced)', 'arb(mebced)']: s = 4
					elif tablo in ['arb(hica)', 'arb(mhica)']: s = 8
					elif tablo in ['osman']: s = 10
					else: err = 1
				elif choosen == 'ذ':
					if tablo in ['arb(ebced)', 'arb(mebced)']: s = 25
					elif tablo in ['arb(hica)', 'arb(mhica)']: s = 9
					elif tablo in ['osman']: s = 11
					else: err = 1
				elif choosen == 'ر':
					if tablo in ['arb(ebced)', 'arb(mebced)']: s = 20
					elif tablo in ['arb(hica)', 'arb(mhica)']: s = 10
					elif tablo in ['osman']: s = 12
					else: err = 1
				elif choosen == 'ز':
					if tablo in ['arb(ebced)', 'arb(mebced)']: s = 7
					elif tablo in ['arb(hica)', 'arb(mhica)']: s = 11
					elif tablo in ['osman']: s = 13
					else: err = 1
				elif choosen == 'ﮊ':
					if tablo in ['osman']: s = 14
					else: err = 1
				elif choosen == 'س':
					if tablo in ['arb(ebced)']: s = 15
					elif tablo in ['arb(mebced)']: s = 21
					elif tablo in ['arb(hica)']: s = 12
					elif tablo in ['arb(mhica)']: s = 24
					elif tablo in ['osman']: s = 15
					else: err = 1
				elif choosen == 'ش':
					if tablo in ['arb(ebced)']: s = 21
					elif tablo in ['arb(mebced)']: s = 28
					elif tablo in ['arb(hica)']: s = 13
					elif tablo in ['arb(mhica)']: s = 25
					elif tablo in ['osman']: s = 16
					else: err = 1
				elif choosen == 'ص':
					if tablo in ['arb(ebced)']: s = 18
					elif tablo in ['arb(mebced)']: s = 15
					elif tablo in ['arb(hica)']: s = 14
					elif tablo in ['arb(mhica)']: s = 18
					elif tablo in ['osman']: s = 17
					else: err = 1
				elif choosen == 'ض':
					if tablo in ['arb(ebced)']: s = 26
					elif tablo in ['arb(mebced)']: s = 18
					elif tablo in ['arb(hica)']: s = 15
					elif tablo in ['arb(mhica)']: s = 19
					elif tablo in ['osman']: s = 18
					else: err = 1
				elif choosen == 'ط':
					if tablo in ['arb(ebced)', 'arb(mebced)']: s = 9
					elif tablo in ['arb(hica)']: s = 16
					elif tablo in ['arb(mhica)']: s = 12
					elif tablo in ['osman']: s = 19
					else: err = 1
				elif choosen == 'ظ':
					if tablo in ['arb(ebced)']: s = 27
					elif tablo in ['arb(mebced)']: s = 26
					elif tablo in ['arb(hica)']: s = 17
					elif tablo in ['arb(mhica)']: s = 13
					elif tablo in ['osman']: s = 20
					else: err = 1
				elif choosen == 'ع':
					if tablo in ['arb(ebced)', 'arb(mebced)']: s = 16
					elif tablo in ['arb(hica)']: s = 18
					elif tablo in ['arb(mhica)']: s = 20
					elif tablo in ['osman']: s = 21
					else: err = 1
				elif choosen == 'غ':
					if tablo in ['arb(ebced)']: s = 28
					elif tablo in ['arb(mebced)']: s = 17
					elif tablo in ['arb(hica)']: s = 19
					elif tablo in ['arb(mhica)']: s = 21
					elif tablo in ['osman']: s = 22
					else: err = 1
				elif choosen == 'ف':
					if tablo in ['arb(ebced)', 'arb(mebced)']: s = 17
					elif tablo in ['arb(hica)']: s = 20
					elif tablo in ['arb(mhica)']: s = 22
					elif tablo in ['osman']: s = 23
					else: err = 1
				elif choosen == 'ق':
					if tablo in ['arb(ebced)', 'arb(mebced)']: s = 19
					elif tablo in ['arb(hica)']: s = 21
					elif tablo in ['arb(mhica)']: s = 23
					elif tablo in ['osman']: s = 24
					else: err = 1
				elif choosen == 'ك':
					if tablo in ['arb(ebced)', 'arb(mebced)']: s = 11
					elif tablo in ['arb(hica)']: s = 22
					elif tablo in ['arb(mhica)']: s = 14
					elif tablo in ['osman']: s = 25
					else: err = 1
				elif choosen == 'ﮒ':
					if tablo in ['osman']: s = 26
					else: err = 1
				elif choosen == 'ﯓ':
					if tablo in ['osman']: s = 27
					else: err = 1
				elif choosen == 'ل':
					if tablo in ['arb(ebced)', 'arb(mebced)']: s = 12
					elif tablo in ['arb(hica)']: s = 23
					elif tablo in ['arb(mhica)']: s = 15
					elif tablo in ['osman']: s = 28
					else: err = 1
				elif choosen == 'م':
					if tablo in ['arb(ebced)', 'arb(mebced)']: s = 13
					elif tablo in ['arb(hica)']: s = 24
					elif tablo in ['arb(mhica)']: s = 16
					elif tablo in ['osman']: s = 29
					else: err = 1
				elif choosen == 'ن':
					if tablo in ['arb(ebced)', 'arb(mebced)']: s = 14
					elif tablo in ['arb(hica)']: s = 25
					elif tablo in ['arb(mhica)']: s = 17
					elif tablo in ['osman']: s = 30
					else: err = 1
				elif choosen in ['و', 'ؤ']:
					if tablo in ['arb(ebced)', 'arb(mebced)']: s = 6
					elif tablo in ['arb(hica)', 'arb(mhica)']: s = 27
					elif tablo in ['osman']: s = 31
					else: err = 1
				elif choosen in ['ه', 'ة']:
					if tablo in ['arb(ebced)', 'arb(mebced)']: s = 5
					elif tablo in ['arb(hica)', 'arb(mhica)']: s = 26
					elif tablo in ['osman']: s = 32
					else: err = 1
				elif choosen == 'ﻻ':
					if tablo in ['osman']: s = 33
					else: err = 1
				elif choosen == 'ي':
					if tablo in ['arb(ebced)', 'arb(mebced)']: s = 10
					elif tablo in ['arb(hica)', 'arb(mhica)']: s = 28
					elif tablo in ['osman']: s = 34
					else: err = 1
				else:
					n += 1
					if choosen in ['ّ']:
						if shadda == 1: s = 0
						elif shadda == 2:
							C = 1
							while s == 0:
								C += 1
								s = numerolog(metin[T-C], tablo, outas, 1)
						else: err = 3
						hrk = hrk + 1
					elif choosen in ['ٰ']:
						C = 1
						while s == 0 or M != 'ـ':
							C += 1
							if metin[T-C] == 'ـ': s = numerolog('ا', tablo, outas, 1)
					elif choosen in [' ']:
						space += 1
						s = 0
					elif choosen in ['\n','\r']: newline += .5
					elif choosen in ['َ', 'ِ', 'ً', 'ٍ', 'ُ', 'ْ', 'ٌ', 'ـ']:
						hrk = hrk + 1
						s = 0
					else:
						nitem = nitem & choosen
						err = 2
				if err == 1:
					nesoohc = nesoohc & choosen
					D = D + 1
				else:
					SM += s
					seslit += sesli
					sessizt += sessiz
					sesli = sessiz = 0
		if err == 0:
			if outas == 'sesli': return rakamtopla(seslit, 1)
			elif outas == 'sessiz': return rakamtopla(sessizt, 1)
			elif outas == 'tam': return SM
			elif outas == 'hepsi': return rakamtopla(SM, 0)
			else:
				if float(outas) > 0: return rakamtopla(SM, float(outas))
				else: return 'Çıktı türü?'
		elif err == 1: return nesoohc + ' (' + D + ' karakter \'' + tablo + '\' için tanımsız)'
		elif err == 2: return nitem + ' (' + str(N  - space + hrk) + ' karakter yöntemlerde tanımsız)'
		elif err == 3: return 'Şedde Ayarı?'
	except Exception:
		traceback.print_exc()
# ----------------------------------------------------------------------
methods = [1,7,12,17,22,27,32]
testers = [1,2,3,4,5,6,7,8,9,10,20,30,40,50,60,70,80,90,100,200,300,400,500,600,700,800,900,1000,2000]
for method in methods:
	for tester in testers:
		letter = huddam(tester, '', method)
		abjadv = abjad(letter, method, 1, 0)
		if abjadv!=tester:
			print("method:",str(method),"\ntester:",str(tester),"abjad:",str(abjadv),"huddam:",letter,"\nresult: incorrect match")
		else:
			print("method:",str(method),"\ntester:",str(tester),"abjad:",str(abjadv),"huddam:",letter,"\nresult: correct match")
			clearline = len(str("method: tester:abjad:huddam: result: correct match") + str(method) + str(tester) + str(abjadv) + letter)
			for x in range(clearline):
				print('\b')

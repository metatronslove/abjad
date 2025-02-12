//╔══════════════════════════════════════════════════════════╗
//║                                                          ║
//║   Merhaba  Sahur Özel'in Ebced Hesaplayan Makrolarının   ║
//║   LibreOffice   Basic   dilinden   JavaScript   diline   ║
//║   çevirisidir.  Konu  hakkında  daha  geniş bilgi için   ║
//║   https://github.com/metatronslove/abjad    adresinden   ║
//║   ilgili  Google  Drive  klasörüne  erişebilirsiniz bu   ║
//║   kodlar MIT, Creative commons ve GPL gibi lisanslarla   ║
//║   değil; kullanıcılarının vicdanlarıyla korunmaktadır.   ║
//║   Vicdansızları büyük yargı gününde rab hesaba çeker.    ║
//║                                                          ║
//╚══════════════════════════════════════════════════════════╝
function abjad(metin, tablo, shadda, detail) {
	let abjadsum=0;
	let s=0;
	let N=0;
	let T=0;
	let SH=0;
	let SM=0;
	let err=0;
	let hrk=0;
	let space=0;
	let newline=0;
	let SN='';
	let nitem='';
	for (let choosen of metin) {
		if (['ا', 'أ', 'إ', 'آ', 'ء', 'ى'].includes(choosen)) {
			if ([1, 4, 5, 7, 10, 12, 15, 17, 20, 22, 25, 27, 30, 32, 35].includes(tablo)) {
				s=1;
			} else if ([0, 6, 11, 16, 21, 26, 31].includes(tablo)) {
				s=asgar(choosen, tablo+1);
			} else if ([2, 8, 13, 18, 23, 28, 33].includes(tablo)) {
				s=abjad('الف', tablo-1);
			} else if ([3, 9, 14, 19, 24, 29, 34].includes(tablo)) {
				s=bastet(choosen, 1, -1-(tablo-2), 1, 'ARABIC');
			} else {
				err=1;
			}
		} else if (choosen=='ؤ') {
			if ([1, 4, 7, 10].includes(tablo)) {
				s=7;
			} else if ([12, 15].includes(tablo)) {
				s=6;
			} else if ([17, 20, 22, 25].includes(tablo)) {
				s=801;
			} else if ([27, 30].includes(tablo)) {
				s=41;
			} else if ([32, 35].includes(tablo)) {
				s=901;
			} else if ([0, 6, 11, 16, 21, 26, 31].includes(tablo)) {
				s=asgar('ا', tablo+1)+asgar('و', tablo+1);
			} else if ([2, 8, 13, 18, 23, 28, 33].includes(tablo)) {
				s=abjad('الف', tablo-1, 1)+abjad('واو', tablo-1);
			} else if ([3, 9, 14, 19, 24, 29, 34].includes(tablo)) {
				s=bastet('ا', 1, -1-(tablo-2), 1, 'ARABIC')+bastet('و', 1, -1-(tablo-2), 1, 'ARABIC');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ئ') {
			if ([1, 4, 7, 10].includes(tablo)) {
				s=11;
			} else if ([12, 15].includes(tablo)) {
				s=7;
			} else if ([17, 20, 22, 25, 27, 30, 32, 35].includes(tablo)) {
				s=1001;
			} else if ([0, 6, 11, 16, 21, 26, 31].includes(tablo)) {
				s=asgar('ا', tablo+1)+asgar('ي', tablo+1);
			} else if ([2, 8, 13, 18, 23, 28, 33].includes(tablo)) {
				s=abjad('الف', tablo-1, 1)+abjad('يا', tablo-1);
			} else if ([3, 9, 14, 19, 24, 29, 34].includes(tablo)) {
				s=bastet('ا', 1, -1-(tablo-2), 1, 'ARABIC')+bastet('ي', 1, -1-(tablo-2), 1, 'ARABIC');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ۀ') {
			if ([1, 4, 7, 10].includes(tablo)) {
				s=15;
			} else if ([12, 15].includes(tablo)) {
				s=13;
			} else if ([17, 20, 22, 25].includes(tablo)) {
				s=1800;
			} else if ([27, 30].includes(tablo)) {
				s=1700;
			} else if ([32, 35].includes(tablo)) {
				s=1900;
			} else if ([0, 6, 11, 16, 21, 26, 31].includes(tablo)) {
				s=asgar('ي', tablo+1)+asgar('ه', tablo+1);
			} else if ([2, 8, 13, 18, 23, 28, 33].includes(tablo)) {
				s=abjad('يا', tablo-1, 1)+abjad('ها', tablo-1);
			} else if ([3, 9, 14, 19, 24, 29, 34].includes(tablo)) {
				s=bastet('ي', 1, -1-(tablo-2), 1, 'ARABIC')+bastet('ه', 1, -1-(tablo-2), 1, 'ARABIC');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['ب', 'ﭖ'].includes(choosen)) {
			if ([1, 4, 7, 10, 17, 20, 22, 25, 27, 30, 32, 35].includes(tablo)) {
				s=2;
			} else if ([12, 15].includes(tablo)) {
				s=9;
			} else if ([0, 6, 11, 16, 21, 26, 31].includes(tablo)) {
				s=asgar(choosen, tablo+1);
			} else if ([2, 8, 13, 18, 23, 28, 33].includes(tablo)) {
				s=abjad('با', tablo-1);
			} else if ([3, 9, 14, 19, 24, 29, 34].includes(tablo)) {
				s=bastet(choosen, 1, -1-(tablo-2), 1, 'ARABIC');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['ج', 'ﭺ'].includes(choosen)) {
			if ([1, 4, 7, 10].includes(tablo)) {
				s=3;
			} else if ([12, 15].includes(tablo)) {
				s=100;
			} else if ([17, 20, 22, 25, 27, 30, 32, 35].includes(tablo)) {
				s=5;
			} else if ([0, 6, 11, 16, 21, 26, 31].includes(tablo)) {
				s=asgar(choosen, tablo+1);
			} else if ([2, 8, 13, 18, 23, 28, 33].includes(tablo)) {
				s=abjad('جيم', tablo-1);
			} else if ([3, 9, 14, 19, 24, 29, 34].includes(tablo)) {
				s=bastet(choosen, 1, -1-(tablo-2), 1, 'ARABIC');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='د') {
			if ([1, 4, 7, 10].includes(tablo)) {
				s=4;
			} else if ([12, 15].includes(tablo)) {
				s=70;
			} else if ([17, 20, 22, 25, 27, 30, 32, 35].includes(tablo)) {
				s=8;
			} else if ([0, 6, 11, 16, 21, 26, 31].includes(tablo)) {
				s=asgar(choosen, tablo+1);
			} else if ([2, 8, 13, 18, 23, 28, 33].includes(tablo)) {
				s=abjad('دال', tablo-1);
			} else if ([3, 9, 14, 19, 24, 29, 34].includes(tablo)) {
				s=bastet(choosen, 1, -1-(tablo-2), 1, 'ARABIC');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['ه', 'ة'].includes(choosen)) {
			if ([1, 4, 7, 10].includes(tablo)) {
				s=5;
			} else if ([12, 15].includes(tablo)) {
				s=7;
			} else if ([17, 20, 22, 25].includes(tablo)) {
				s=800;
			} else if ([27, 30].includes(tablo)) {
				s=700;
			} else if ([32, 35].includes(tablo)) {
				s=900;
			} else if ([0, 6, 11, 16, 21, 26, 31].includes(tablo)) {
				s=asgar(choosen, tablo+1);
			} else if ([2, 8, 13, 18, 23, 28, 33].includes(tablo)) {
				s=abjad('ها', tablo-1);
			} else if ([3, 9, 14, 19, 24, 29, 34].includes(tablo)) {
				s=bastet(choosen, 1, -1-(tablo-2), 1, 'ARABIC');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='و') {
			if ([1, 4, 7, 10].includes(tablo)) {
				s=6;
			} else if ([12, 15].includes(tablo)) {
				s=5;
			} else if ([17, 20, 22, 25].includes(tablo)) {
				s=900;
			} else if ([27, 30].includes(tablo)) {
				s=40;
			} else if ([32, 35].includes(tablo)) {
				s=800;
			} else if ([0, 6, 11, 16, 21, 26, 31].includes(tablo)) {
				s=asgar(choosen, tablo+1);
			} else if ([2, 8, 13, 18, 23, 28, 33].includes(tablo)) {
				s=abjad('واو', tablo-1);
			} else if ([3, 9, 14, 19, 24, 29, 34].includes(tablo)) {
				s=bastet(choosen, 1, -1-(tablo-2), 1, 'ARABIC');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['ز', 'ﮊ'].includes(choosen)) {
			if ([1, 4, 7, 10].includes(tablo)) {
				s=7;
			} else if ([12, 15, 27, 30].includes(tablo)) {
				s=600;
			} else if ([17, 20, 22, 25, 32, 35].includes(tablo)) {
				s=20;
			} else if ([0, 6, 11, 16, 21, 26, 31].includes(tablo)) {
				s=asgar(choosen, tablo+1);
			} else if ([2, 8, 13, 18, 23, 28, 33].includes(tablo)) {
				s=abjad('زا', tablo-1);
			} else if ([3, 9, 14, 19, 24, 29, 34].includes(tablo)) {
				s=bastet(choosen, 1, -1-(tablo-2), 1, 'ARABIC');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ح') {
			if ([1, 4, 7, 10].includes(tablo)) {
				s=8;
			} else if ([12, 15].includes(tablo)) {
				s=90;
			} else if ([17, 20, 22, 25, 27, 30, 32, 35].includes(tablo)) {
				s=6;
			} else if ([0, 6, 11, 16, 21, 26, 31].includes(tablo)) {
				s=asgar(choosen, tablo+1);
			} else if ([2, 8, 13, 18, 23, 28, 33].includes(tablo)) {
				s=abjad('حا', tablo-1);
			} else if ([3, 9, 14, 19, 24, 29, 34].includes(tablo)) {
				s=bastet(choosen, 1, -1-(tablo-2), 1, 'ARABIC');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ط') {
			if ([1, 4, 7, 10].includes(tablo)) {
				s=9;
			} else if ([12, 15].includes(tablo)) {
				s=800;
			} else if ([17, 20, 32, 35].includes(tablo)) {
				s=70;
			} else if ([22, 25].includes(tablo)) {
				s=30;
			} else if ([27, 30].includes(tablo)) {
				s=100;
			} else if ([0, 6, 11, 16, 21, 26, 31].includes(tablo)) {
				s=asgar(choosen, tablo+1);
			} else if ([2, 8, 13, 18, 23, 28, 33].includes(tablo)) {
				s=abjad('طا', tablo-1);
			} else if ([3, 9, 14, 19, 24, 29, 34].includes(tablo)) {
				s=bastet(choosen, 1, -1-(tablo-2), 1, 'ARABIC');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['ی', 'ي'].includes(choosen)) {
			if ([1, 4, 7, 10].includes(tablo)) {
				s=10;
			} else if ([12, 15].includes(tablo)) {
				s=6;
			} else if ([17, 20, 22, 25, 27, 30, 32, 35].includes(tablo)) {
				s=1000;
			} else if ([0, 6, 11, 16, 21, 26, 31].includes(tablo)) {
				s=asgar(choosen, tablo+1);
			} else if ([2, 8, 13, 18, 23, 28, 33].includes(tablo)) {
				s=abjad('يا', tablo-1);
			} else if ([3, 9, 14, 19, 24, 29, 34].includes(tablo)) {
				s=bastet(choosen, 1, -1-(tablo-2), 1, 'ARABIC');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['ك', 'ﮒ', 'ک'].includes(choosen)) {
			if ([1, 4, 7, 10, 12, 15].includes(tablo)) {
				s=20;
			} else if ([17, 20, 32, 35].includes(tablo)) {
				s=400;
			} else if ([22, 25].includes(tablo)) {
				s=50;
			} else if ([27, 30].includes(tablo)) {
				s=10;
			} else if ([0, 6, 11, 16, 21, 26, 31].includes(tablo)) {
				s=asgar(choosen, tablo+1);
			} else if ([2, 8, 13, 18, 23, 28, 33].includes(tablo)) {
				s=abjad('كاف', tablo-1);
			} else if ([3, 9, 14, 19, 24, 29, 34].includes(tablo)) {
				s=bastet(choosen, 1, -1-(tablo-2), 1, 'ARABIC');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ل') {
			if ([1, 4, 7, 10].includes(tablo)) {
				s=30;
			} else if ([12, 15].includes(tablo)) {
				s=2;
			} else if ([17, 20, 32, 35].includes(tablo)) {
				s=500;
			} else if ([22, 25].includes(tablo)) {
				s=60;
			} else if ([27, 30].includes(tablo)) {
				s=20;
			} else if ([0, 6, 11, 16, 21, 26, 31].includes(tablo)) {
				s=asgar(choosen, tablo+1);
			} else if ([2, 8, 13, 18, 23, 28, 33].includes(tablo)) {
				s=abjad('لام', tablo-1);
			} else if ([3, 9, 14, 19, 24, 29, 34].includes(tablo)) {
				s=bastet(choosen, 1, -1-(tablo-2), 1, 'ARABIC');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ﻻ') {
			if ([1, 4, 7, 10].includes(tablo)) {
				s=31;
			} else if ([12, 15].includes(tablo)) {
				s=3;
			} else if ([17, 20, 32, 35].includes(tablo)) {
				s=501;
			} else if ([22, 25].includes(tablo)) {
				s=61;
			} else if ([27, 30].includes(tablo)) {
				s=21;
			} else if ([0, 6, 11, 16, 21, 26, 31].includes(tablo)) {
				s=asgar('ا', tablo+1)+asgar('ل', tablo+1);
			} else if ([2, 8, 13, 18, 23, 28, 33].includes(tablo)) {
				s=abjad('الف', tablo-1, 1)+abjad('لام', tablo-1);
			} else if ([3, 9, 14, 19, 24, 29, 34].includes(tablo)) {
				s=bastet('ل', 1, -1-(tablo-2), 1, 'ARABIC')+bastet('ا', 1, -1-(tablo-2), 1, 'ARABIC');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='م') {
			if ([1, 4, 7, 10].includes(tablo)) {
				s=40;
			} else if ([12, 15].includes(tablo)) {
				s=4;
			} else if ([17, 20, 32, 35].includes(tablo)) {
				s=600;
			} else if ([22, 25].includes(tablo)) {
				s=70;
			} else if ([27, 30].includes(tablo)) {
				s=30;
			} else if ([0, 6, 11, 16, 21, 26, 31].includes(tablo)) {
				s=asgar(choosen, tablo+1);
			} else if ([2, 8, 13, 18, 23, 28, 33].includes(tablo)) {
				s=abjad('ميم', tablo-1);
			} else if ([3, 9, 14, 19, 24, 29, 34].includes(tablo)) {
				s=bastet(choosen, 1, -1-(tablo-2), 1, 'ARABIC');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['ن', 'ﯓ'].includes(choosen)) {
			if ([1, 4, 7, 10, 27, 30].includes(tablo)) {
				s=50;
			} else if ([12, 15].includes(tablo)) {
				s=3;
			} else if ([17, 20, 32, 35].includes(tablo)) {
				s=700;
			} else if ([22, 25].includes(tablo)) {
				s=80;
			} else if ([0, 6, 11, 16, 21, 26, 31].includes(tablo)) {
				s=asgar(choosen, tablo+1);
			} else if ([2, 8, 13, 18, 23, 28, 33].includes(tablo)) {
				s=abjad('نون', tablo-1);
			} else if ([3, 9, 14, 19, 24, 29, 34].includes(tablo)) {
				s=bastet(choosen, 1, -1-(tablo-2), 1, 'ARABIC');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='س') {
			if ([1, 4, 12, 15].includes(tablo)) {
				s=60;
			} else if ([7, 10].includes(tablo)) {
				s=300;
			} else if ([17, 20, 32, 35].includes(tablo)) {
				s=30;
			} else if ([22, 25].includes(tablo)) {
				s=600;
			} else if ([27, 30].includes(tablo)) {
				s=800;
			} else if ([0, 6, 11, 16, 21, 26, 31].includes(tablo)) {
				s=asgar(choosen, tablo+1);
			} else if ([2, 8, 13, 18, 23, 28, 33].includes(tablo)) {
				s=abjad('سين', tablo-1);
			} else if ([3, 9, 14, 19, 24, 29, 34].includes(tablo)) {
				s=bastet(choosen, 1, -1-(tablo-2), 1, 'ARABIC');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ع') {
			if ([1, 4, 7, 10].includes(tablo)) {
				s=70;
			} else if ([12, 15].includes(tablo)) {
				s=30;
			} else if ([17, 20, 32, 35].includes(tablo)) {
				s=90;
			} else if ([22, 25].includes(tablo)) {
				s=200;
			} else if ([27, 30].includes(tablo)) {
				s=80;
			} else if ([0, 6, 11, 16, 21, 26, 31].includes(tablo)) {
				s=asgar(choosen, tablo+1);
			} else if ([2, 8, 13, 18, 23, 28, 33].includes(tablo)) {
				s=abjad('عين', tablo-1);
			} else if ([3, 9, 14, 19, 24, 29, 34].includes(tablo)) {
				s=bastet(choosen, 1, -1-(tablo-2), 1, 'ARABIC');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ف') {
			if ([1, 4, 7, 10].includes(tablo)) {
				s=80;
			} else if ([12, 15].includes(tablo)) {
				s=40;
			} else if ([17, 20, 32, 35].includes(tablo)) {
				s=200;
			} else if ([22, 25].includes(tablo)) {
				s=400;
			} else if ([27, 30].includes(tablo)) {
				s=300;
			} else if ([0, 6, 11, 16, 21, 26, 31].includes(tablo)) {
				s=asgar(choosen, tablo+1);
			} else if ([2, 8, 13, 18, 23, 28, 33].includes(tablo)) {
				s=abjad('فا', tablo-1);
			} else if ([3, 9, 14, 19, 24, 29, 34].includes(tablo)) {
				s=bastet(choosen, 1, -1-(tablo-2), 1, 'ARABIC');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ص') {
			if ([1, 4, 22, 25].includes(tablo)) {
				s=90;
			} else if ([7, 10, 27, 30].includes(tablo)) {
				s=60;
			} else if ([12, 15].includes(tablo)) {
				s=400;
			} else if ([17, 20, 32, 35].includes(tablo)) {
				s=50;
			} else if ([0, 6, 11, 16, 21, 26, 31].includes(tablo)) {
				s=asgar(choosen, tablo+1);
			} else if ([2, 8, 13, 18, 23, 28, 33].includes(tablo)) {
				s=abjad('صاد', tablo-1);
			} else if ([3, 9, 14, 19, 24, 29, 34].includes(tablo)) {
				s=bastet(choosen, 1, -1-(tablo-2), 1, 'ARABIC');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ق') {
			if ([1, 4, 7, 10].includes(tablo)) {
				s=100;
			} else if ([12, 15].includes(tablo)) {
				s=50;
			} else if ([17, 20, 32, 35].includes(tablo)) {
				s=300;
			} else if ([22, 25].includes(tablo)) {
				s=500;
			} else if ([27, 30].includes(tablo)) {
				s=400;
			} else if ([0, 6, 11, 16, 21, 26, 31].includes(tablo)) {
				s=asgar(choosen, tablo+1);
			} else if ([2, 8, 13, 18, 23, 28, 33].includes(tablo)) {
				s=abjad('قاف', tablo-1);
			} else if ([3, 9, 14, 19, 24, 29, 34].includes(tablo)) {
				s=bastet(choosen, 1, -1-(tablo-2), 1, 'ARABIC');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ر') {
			if ([1, 4, 7, 10].includes(tablo)) {
				s=200;
			} else if ([12, 15].includes(tablo)) {
				s=8;
			} else if ([17, 20, 22, 25, 32, 35].includes(tablo)) {
				s=10;
			} else if ([27, 30].includes(tablo)) {
				s=500;
			} else if ([0, 6, 11, 16, 21, 26, 31].includes(tablo)) {
				s=asgar(choosen, tablo+1);
			} else if ([2, 8, 13, 18, 23, 28, 33].includes(tablo)) {
				s=abjad('را', tablo-1);
			} else if ([3, 9, 14, 19, 24, 29, 34].includes(tablo)) {
				s=bastet(choosen, 1, -1-(tablo-2), 1, 'ARABIC');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ش') {
			if ([1, 4, 12, 15].includes(tablo)) {
				s=300;
			} else if ([7, 10].includes(tablo)) {
				s=1000;
			} else if ([17, 20, 32, 35].includes(tablo)) {
				s=40;
			} else if ([22, 25].includes(tablo)) {
				s=700;
			} else if ([27, 30].includes(tablo)) {
				s=900;
			} else if ([0, 6, 11, 16, 21, 26, 31].includes(tablo)) {
				s=asgar(choosen, tablo+1);
			} else if ([2, 8, 13, 18, 23, 28, 33].includes(tablo)) {
				s=abjad('شين', tablo-1);
			} else if ([3, 9, 14, 19, 24, 29, 34].includes(tablo)) {
				s=bastet(choosen, 1, -1-(tablo-2), 1, 'ARABIC');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ت') {
			if ([1, 4, 7, 10].includes(tablo)) {
				s=400;
			} else if ([12, 15].includes(tablo)) {
				s=10;
			} else if ([17, 20, 22, 25, 27, 30, 32, 35].includes(tablo)) {
				s=3;
			} else if ([0, 6, 11, 16, 21, 26, 31].includes(tablo)) {
				s=asgar(choosen, tablo+1);
			} else if ([2, 8, 13, 18, 23, 28, 33].includes(tablo)) {
				s=abjad('تا', tablo-1);
			} else if ([3, 9, 14, 19, 24, 29, 34].includes(tablo)) {
				s=bastet(choosen, 1, -1-(tablo-2), 1, 'ARABIC');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ث') {
			if ([1, 4, 7, 10].includes(tablo)) {
				s=500;
			} else if ([12, 15].includes(tablo)) {
				s=700;
			} else if ([17, 20, 22, 25, 27, 30, 32, 35].includes(tablo)) {
				s=4;
			} else if ([0, 6, 11, 16, 21, 26, 31].includes(tablo)) {
				s=asgar(choosen, tablo+1);
			} else if ([2, 8, 13, 18, 23, 28, 33].includes(tablo)) {
				s=abjad('ثا', tablo-1);
			} else if ([3, 9, 14, 19, 24, 29, 34].includes(tablo)) {
				s=bastet(choosen, 1, -1-(tablo-2), 1, 'ARABIC');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='خ') {
			if ([1, 4, 7, 10].includes(tablo)) {
				s=600;
			} else if ([12, 15].includes(tablo)) {
				s=200;
			} else if ([17, 20, 22, 25, 27, 30, 32, 35].includes(tablo)) {
				s=7;
			} else if ([0, 6, 11, 16, 21, 26, 31].includes(tablo)) {
				s=asgar(choosen, tablo+1);
			} else if ([2, 8, 13, 18, 23, 28, 33].includes(tablo)) {
				s=abjad('خا', tablo-1);
			} else if ([3, 9, 14, 19, 24, 29, 34].includes(tablo)) {
				s=bastet(choosen, 1, -1-(tablo-2), 1, 'ARABIC');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ذ') {
			if ([1, 4, 7, 10].includes(tablo)) {
				s=700;
			} else if ([12, 15].includes(tablo)) {
				s=80;
			} else if ([17, 20, 22, 25, 27, 30, 32, 35].includes(tablo)) {
				s=9;
			} else if ([0, 6, 11, 16, 21, 26, 31].includes(tablo)) {
				s=asgar(choosen, tablo+1);
			} else if ([2, 8, 13, 18, 23, 28, 33].includes(tablo)) {
				s=abjad('ذال', tablo-1);
			} else if ([3, 9, 14, 19, 24, 29, 34].includes(tablo)) {
				s=bastet(choosen, 1, -1-(tablo-2), 1, 'ARABIC');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ض') {
			if ([1, 4].includes(tablo)) {
				s=800;
			} else if ([7, 10].includes(tablo)) {
				s=90;
			} else if ([12, 15].includes(tablo)) {
				s=500;
			} else if ([17, 20, 32, 35].includes(tablo)) {
				s=60;
			} else if ([22, 25].includes(tablo)) {
				s=100;
			} else if ([27, 30].includes(tablo)) {
				s=70;
			} else if ([0, 6, 11, 16, 21, 26, 31].includes(tablo)) {
				s=asgar(choosen, tablo+1);
			} else if ([2, 8, 13, 18, 23, 28, 33].includes(tablo)) {
				s=abjad('ضاد', tablo-1);
			} else if ([3, 9, 14, 19, 24, 29, 34].includes(tablo)) {
				s=bastet(choosen, 1, -1-(tablo-2), 1, 'ARABIC');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ظ') {
			if ([1, 4].includes(tablo)) {
				s=900;
			} else if ([7, 10].includes(tablo)) {
				s=800;
			} else if ([12, 15].includes(tablo)) {
				s=1000;
			} else if ([17, 20, 32, 35].includes(tablo)) {
				s=80;
			} else if ([22, 25].includes(tablo)) {
				s=40;
			} else if ([27, 30].includes(tablo)) {
				s=200;
			} else if ([0, 6, 11, 16, 21, 26, 31].includes(tablo)) {
				s=asgar(choosen, tablo+1);
			} else if ([2, 8, 13, 18, 23, 28, 33].includes(tablo)) {
				s=abjad('ظا', tablo-1);
			} else if ([3, 9, 14, 19, 24, 29, 34].includes(tablo)) {
				s=bastet(choosen, 1, -1-(tablo-2), 1, 'ARABIC');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='غ') {
			if ([1, 4].includes(tablo)) {
				s=1000;
			} else if ([7, 10, 12, 15].includes(tablo)) {
				s=900;
			} else if ([17, 20, 32, 35].includes(tablo)) {
				s=100;
			} else if ([22, 25].includes(tablo)) {
				s=300;
			} else if ([27, 30].includes(tablo)) {
				s=90;
			} else if ([0, 6, 11, 16, 21, 26, 31].includes(tablo)) {
				s=asgar(choosen, tablo+1);
			} else if ([2, 8, 13, 18, 23, 28, 33].includes(tablo)) {
				s=abjad('غين', tablo-1);
			} else if ([3, 9, 14, 19, 24, 29, 34].includes(tablo)) {
				s=bastet(choosen, 1, -1-(tablo-2), 1, 'ARABIC');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='א') {
			if ([1, 4].includes(tablo)) {
				s=1;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('אלף', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'HEBREW');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ב') {
			if ([1, 4].includes(tablo)) {
				s=2;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('בית', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'HEBREW');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ג') {
			if ([1, 4].includes(tablo)) {
				s=3;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('גימל', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'HEBREW');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ד') {
			if ([1, 4].includes(tablo)) {
				s=4;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('דלת', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'HEBREW');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ה') {
			if ([1, 4].includes(tablo)) {
				s=5;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('הא', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'HEBREW');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ו') {
			if ([1, 4].includes(tablo)) {
				s=6;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('וו', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'HEBREW');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ז') {
			if ([1, 4].includes(tablo)) {
				s=7;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('זין', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'HEBREW');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ח') {
			if ([1, 4].includes(tablo)) {
				s=8;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('חית', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'HEBREW');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ט') {
			if ([1, 4].includes(tablo)) {
				s=9;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('טיח', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'HEBREW');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='י') {
			if ([1, 4].includes(tablo)) {
				s=10;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('יוד', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'HEBREW');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='כ') {
			if ([1, 4].includes(tablo)) {
				s=20;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('כף', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'HEBREW');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ל') {
			if ([1, 4].includes(tablo)) {
				s=30;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('למד', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'HEBREW');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='מ') {
			if ([1, 4].includes(tablo)) {
				s=40;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('מם', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'HEBREW');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='נ') {
			if ([1, 4].includes(tablo)) {
				s=50;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('נון', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'HEBREW');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ס') {
			if ([1, 4].includes(tablo)) {
				s=60;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('סמך', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'HEBREW');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ע') {
			if ([1, 4].includes(tablo)) {
				s=70;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('עין', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'HEBREW');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='פ') {
			if ([1, 4].includes(tablo)) {
				s=80;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('פא', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'HEBREW');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='צ') {
			if ([1, 4].includes(tablo)) {
				s=90;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('צדי', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'HEBREW');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ק') {
			if ([1, 4].includes(tablo)) {
				s=100;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('קוף', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'HEBREW');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ר') {
			if ([1, 4].includes(tablo)) {
				s=200;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('ריש', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'HEBREW');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ש') {
			if ([1, 4].includes(tablo)) {
				s=300;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('שין', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'HEBREW');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ת') {
			if ([1, 4].includes(tablo)) {
				s=400;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('תו', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'HEBREW');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ך') {
			if ([1, 4].includes(tablo)) {
				s=500;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('ךף', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'HEBREW');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ם') {
			if ([1, 4].includes(tablo)) {
				s=600;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('םם', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'HEBREW');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ן') {
			if ([1, 4].includes(tablo)) {
				s=700;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('וןן', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'HEBREW');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ף') {
			if ([1, 4].includes(tablo)) {
				s=800;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('ףא', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'HEBREW');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (choosen=='ץ') {
			if ([1, 4].includes(tablo)) {
				s=900;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('ץדי', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'HEBREW');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['A', 'a'].includes(choosen)) {
			if ([1, 4].includes(tablo)) {
				s=1;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('aa', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'TURKCE');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['B', 'b'].includes(choosen)) {
			if ([1, 4].includes(tablo)) {
				s=2;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('be', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'TURKCE');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['C', 'c', 'Ç', 'ç'].includes(choosen)) {
			if ([1, 4].includes(tablo)) {
				s=3;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('ce', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'TURKCE');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['D', 'd'].includes(choosen)) {
			if ([1, 4].includes(tablo)) {
				s=4;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('de', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'TURKCE');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['E', 'e'].includes(choosen)) {
			if ([1, 4].includes(tablo)) {
				s=5;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('ee', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'TURKCE');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['F', 'f'].includes(choosen)) {
			if ([1, 4].includes(tablo)) {
				s=6;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('fe', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'TURKCE');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['G', 'g'].includes(choosen)) {
			if ([1, 4].includes(tablo)) {
				s=7;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('ge', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'TURKCE');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['Ğ', 'ğ'].includes(choosen)) {
			if ([1, 4].includes(tablo)) {
				s=8;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('yumuşakge', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'TURKCE');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['H', 'h'].includes(choosen)) {
			if ([1, 4].includes(tablo)) {
				s=9;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('he', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'TURKCE');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['I', 'ı'].includes(choosen)) {
			if ([1, 4].includes(tablo)) {
				s=10;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('ıı', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'TURKCE');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['İ', 'i'].includes(choosen)) {
			if ([1, 4].includes(tablo)) {
				s=20;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('ii', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'TURKCE');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['J', 'j'].includes(choosen)) {
			if ([1, 4].includes(tablo)) {
				s=30;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('je', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'TURKCE');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['K', 'k'].includes(choosen)) {
			if ([1, 4].includes(tablo)) {
				s=40;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('ke', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'TURKCE');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['L', 'l'].includes(choosen)) {
			if ([1, 4].includes(tablo)) {
				s=50;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('le', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'TURKCE');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['M', 'm'].includes(choosen)) {
			if ([1, 4].includes(tablo)) {
				s=60;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('me', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'TURKCE');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['N', 'n'].includes(choosen)) {
			if ([1, 4].includes(tablo)) {
				s=70;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('ne', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'TURKCE');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['O', 'o'].includes(choosen)) {
			if ([1, 4].includes(tablo)) {
				s=80;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('oo', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'TURKCE');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['Ö', 'ö'].includes(choosen)) {
			if ([1, 4].includes(tablo)) {
				s=90;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('öö', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'TURKCE');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['P', 'p'].includes(choosen)) {
			if ([1, 4].includes(tablo)) {
				s=100;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('p', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'TURKCE');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['R', 'r'].includes(choosen)) {
			if ([1, 4].includes(tablo)) {
				s=200;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('re', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'TURKCE');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['S', 's'].includes(choosen)) {
			if ([1, 4].includes(tablo)) {
				s=300;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('se', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'TURKCE');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['Ş', 'ş'].includes(choosen)) {
			if ([1, 4].includes(tablo)) {
				s=400;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('şe', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'TURKCE');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['T', 't'].includes(choosen)) {
			if ([1, 4].includes(tablo)) {
				s=500;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('te', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'TURKCE');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['U', 'u'].includes(choosen)) {
			if ([1, 4].includes(tablo)) {
				s=600;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('uu', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'TURKCE');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['Ü', 'ü'].includes(choosen)) {
			if ([1, 4].includes(tablo)) {
				s=700;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('üü', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'TURKCE');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['V', 'v'].includes(choosen)) {
			if ([1, 4].includes(tablo)) {
				s=800;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('ve', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'TURKCE');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['Y', 'y'].includes(choosen)) {
			if ([1, 4].includes(tablo)) {
				s=900;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('ye', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'TURKCE');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else if (['Z', 'z'].includes(choosen)) {
			if ([1, 4].includes(tablo)) {
				s=1000;
			} else if (tablo==0) {
				s=asgar(choosen, 1);
			} else if (tablo==2) {
				s=abjad('ze', 1);
			} else if (tablo==3) {
				s=bastet(choosen, 1, -2, 1, 'TURKCE');
			} else if (tablo==5) {
				s=1;
			} else {
				err=1;
			}
		} else {
			s=0;
			N+=1;
			if (choosen=='ّ') {
				if (shadda==2) {
					let C=1;
					while (saf(metin[T-C], '')=='') {
						C+=1;
						SH+=1;
						s=abjad(metin[T-C], tablo);
					}
				} else if (shadda==1) {
					s=0;
				} else {
					err=3;
				}
				hrk+=1;
			} else if (choosen=='ٰ') {
				let C=1;
				while (saf(metin[T-C], '')=='' || metin[T-C]=='ـ') {
					if (metin[T-C]=='ـ' || saf(metin[T-C], '')==metin[T-C]) {
						s=abjad('ا', tablo);
					} else {
						C+=1;
					}
				}
			} else if (choosen==' ') {
				space+=1;
			} else if (['َ', 'ِ', 'ً', 'ٍ', 'ُ', 'ْ', 'ٌ', 'ـ'].includes(choosen)) {
				hrk+=1;
			} else if (['\n', '\r'].includes(choosen)) {
				newline+=1;
			} else {
				err=2;
				nitem+=choosen;
			}
		}
		T+=1;
		if (detail==1) {
			if (saf(choosen, 0)=='ا') {
				SN+='['+'ا'+'='+String(s)+']';
			} else if (saf(choosen, 0)==choosen) {
				SN+='['+choosen+'='+String(s)+']';
			}
		} else {
			SM+=s;
		}
		if ([4, 10, 15, 20, 25, 30, 35].includes(tablo)) {
			if (detail==1) {
				SN+='[+'+String((metin)-N)+SH.length+' harf]';
			} else {
				SM+=((metin)-N)+SH.length;
			}
		}
		if (err==0) {
			if (detail==1) {
				abjadsum=SN;
			} else {
				abjadsum=SM;
			}
		} else if (err==1) {
			abjadsum='Tablo Kodu?';
		} else if (err==2) {
			abjadsum=String(N-(space+hrk))+' Tanımlanmayan) {'+str(nitem)+' ||'+str(space)+' boşluk||'+str(hrk)+' harake';
		} else if (err==3) {
			abjadsum='Şedde Seçeneği?';
		}
	}
	return abjadsum;
}

function wordbyword(metin, tablo, shadda, detail) {
	let content='';
	let word='';
	metin+=' ';
	for (let counter of metin) {
		word+=counter;
		if ([' ', '\n'].includes(counter)) {
			calculation='('+String(abjad(word, tablo, shadda, detail))+')'+counter;
			if (calculation!='(0)'+counter) {
				content+=word+altayaz(calculation);
			}
			word='';
			calculation='';
		}
	}
	return content;
}

function is_parseInt(value) {
	if (value==null) {
		return false;
	}
	try {
		parseInt(value);
		return True;
	} catch (err) {
		return false;
	}
}

function Left(str, n) {
	if (n<=0) return "";
	else if (n>String(str).length) return str;
	else return String(str).substring(0, n);
}

function Right(str, n) {
	if (n<=0) return "";
	else if (n>String(str).length) return str;
	else {
		var iLen=String(str).length;
		return String(str).substring(iLen, iLen-n);
	}
}

function bastet(metin, mt, tablo, shadda, language, detail) {
	let err=0;
	let ns='';
	let baster=0;
	let invertablo=0;
	if (is_parseInt(metin)) {
		baster=int(metin);
	} else {
		if (tablo>=0 && tablo<16) {
			baster=abjad(metin, tablo, shadda);
		} else if (tablo>=-16 && tablo<0) {
			invertablo=(-1*tablo)-1;
			baster=abjad(metin, invertablo, shadda);
		}
	}
	for (let hm=0; hm<mt; hm++) {
		ns='';
		ns=nutket(baster, language.toUpperCase());
		baster=0;
		if (tablo>=0 && tablo<16) {
			baster=abjad(ns, tablo, 1)+abjad(ns, 5);
		} else if (tablo>=-16 && tablo<0) {
			baster=abjad(ns, invertablo);
		} else {
			baster='Tablo Kodu?';
		}
	}
	if (err==0) {
		if (detail==1) {
			baster=ns;
		}
	} else if (err==1) {
		baster='Dil?';
	}
	return baster;
}

function unsur(metin, otabiat, otype, shadda, guide) {
	let T=0;
	let selected='';
	let liste='';
	let adet=0;
	for (let selectable of metin) {
		if (selectable=='ّ') {
			if (shadda==2) {
				let C=1;
				while (saf(metin[T-C], 0)=='') {
					C+=1;
					selectable=metin[T-C];
				}
			}
		}
		if (['ا', 'ب', 'ج', 'س', 'ص', 'ر', 'خ', 'ه', 'ز', 'ح', 'ط', 'ي', 'ی', 'ل', 'ة', 'ث', 'د', 'ك', 'ع', 'ف', 'ق', 'ش', 'ض', 'و', 'م', 'ن', 'ت', 'ذ', 'ظ', 'غ'].includes(selectable)) {
			selected+=selectable;
		} else if (['أ', 'إ', 'آ', 'ء', 'ى'].includes(selectable)) {
			selected+='ا';
		} else if (selectable=='ؤ') {
			selected+='و'+'ا';
		} else if (selectable=='ۀ') {
			selected+='ه'+'ي';
		} else if (selectable=='ئ') {
			selected+='ي'+'ا';
		} else if (['א', 'ב', 'ג', 'ד', 'ה', 'ו', 'ז', 'ח', 'ט', 'י', 'כ', 'ל', 'מ', 'נ', 'ס', 'ע', 'פ', 'צ', 'ק', 'ר', 'ש', 'ת', 'ם', 'ן', 'ף', 'ץ', 'ך'].includes(selectable)) {
			selected+=selectable;
		} else if (selectable.toUpperCase() in ['A', 'B', 'C', 'Ç', 'D', 'E', 'F', 'G', 'Ğ', 'H', 'I', 'İ', 'J', 'K', 'L', 'M', 'N', 'O', 'Ö', 'P', 'R', 'S', 'Ş', 'T', 'U', 'Ü', 'V', 'Y', 'Z']) {
			selected+=selectable.toUpperCase();
		}
		T+=1;
	}
	metin=selected;
	if (['TURKCE', 0].includes(guide)) {
		if (['fire', 'ateş', 0].includes(otype)) {
			for (let counter of metin) {
				if (['A', 'D', 'Ğ', 'J', 'N', 'R', 'U', 'Z'].includes(counter)) {
					liste+=counter+' ';
					adet+=1;
				}
			}
		} else if (['air', 'hava', 1].includes(otype)) {
			for (let counter of metin) {
				if (['B', 'E', 'H', 'K', 'O', 'S', 'Ü'].includes(counter)) {
					liste+=counter+' ';
					adet+=1;
				}
			}
		} else if (['water', 'su', 2].includes(otype)) {
			for (let counter of metin) {
				if (['C', 'F', 'I', 'L', 'Ö', 'Ş', 'V'].includes(counter)) {
					liste+=counter+' ';
					adet+=1;
				}
			}
		} else if (['earth', 'toprak', 3].includes(otype)) {
			for (let counter of metin) {
				if (['Ç', 'G', 'İ', 'M', 'P', 'T', 'Y'].includes(counter)) {
					liste+=counter+' ';
					adet+=1;
				}
			}
		}
	} else if (['HEBREW', 4].includes(guide)) {
		if (['fire', 'ateş', 0].includes(otype)) {
			for (let counter of metin) {
				if (['א', 'ה', 'ט', 'מ', 'פ', 'ש', 'ף'].includes(counter)) {
					liste+=counter+' ';
					adet+=1;
				}
			}
		} else if (['air', 'hava', 1].includes(otype)) {
			for (let counter of metin) {
				if (['ב', 'ו', 'י', 'נ', 'צ', 'ת', 'ץ'].includes(counter)) {
					liste+=counter+' ';
					adet+=1;
				}
			}
		} else if (['water', 'su', 2].includes(otype)) {
			for (let counter of metin) {
				if (['ג', 'ז', 'כ', 'ס', 'ק', 'ם', 'ך'].includes(counter)) {
					liste+=counter+' ';
					adet+=1;
				}
			}
		} else if (['earth', 'toprak', 3].includes(otype)) {
			for (let counter of metin) {
				if (['ד', 'ח', 'ל', 'ע', 'ר', 'ן'].includes(counter)) {
					liste+=counter+' ';
					adet+=1;
				}
			}
		}
	} else if (['ARABI', 1].includes(guide)) {
		if (['fire', 'ateş', 0].includes(otype)) {
			for (let counter of metin) {
				if (['ا', 'ه', 'ط', 'م', 'ف', 'ش', 'ذ'].includes(counter)) {
					liste+=counter+' ';
					adet+=1;
				}
			}
		} else if (['air', 'hava', 1].includes(otype)) {
			for (let counter of metin) {
				if (['د', 'ح', 'ل', 'ع', 'ر', 'خ', 'غ'].includes(counter)) {
					liste+=counter+' ';
					adet+=1;
				}
			}
		} else if (['water', 'su', 2].includes(otype)) {
			for (let counter of metin) {
				if (['ب', 'و', 'ن', 'ي', 'ی', 'ص', 'ت', 'ض'].includes(counter)) {
					liste+=counter+' ';
					adet+=1;
				}
			}
		} else if (['earth', 'toprak', 3].includes(otype)) {
			for (let counter of metin) {
				if (['ج', 'ز', 'ك', 'س', 'ق', 'ث', 'ظ'].includes(counter)) {
					liste+=counter+' ';
					adet+=1;
				}
			}
		}
	} else if (['BUNI', 2].includes(guide)) {
		if (['fire', 'ateş', 0].includes(otype)) {
			for (let counter of metin) {
				if (['ا', 'ه', 'ط', 'م', 'ف', 'ش', 'ذ'].includes(counter)) {
					liste+=counter+' ';
					adet+=1;
				}
			}
		} else if (['air', 'hava', 1].includes(otype)) {
			for (let counter of metin) {
				if (['ب', 'و', 'ن', 'ي', 'ی', 'ص', 'ت', 'ض'].includes(counter)) {
					liste+=counter+' ';
					adet+=1;
				}
			}
		} else if (['water', 'su', 2].includes(otype)) {
			for (let counter of metin) {
				if (['د', 'ح', 'ل', 'ع', 'ر', 'خ', 'غ'].includes(counter)) {
					liste+=counter+' ';
					adet+=1;
				}
			}
		} else if (['earth', 'toprak', 3].includes(otype)) {
			for (let counter of metin) {
				if (['ج', 'ز', 'ك', 'س', 'ق', 'ث', 'ظ'].includes(counter)) {
					liste+=counter+' ';
					adet+=1;
				}
			}
		}
	} else if (['HUSEYNI', 3].includes(guide)) {
		if (['fire', 'ateş', 0].includes(otype)) {
			for (let counter of metin) {
				if (['ا', 'ه', 'ط', 'م', 'ف', 'ش', 'ذ'].includes(counter)) {
					liste+=counter+' ';
					adet+=1;
				}
			}
		} else if (['air', 'hava', 1].includes(otype)) {
			for (let counter of metin) {
				if (['ج', 'ز', 'ك', 'س', 'ق', 'ث', 'ظ'].includes(counter)) {
					liste+=counter+' ';
					adet+=1;
				}
			}
		} else if (['water', 'su', 2].includes(otype)) {
			for (let counter of metin) {
				if (['د', 'ح', 'ل', 'ع', 'ر', 'خ', 'غ'].includes(counter)) {
					liste+=counter+' ';
					adet+=1;
				}
			}
		} else if (['earth', 'toprak', 3].includes(otype)) {
			for (let counter of metin) {
				if (['ب', 'و', 'ي', 'ی', 'ن', 'ص', 'ت', 'ض'].includes(counter)) {
					liste+=counter+' ';
					adet+=1;
				}
			}
		}
	} else {
		if (['fire', 'ateş', 0].includes(otype)) {
			for (let counter of metin) {
				if (['ا', 'ب', 'ج', 'س', 'ص', 'ر', 'خ'].includes(counter)) {
					liste+=counter+' ';
					adet+=1;
				}
			}
		} else if (['air', 'hava', 1].includes(otype)) {
			for (let counter of metin) {
				if (['ه', 'ز', 'ح', 'ط', 'ي', 'ل', 'ة', 'ث', 'ی'].includes(counter)) {
					liste+=counter+' ';
					adet+=1;
				}
			}
		} else if (['water', 'su', 2].includes(otype)) {
			for (let counter of metin) {
				if (['د', 'ك', 'ع', 'ف', 'ق', 'ش', 'ض'].includes(counter)) {
					liste+=counter+' ';
					adet+=1;
				}
			}
		} else if (['earth', 'toprak', 3].includes(otype)) {
			for (let counter of metin) {
				if (['و', 'م', 'ن', 'ت', 'ذ', 'ظ', 'غ'].includes(counter)) {
					liste+=counter+' ';
					adet+=1;
				}
			}
		}
	}
	if (['liste', 'list', 1].includes(otabiat)) {
		return liste;
	} else if (['adet', 'amount', 0].includes(otabiat)) {
		return adet;
	}
}

function saf(metin, ayrac, shadda) {
	let T=0;
	let result='';
	let irun='';
	if (ayrac==0) {
		irun='';
	} else {
		irun=ayrac;
	}
	for (let selectable of metin) {
		if (selectable==' ') {
			if (ayrac=='') {
				s=selectable;
			} else if (ayrac==0) {
				s='';
			} else {
				s=irun;
			}
		}
		if (selectable=='ّ' && shadda==2) {
			let C=1;
			while (saf(metin[T-C], '')=='') {
				C+=1;
			}
			selectable=metin[T-C];
		}
		if (['ا', 'ب', 'ج', 'س', 'ص', 'ر', 'خ', 'ه', 'ز', 'ح', 'ط', 'ي', 'ی', 'ل', 'ة', 'ث', 'د', 'ك', 'ع', 'ف', 'ق', 'ش', 'ض', 'و', 'م', 'ن', 'ت', 'ذ', 'ظ', 'غ'].includes(selectable)) {
			s=selectable+irun;
		} else if (['أ', 'إ', 'آ', 'ء', 'ى'].includes(selectable)) {
			s=selectable+irun;
		} // 'ا'; 
		else if (selectable=='ؤ') {
			s=selectable+irun;
		} // 'و'+'ا'; 
		else if (selectable=='ۀ') {
			s=selectable+irun;
		} // 'ه'+'ي'; 
		else if (selectable=='ئ') {
			s=selectable+irun;
		} // 'ي'+'ا'; 
		else if (['א', 'ב', 'ג', 'ד', 'ה', 'ו', 'ז', 'ח', 'ט', 'י', 'כ', 'ל', 'מ', 'נ', 'ס', 'ע', 'פ', 'צ', 'ק', 'ר', 'ש', 'ת', 'ם', 'ן', 'ף', 'ץ', 'ך'].includes(selectable)) {
			s=selectable;
		} else if (['A', 'B', 'C', 'Ç', 'D', 'E', 'F', 'G', 'Ğ', 'H', 'I', 'İ', 'J', 'K', 'L', 'M', 'N', 'O', 'Ö', 'P', 'R', 'S', 'Ş', 'T', 'U', 'Ü', 'V', 'Y', 'Z'].includes(selectable)) {
			s=selectable;
		} else if (['a', 'b', 'c', 'ç', 'd', 'e', 'f', 'g', 'ğ', 'h', 'ı', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'ö', 'p', 'r', 's', 'ş', 't', 'u', 'ü', 'v', 'y', 'z'].includes(selectable)) {
			s=selectable;
		} else {
			s='';
		}
		T+=1;
		result+=s;
	}
	return result;
}

function teksir(metin, ayrac, shadda) {
	if (shadda==2) {
		newmetin=saf(metin, 0, 2);
	} else {
		newmetin=saf(metin, 0);
	}
	sonucu='';
	let lengthdouble=0;
	result=saf(newmetin, ayrac)+'\n';
	iksir=newmetin;
	for (let produce=0; produce<newmetin.length-1; produce++) {
		if ((newmetin.length / 2)==Math.floor(newmetin.length / 2)) {
			let lengthdouble=1;
		}
		iksir='';
		for (let counter=1; counter<=Math.floor(newmetin.length / 2); counter++) {
			inverse=newmetin.length-counter;
			iksir+=newmetin[inverse];
			iksir+=newmetin[counter-1];
		}
		if (lengthdouble!=1) {
			iksir+=newmetin[Math.floor(newmetin.length / 2)];
		}
		sonucu=result+saf(iksir, ayrac)+'\n';
		result=sonucu;
		newmetin=saf(iksir, 0);
	}
	return sonucu;
}

function IndianToArab(number) {
	return String(number).replace(/٠/g, '0').replace(/١/g, '1').replace(/٢/g, '2').replace(/٣/g, '3').replace(/٤/g, '4').replace(/٥/g, '5').replace(/٦/g, '6').replace(/٧/g, '7').replace(/٨/g, '8').replace(/٩/g, '9');
}

function ArabToIndian(number) {
	return String(number).replace(/0/g, '٠').replace(/1/g, '١').replace(/2/g, '٢').replace(/3/g, '٣').replace(/4/g, '٤').replace(/5/g, '٥').replace(/6/g, '٦').replace(/7/g, '٧').replace(/8/g, '٨').replace(/9/g, '٩');
}

function numbers2arab(number) {
	// Prefer newer methods like ArabToIndian() and IndianToArab()
	return ArabToIndian(number);
}

function tesbih(zkr, minimum, boncuk, bolum) {
	let result='';
	if (zkr<minumum) {
		zkr *= zkr;
	}
	let turn=Math.floor(zkr / boncuk);
	let zero=zkr-(turn*boncuk);
	let part=Math.floor(zero / bolum);
	let once=zero-(part*bolum);
	if (turn>0) {
		result='['+turn+' turn]';
	}
	if (part>0) {
		result+='['+part+'x'+bolum+']';
	}
	if (once>0) {
		result+='[and '+once+']';
	}
	return result;
}

function altayaz(girdi) {
	return girdi.replace(/0/g, '₀').replace(/1/g, '₁').replace(/2/g, '₂').replace(/3/g, '₃').replace(/4/g, '₄').replace(/5/g, '₅').replace(/6/g, '₆').replace(/7/g, '₇').replace(/8/g, '₈').replace(/9/g, '₉').replace(/\+/g, '₊').replace(/\-/g, '₋').replace(/\=/g, '₌').replace(/\(/g, '₍').replace(/\[/g, '₍').replace(/\)/g, '₎').replace(/\]/g, '₎');
}

function rakamtopla(valuez, amount) {
	if (amount==0) {
		hepsi=String(valuez);
		while (String(valuez).length>1) {
			let newsum=0;
			for (let choosen of String(valuez)) {
				newsum+=parseInt(choosen);
			}
			valuez=newsum;
		}
		hepsi+=' ► '+newsum;
		return hepsi;
	} else {
		while (String(valuez).length>amount) {
			let newsum=0;
			for (let choosen of String(valuez)) {
				newsum+=parseInt(choosen);
			}
			valuez=newsum;
		}
		return valuez;
	}
}

function newline(amount) {
	for (let rows=1; rows<amount; rows+=1) {
		nl+='\n';
	}
	return nl;
}

function asgar(harf, level) {
	var c=parseFloat(abjad(harf, level, 1));
	if (c>12) {
		return c-(12*Math.floor(c / 12));
	} else {
		return c;
	}
}

function nutket(MyNumber, language) {
    let temp="";
    let nutuk="";
    let counter=0;
    let dongu=0;
    let place=[];
    let PlaceOnes=[];
    let PlaceTwos=[];
    let PlaceAppent=[];
    let PlacePlural=[];
    language=language.toUpperCase();
    switch (language) {
        case "ARABIC":
            if (MyNumber==0 && counter==0) {
                return "صفر";
            }
            PlaceOnes=["", "ألف", "مليون", "مليار", "تريليون"];
            PlaceTwos=["", "ألفان", "مليونان", "ملياران", "تريليونان"];
            PlaceAppent=["", "ألفاً", "مليوناً", "ملياراً", "تريليوناً"];
            PlacePlural=["", "آلاف", "ملايين", "مليارات", "تريليونات"];
            MyNumber=MyNumber.toString().trim();
            do {
                var EventHappenned=0;
                if (counter>0 && parseFloat(Right(MyNumber, 3))==1) {
                    temp="";
                    if (nutuk.length>0) {
                        nutuk=PlaceOnes[counter] + " و " + nutuk;
                    } else {
                        nutuk=PlaceOnes[counter] + " " + nutuk;
                    }
                } else if (counter>0 && parseFloat(Right(MyNumber, 3))==2) {
                    temp="";
                    if (nutuk.length>0) {
                        nutuk=PlaceTwos[counter] + " و " + nutuk;
                    } else {
                        nutuk=PlaceTwos[counter] + " " + nutuk;
                    }
                } else {
                    temp=GetHundreds(Right(MyNumber, 3), language, counter, nutuk);
                }
                if (temp!="") {
                    if (counter>0) {
                        if (nutuk.length>0) {
                            nutuk=" و " + nutuk;
                        }
                        if (parseFloat(Right(MyNumber, 3))!=2) {
                            if (Math.floor(parseFloat(Right(MyNumber, 3)) / 100)!=1) {
                                if (parseFloat(Right(MyNumber, 3)) >= 3 && parseFloat(Right(MyNumber, 3)) <= 10) {
                                    nutuk=" " + PlacePlural[counter] + nutuk;
                                    EventHappenned=1;
                                }
                            }
                        }
                    }
                    if (EventHappenned==0) {
                        if (nutuk.length>0) {
                            nutuk=" " + PlaceAppent[counter] + nutuk;
                        } else {
                            nutuk=" " + PlaceOnes[counter] + nutuk;
                        }
                    } else {
                        EventHappenned=0;
                    }
                    nutuk=temp + nutuk;
                    temp="";
                }
                if (MyNumber.length>3) {
                    MyNumber=Left(MyNumber, MyNumber.length - 3);
                } else {
                    MyNumber="";
                }
                counter += 1;
            } while (MyNumber!="");
            break;
        case "HEBREW":
            if (MyNumber==0 && counter==0) {
                return "אֶפֶס";
            }
            PlaceOnes=["", "אלף", "מיליון", "מיליארד", "טריליון"];
            PlaceTwos=["", "אלפיים ", "שני מיליון ", "שני מיליארד ", "שני טריליון "];
            PlaceAppent=["", "אלפא", "מיליון", "מיליארד", "טריליון"];
            PlacePlural=["", "אלפים", "מיליונים", "מיליארדים", "טריליונים"];
            MyNumber=MyNumber.toString().trim();
            do {
                var EventHappenned=0;
                if (counter>0 && parseFloat(Right(MyNumber, 3))==1) {
                    temp="";
                    if (nutuk.length>0) {
                        nutuk=PlaceOnes[counter] + " ו " + nutuk;
                    } else {
                        nutuk=PlaceOnes[counter] + " " + nutuk;
                    }
                } else if (counter>0 && parseFloat(Right(MyNumber, 3))==2) {
                    temp="";
                    if (nutuk.length>0) {
                        nutuk=PlaceTwos[counter] + " ו " + nutuk;
                    } else {
                        nutuk=PlaceTwos[counter] + " " + nutuk;
                    }
                } else {
                    temp=GetHundreds(Right(MyNumber, 3), language, counter, nutuk);
                }
                if (temp!="") {
                    if (counter>0) {
                        if (nutuk.length>0) {
                            nutuk=" ו " + nutuk;
                        }
                        if (parseFloat(Right(MyNumber, 3))!=2) {
                            if (Math.floor(parseFloat(Right(MyNumber, 3)) / 100)!=1) {
                                if (parseFloat(Right(MyNumber, 3)) >= 3 && parseFloat(Right(MyNumber, 3)) <= 10) {
                                    nutuk=" " + PlacePlural[counter] + nutuk;
                                    EventHappenned=1;
                                }
                            }
                        }
                    }
                    if (EventHappenned==0) {
                        if (nutuk.length>0) {
                            nutuk=" " + PlaceAppent[counter] + nutuk;
                        } else {
                            nutuk=" " + PlaceOnes[counter] + nutuk;
                        }
                    } else {
                        EventHappenned=0;
                    }
                    nutuk=temp + nutuk;
                    temp="";
                }
                if (MyNumber.length>3) {
                    MyNumber=Left(MyNumber, MyNumber.length - 3);
                } else {
                    MyNumber="";
                }
                counter += 1;
            } while (MyNumber!="");
            break;
        case "TURKCE":
            if (MyNumber==0 && dongu==0) {
                return "sıfır";
            }
            place=["", "bin ", "milyon ", "milyar ", "trilyon "];
            MyNumber=MyNumber.toString().trim();
            while (MyNumber!="") {
                if (dongu==1 && parseFloat(Right(MyNumber, 3))==1) {
                    temp="";
                    nutuk=place[dongu] + nutuk;
                } else {
                    temp=GetHundreds(Right(MyNumber, 3), language, dongu, nutuk);
                }
                if (temp!="") {
                    nutuk=temp + " " + place[dongu] + nutuk;
                    temp="";
                }
                if (MyNumber.length>3) {
                    MyNumber=Left(MyNumber, MyNumber.length - 3);
                } else {
                    MyNumber="";
                }
                dongu += 1;
            }
            break;
        default:
    }
    counter=0;
    return nutuk.trim();
}

function GetHundreds(MyNumber, language, counter, nutuk) {
    let result="";
    MyNumber=("000" + MyNumber).slice(-3);
    const MyNumberStr=MyNumber.toString();
    switch (language) {
        case "ARABIC":
            if (parseFloat(MyNumberStr.charAt(0))>0) {
                if (parseFloat(MyNumberStr.slice(-2))==0 && parseFloat(MyNumberStr.charAt(0))==2) {
                    result=counter==0 ? "مئتان " : "مئتا ";
                } else {
                    switch (parseFloat(MyNumberStr.charAt(0))) {
                        case 1:
                            result="مائة ";
                            break;
                        case 2:
                            result="مئتان ";
                            break;
                        case 3:
                            result="ثلاثمائة ";
                            break;
                        case 4:
                            result="أربعمائة ";
                            break;
                        case 5:
                            result="خمسمائة ";
                            break;
                        case 6:
                            result="ستمائة ";
                            break;
                        case 7:
                            result="سبعمائة ";
                            break;
                        case 8:
                            result="ثمانمائة ";
                            break;
                        case 9:
                            result="تسعمائة ";
                            break;
                        default:
                    }
                }
            }
            if (result.length>0 && parseFloat(MyNumberStr.slice(-2))!=0) {
                result += " و ";
            }
            if (MyNumberStr.charAt(1)!="0") {
                result += GetTens(parseInt(MyNumberStr.slice(1)), language, counter, parseFloat(MyNumberStr.charAt(0)), result + nutuk);
            } else {
                result += GetDigit(parseFloat(MyNumberStr.charAt(2)), language);
            }
            break;
        case "HEBREW":
            if (parseFloat(MyNumberStr.charAt(0))>0) {
                switch (parseFloat(MyNumberStr.charAt(0))) {
                    case 1:
                        result="מאה ";
                        break;
                    case 2:
                        result="מאתיים ";
                        break;
                    case 3:
                        result="שלוש מאות ";
                        break;
                    case 4:
                        result="ארבע מאות ";
                        break;
                    case 5:
                        result="חמש מאות ";
                        break;
                    case 6:
                        result="שש מאות ";
                        break;
                    case 7:
                        result="שבע מאות ";
                        break;
                    case 8:
                        result="שמונה מאות ";
                        break;
                    case 9:
                        result="תשע מאות ";
                        break;
                    default:
                }
            }
            if (result.length>0 && parseFloat(MyNumberStr.slice(-2))!=0) {
                result += " ו ";
            }
            if (MyNumberStr.charAt(1)!="0") {
                result += GetTens(parseInt(MyNumberStr.slice(1)), language, counter, parseFloat(MyNumberStr.charAt(0)), result + nutuk);
            } else {
                result += GetDigit(parseFloat(MyNumberStr.charAt(2)), language);
            }
            break;
        case "TURKCE":
            if (parseFloat(MyNumberStr.charAt(0))>0) {
                result=parseFloat(MyNumberStr.charAt(0))>1 ? GetDigit(parseFloat(MyNumberStr.charAt(0)), language) + " yüz " : "yüz ";
            }
            if (MyNumberStr.charAt(1)!="0") {
                result += GetTens(parseInt(MyNumberStr.slice(1)), language);
            } else {
                result += GetDigit(parseFloat(MyNumberStr.charAt(2)), language);
            }
            break;
        default:
    }
    return result;
}

function GetTens(TensText, language, counter, Hundreds, nutuk) {
    let result="";
    let PlaceOnes=[];
    let PlaceTwos=[];

    switch (language) {
        case "ARABIC":
            PlaceOnes=["", "ألف ", "مليون ", "مليار ", "تريليون "];
            PlaceTwos=["", "ألفان ", "مليونان ", "ملياران ", "تريليونان "];
            if (parseFloat(Left(TensText, 1))==1) {
                switch (parseFloat(TensText)) {
                    case 10:
                        result="عشرة";
                        break;
                    case 11:
                        result="إحدى عشرة";
                        break;
                    case 12:
                        result="اثنتا عشرة";
                        break;
                    case 13:
                        result="ثلاث عشرة";
                        break;
                    case 14:
                        result="أربع عشرة";
                        break;
                    case 15:
                        result="خمس عشرة";
                        break;
                    case 16:
                        result="ست عشرة";
                        break;
                    case 17:
                        result="سبع عشرة";
                        break;
                    case 18:
                        result="ثماني عشرة";
                        break;
                    case 19:
                        result="تسع عشرة";
                        break;
                    default:
                }
            } else {
                if (parseFloat(TensText)==2 && Hundreds==0 && counter>0) {
                    result=PlaceTwos[counter] + result;
                } else {
                    if (parseFloat(TensText)==1 && counter>0) {
                        result=PlaceOnes[counter] + result;
                    } else if (parseFloat(TensText)==1 || parseFloat(TensText)==2) {
                        if (counter==0 && Hundreds==0 && parseFloat(TensText)==0) {
                            result += "";
                        }
                    }
                }
                if (parseFloat(TensText)>0) {
                    if (parseFloat(Left(TensText, 1))>1) {
                        result += GetTensStatus(parseFloat(Left(TensText, 1)), language);
                    }
                    if (result.length>0 && parseFloat(Right(TensText, 1))!=0) {
                        result += "و ";
                    }
                    result += GetDigit(parseFloat(Right(TensText, 1)), language);
                } else {
                    if ((nutuk.length>0 && parseFloat(Left(TensText, 1))!=0) || (result.length>0 && parseFloat(Left(TensText, 1))!=0)) {
                        result += "و ";
                    }
                    result += GetTensStatus(parseFloat(Left(TensText, 1)), language);
                }
            }
            break;
        case "HEBREW":
            PlaceOnes=["", "אלפים ", "מיליון ", "מיליארד ", "טריליון "];
            PlaceTwos=["", "אלפיים ", "שני מיליון ", "שני מיליארד ", "שני טריליון "];
            if (parseFloat(Left(TensText, 1))==1) {
                switch (parseFloat(TensText)) {
                    case 10:
                        result="עשר ";
                        break;
                    case 11:
                        result="אחת עשרה ";
                        break;
                    case 12:
                        result="שתים עשרה ";
                        break;
                    case 13:
                        result="שלוש עשרה ";
                        break;
                    case 14:
                        result="ארבע עשרה ";
                        break;
                    case 15:
                        result="חמש עשרה ";
                        break;
                    case 16:
                        result="שש עשרה ";
                        break;
                    case 17:
                        result="שבע עשרה ";
                        break;
                    case 18:
                        result="שמונה עשרה ";
                        break;
                    case 19:
                        result="תשע עשרה ";
                        break;
                    default:
                }
            } else {
                if (parseFloat(TensText)==2 && Hundreds==0 && counter>0) {
                    result=PlaceTwos[counter] + result;
                } else {
                    if (parseFloat(TensText)==1 && counter>0) {
                        result=PlaceOnes[counter] + result;
                    } else if (parseFloat(TensText)==1 || parseFloat(TensText)==2) {
                        if (counter==0 && Hundreds==0 && parseFloat(TensText)==0) {
                            result += "";
                        }
                    }
                }
                if (parseFloat(TensText)>0) {
                    if (parseFloat(Left(TensText, 1))>1) {
                        result += GetTensStatus(parseFloat(Left(TensText, 1)), language);
                    }
                    if (result.length>0 && parseFloat(Right(TensText, 1))!=0) {
                        result += "ו ";
                    }
                    result += GetDigit(parseFloat(Right(TensText, 1)), language);
                } else {
                    if (nutuk.length>0 && parseFloat(Left(TensText, 1))!=0 || result.length>0 && parseFloat(Left(TensText, 1))!=0) {
                        result += "ו ";
                    }
                    result += GetTensStatus(parseFloat(Left(TensText, 1)), language);
                }
            }
            break;
        case "TURKCE":
            switch (parseFloat(Left(TensText, 1))) {
                case 1:
                    result="on ";
                    break;
                case 2:
                    result="yirmi ";
                    break;
                case 3:
                    result="otuz ";
                    break;
                case 4:
                    result="kırk ";
                    break;
                case 5:
                    result="elli ";
                    break;
                case 6:
                    result="altmış ";
                    break;
                case 7:
                    result="yetmiş ";
                    break;
                case 8:
                    result="seksen ";
                    break;
                case 9:
                    result="doksan ";
                    break;
                default:
            }
            result += GetDigit(parseFloat(Right(TensText, 1)), language);
            break;
        default:
    }
    return result;
}

function GetTensStatus(Tens, language) {
    let result="";
    switch (language) {
        case "ARABIC":
            switch (Tens) {
                case 2:
                    result="عشرين ";
                    break;
                case 3:
                    result="ثلاثين ";
                    break;
                case 4:
                    result="أربعين ";
                    break;
                case 5:
                    result="خمسين ";
                    break;
                case 6:
                    result="ستين ";
                    break;
                case 7:
                    result="سبعين ";
                    break;
                case 8:
                    result="ثمانين ";
                    break;
                case 9:
                    result="تسعين ";
                    break;
                default:
            }
            break;
        case "HEBREW":
            switch (Tens) {
                case 2:
                    result="עשרים ";
                    break;
                case 3:
                    result="שלושים ";
                    break;
                case 4:
                    result="ארבעים ";
                    break;
                case 5:
                    result="חמישים ";
                    break;
                case 6:
                    result="שישים ";
                    break;
                case 7:
                    result="שבעים ";
                    break;
                case 8:
                    result="שמונים ";
                    break;
                case 9:
                    result="תשעים ";
                    break;
                default:
            }
            break;
        default:
    }
    return result;
}

function GetDigit(Digit, language) {
    let result="";
    switch (language) {
        case "ARABIC":
            switch (Digit) {
                case 1:
                    result="احد";
                    break;
                case 2:
                    result="اثنان";
                    break;
                case 3:
                    result="ثلاثة";
                    break;
                case 4:
                    result="أربعة";
                    break;
                case 5:
                    result="خمسة";
                    break;
                case 6:
                    result="ستة";
                    break;
                case 7:
                    result="سبعة";
                    break;
                case 8:
                    result="ثمانية";
                    break;
                case 9:
                    result="تسعة";
                    break;
                default:
                    result="";
            }
            break;
        case "HEBREW":
            switch (Digit) {
                case 1:
                    result="אחת";
                    break;
                case 2:
                    result="שניים";
                    break;
                case 3:
                    result="שלושה";
                    break;
                case 4:
                    result="ארבעה";
                    break;
                case 5:
                    result="חמש";
                    break;
                case 6:
                    result="שישה";
                    break;
                case 7:
                    result="שבע";
                    break;
                case 8:
                    result="שמונה";
                    break;
                case 9:
                    result="תשע";
                    break;
                default:
                    result="";
            }
            break;
        case "TURKCE":
            switch (Digit) {
                case 1:
                    result="bir";
                    break;
                case 2:
                    result="iki";
                    break;
                case 3:
                    result="üç";
                    break;
                case 4:
                    result="dört";
                    break;
                case 5:
                    result="beş";
                    break;
                case 6:
                    result="altı";
                    break;
                case 7:
                    result="yedi";
                    break;
                case 8:
                    result="sekiz";
                    break;
                case 9:
                    result="dokuz";
                    break;
                default:
                    result="";
            }
            break;
        default:
    }
    return result;
}

function huddam(num, htype, method) {
	let h='';
	let gh='';
	let eacher='';
	let mode='';
	let counts=1;
	let hpart=[''];
	htype=htype.toUpperCase();
	if ([2, 8, 13, 18, 23, 28, 33].includes(method)) {
		method -= 1;
		mode='eacher';
	}
	if (![7, 12, 17, 22, 27, 32].includes(method)) {
		method=1;
	}
	if (mode!='eacher') {
		mode='regular';
	}
	if (['ULVI', 'ULVİ'].includes(htype)) {
		suffix=abjad('ئيل', method);
	} else if (['SUFLI', 'SUFLİ'].includes(htype)) {
		suffix=abjad('يوش', method);
	} else if (['ŞER', 'SER'].includes(htype)) {
		suffix=abjad('طيش', method);
	} else {
		suffix=abjad(htype, method);
	}
	while (suffix>=num) {
		num+=361;
	}
	preffix=String(num-suffix);
	if (preffix.length>3) {
		for (departs=preffix.length; departs>preffix.length-Math.floor(preffix.length / 3)*3; departs -= 3) {
			hpart[counts]=preffix.substring(departs-3, departs);
			counts+=1;
		}
		rest=preffix.length-((counts-1)*3);
		if (rest>0) {
			hpart[counts]=preffix.substring(0, rest);
		} else {
			counts -= 1;
		}
	} else {
		hpart[1]=preffix;
	}
	for (counter=counts; counter>0; counter -= 1) {
		if (hpart[counter]!=undefined) {
			for (counting=0; counting<hpart[counter].length; counting++) {
				eacher='';
				choosen=parseFloat(hpart[counter].substring(counting, counting+1));
				turn=(4-hpart[counter].length)+counting;
				if (turn==3) {
					if (parseInt(choosen)==1) {
						if (1<String(hpart[counter]).length) {
							h='ا';
						} else if (counts==1) {
							h='ا';
						}
					} else if (parseInt(choosen)==2) {
						if (method==12) {
							h='ل';
						} else {
							h='ب';
						}
					} else if (parseInt(choosen)==3) {
						if (method==12) {
							h='ن';
						} else if ([17, 22, 27, 32].includes(method)) {
							h='ت';
						} else {
							h='ج';
						}
					} else if (parseInt(choosen)==4) {
						if (method==12) {
							h='م';
						} else if ([17, 22, 27, 32].includes(method)) {
							h='ث';
						} else {
							h='د';
						}
					} else if (parseInt(choosen)==5) {
						if (method==12) {
							h='و';
						} else if ([17, 22, 27, 32].includes(method)) {
							h='ج';
						} else {
							h='ه';
						}
					} else if (parseInt(choosen)==6) {
						if (method==12) {
							h='ي';
						} else if ([17, 22, 27, 32].includes(method)) {
							h='ح';
						} else {
							h='و';
						}
					} else if (parseInt(choosen)==7) {
						if (method==12) {
							h='ه';
						} else if ([17, 22, 27, 32].includes(method)) {
							h='خ';
						} else {
							h='ز';
						}
					} else if (parseInt(choosen)==8) {
						if (method==12) {
							h='ر';
						} else if ([17, 22, 27, 32].includes(method)) {
							h='د';
						} else {
							h='ح';
						}
					} else if (parseInt(choosen)==9) {
						if (method==12) {
							h='ب';
						} else if ([17, 22, 27, 32].includes(method)) {
							h='ذ';
						} else {
							h='ط';
						}
					} else if (parseInt(choosen)==0) {
						if ([1, 7, 12, 17, 22, 27, 32].includes(method)) {
							h='';
						}
					} else {
						h='';
					}
				} else if (turn==2) {
					if (parseInt(choosen)==1) {
						if (method==12) {
							h='ت';
						} else if ([17, 22, 32].includes(method)) {
							h='ر';
						} else if (method==27) {
							h='ك';
						} else {
							h='ي';
						}
					} else if (parseInt(choosen)==2) {
						if ([17, 22, 32].includes(method)) {
							h='ز';
						} else if (method==27) {
							h='ل';
						} else {
							h='ك';
						}
					} else if (parseInt(choosen)==3) {
						if (method==12) {
							h='ع';
						} else if ([17, 32].includes(method)) {
							h='س';
						} else if (method==22) {
							h='ط';
						} else if (method==27) {
							h='م';
						} else {
							h='ل';
						}
					} else if (parseInt(choosen)==4) {
						if (method==12) {
							h='ف';
						} else if ([17, 32].includes(method)) {
							h='ش';
						} else if (method==22) {
							h='ظ';
						} else if (method==27) {
							h='و';
						} else {
							h='م';
						}
					} else if (parseInt(choosen)==5) {
						if (method==12) {
							h='ق';
						} else if ([17, 32].includes(method)) {
							h='ص';
						} else if (method==22) {
							h='ك';
						} else {
							h='ن';
						}
					} else if (parseInt(choosen)==6) {
						if ([7, 27].includes(method)) {
							h='ص';
						} else if ([17, 32].includes(method)) {
							h='ض';
						} else if (method==22) {
							h='ل';
						} else {
							h='س';
						}
					} else if (parseInt(choosen)==7) {
						if (method==12) {
							h='د';
						} else if ([17, 32].includes(method)) {
							h='ط';
						} else if (method==22) {
							h='م';
						} else if (method==27) {
							h='ض';
						} else {
							h='ع';
						}
					} else if (parseInt(choosen)==8) {
						if (method==12) {
							h='ذ';
						} else if ([17, 32].includes(method)) {
							h='ظ';
						} else if (method==22) {
							h='ن';
						} else if (method==27) {
							h='ع';
						} else {
							h='ف';
						}
					} else if (parseInt(choosen)==9) {
						if (method==7) {
							h='ض';
						} else if (method==12) {
							h='ح';
						} else if ([17, 32].includes(method)) {
							h='ع';
						} else if (method==27) {
							h='غ';
						} else {
							h='ص';
						}
					} else if (parseInt(choosen)==0) {
						if ([1, 7, 12, 17, 22, 27, 32].includes(method)) {
							h='';
						}
					} else {
						h='';
					}
				} else if (turn==1) {
					if (parseInt(choosen)==1) {
						if (method==12) {
							h='ج';
						} else if ([17, 32].includes(method)) {
							h='غ';
						} else if (method==22) {
							h='ض';
						} else if (method==27) {
							h='ط';
						} else {
							h='ق';
						}
					} else if (parseInt(choosen)==2) {
						if (method==12) {
							h='خ';
						} else if ([17, 32].includes(method)) {
							h='ف';
						} else if (method==22) {
							h='ع';
						} else if (method==27) {
							h='ظ';
						} else {
							h='ر';
						}
					} else if (parseInt(choosen)==3) {
						if (method==7) {
							h='س';
						} else if ([17, 32].includes(method)) {
							h='ق';
						} else if (method==22) {
							h='غ';
						} else if (method==27) {
							h='ف';
						} else {
							h='ش';
						}
					} else if (parseInt(choosen)==4) {
						if (method==12) {
							h='ص';
						} else if ([17, 32].includes(method)) {
							h='ك';
						} else if (method==22) {
							h='ف';
						} else if (method==27) {
							h='ق';
						} else {
							h='ت';
						}
					} else if (parseInt(choosen)==5) {
						if (method==12) {
							h='ض';
						} else if ([17, 32].includes(method)) {
							h='ل';
						} else if (method==22) {
							h='ق';
						} else if (method==27) {
							h='ر';
						} else {
							h='ث';
						}
					} else if (parseInt(choosen)==6) {
						if ([12, 27].includes(method)) {
							h='ز';
						} else if ([17, 32].includes(method)) {
							h='م';
						} else if (method==22) {
							h='س';
						} else {
							h='خ';
						}
					} else if (parseInt(choosen)==7) {
						if (method==12) {
							h='ث';
						} else if ([17, 32].includes(method)) {
							h='ن';
						} else if (method==22) {
							h='ش';
						} else if (method==27) {
							h='ه';
						} else {
							h='ذ';
						}
					} else if (parseInt(choosen)==8) {
						if (method==7) {
							h='ظ';
						} else if (method==12) {
							h='ط';
						} else if ([17, 22].includes(method)) {
							h='ه';
						} else if (method==27) {
							h='س';
						} else if (method==32) {
							h='و';
						} else {
							h='ض';
						}
					} else if (parseInt(choosen)==9) {
						if ([7, 12].includes(method)) {
							h='غ';
						} else if ([17, 22].includes(method)) {
							h='و';
						} else if (method==27) {
							h='ش';
						} else if (method==32) {
							h='ه';
						} else {
							h='ظ';
						}
					} else {
						h='';
					}
				}
				if (h!=null && h!='') {
					gh+=h;
					h='';
				}
				if (parseFloat(hpart[counter])>0) {
					for (counted=1; counted<counter; counted++) {
						if (method==7) {
							eacher+='ش';
						} else if (method==12) {
							eacher+='ظ';
						} else if ([17, 22, 27, 32].includes(method)) {
							eacher+='ي';
						} else {
							eacher+='غ';
						}
					}
				}
				if (mode=='eacher') {
					gh+=eacher;
					eacher='';
				}
			}
			if (mode=='regular') {
				gh+=eacher;
				eacher='';
			}
		}
	}
	if ([1, 7, 12, 17, 22, 27, 32].includes(method)) {
		if (['ULVI', 'ULVİ'].includes(htype)) {
			gh+='ئيل';
		} else if (['SUFLI', 'SUFLİ'].includes(htype)) {
			gh+='يوش';
		} else if (['ŞER', 'SER'].includes(htype)) {
			gh+='طيش';
		} else {
			gh+=htype;
		}
	} else {
		gh=htype;
	}
	return gh;
}

function numerolog(metin, tablo, outas, shadda) {
	let SM=0;
	let T=0;
	let s=0;
	let n=0;
	let sesli=0;
	let sessiz=0;
	let err=0;
	let hrk=0;
	let seslit=0;
	let sessizt=0;
	let nesoohc='';
	let nitem='';
	tablo=lower(tablo);
	metin=upper(metin);
	if (tablo=='date') {
		s=parseFloat(String(getFullYear(metin))+String(getMonth(metin))+String(getDay(metin)));
	} else {
		for (let choosen of metin) {
			if (choosen=='A') {
				if (tablo=='modern') {
					s=1;
					sesli=1;
				} else if (['tr', 'en'].includes(tablo)) {
					s=1;
				} else {
					err=1;
				}
			} else if (choosen=='B') {
				if (tablo=='modern') {
					s=2;
					sessiz=2;
				} else if (['tr', 'en'].includes(tablo)) {
					s=2;
				} else {
					err=1;
				}
			} else if (choosen=='C') {
				if (tablo=='modern') {
					s=3;
					sessiz=3;
				} else if (['tr', 'en'].includes(tablo)) {
					s=3;
				} else {
					err=1;
				}
			} else if (choosen=='Ç') {
				if (tablo=='modern') {
					s=3;
					sessiz=3;
				} else if (tablo=='tr') {
					s=4;
				} else if (tablo=='en') {
					s=3;
				} else {
					err=1;
				}
			} else if (choosen=='D') {
				if (tablo=='modern') {
					s=4;
					sessiz=4;
				} else if (tablo=='tr') {
					s=5;
				} else if (tablo=='en') {
					s=4;
				} else {
					err=1;
				}
			} else if (choosen=='E') {
				if (tablo=='modern') {
					s=5;
					sesli=5;
				} else if (tablo=='tr') {
					s=6;
				} else if (tablo=='en') {
					s=5;
				} else {
					err=1;
				}
			} else if (choosen=='F') {
				if (tablo=='modern') {
					s=6;
					sessiz=6;
				} else if (tablo=='tr') {
					s=7;
				} else if (tablo=='en') {
					s=6;
				} else {
					err=1;
				}
			} else if (choosen=='G') {
				if (tablo=='modern') {
					s=7;
					sessiz=7;
				} else if (tablo=='tr') {
					s=8;
				} else if (tablo=='en') {
					s=7;
				} else {
					err=1;
				}
			} else if (choosen=='Ğ') {
				if (tablo=='modern') {
					s=7;
					sessiz=7;
				} else if (tablo=='tr') {
					s=9;
				} else if (tablo=='en') {
					s=7;
				} else {
					err=1;
				}
			} else if (choosen=='H') {
				if (tablo=='modern') {
					s=8;
					sessiz=8;
				} else if (tablo=='tr') {
					s=10;
				} else if (tablo=='en') {
					s=8;
				} else {
					err=1;
				}
			} else if (choosen=='I') {
				if (tablo=='modern') {
					s=9;
					sesli=9;
				} else if (tablo=='tr') {
					s=11;
				} else if (tablo=='en') {
					s=9;
				} else {
					err=1;
				}
			} else if (choosen=='İ') {
				if (tablo=='modern') {
					s=9;
					sesli=9;
				} else if (tablo=='tr') {
					s=12;
				} else if (tablo=='en') {
					s=9;
				} else {
					err=1;
				}
			} else if (choosen=='J') {
				if (tablo=='modern') {
					s=1;
					sessiz=1;
				} else if (tablo=='tr') {
					s=13;
				} else if (tablo=='en') {
					s=10;
				} else {
					err=1;
				}
			} else if (choosen=='K') {
				if (tablo=='modern') {
					s=2;
					sessiz=2;
				} else if (tablo=='tr') {
					s=14;
				} else if (tablo=='en') {
					s=11;
				} else {
					err=1;
				}
			} else if (choosen=='L') {
				if (tablo=='modern') {
					s=3;
					sessiz=3;
				} else if (tablo=='tr') {
					s=15;
				} else if (tablo=='en') {
					s=12;
				} else {
					err=1;
				}
			} else if (choosen=='M') {
				if (tablo=='modern') {
					s=4;
					sessiz=4;
				} else if (tablo=='tr') {
					s=16;
				} else if (tablo=='en') {
					s=13;
				} else {
					err=1;
				}
			} else if (choosen=='N') {
				if (tablo=='modern') {
					s=5;
					sessiz=5;
				} else if (tablo=='tr') {
					s=17;
				} else if (tablo=='en') {
					s=14;
				} else {
					err=1;
				}
			} else if (choosen=='O') {
				if (tablo=='modern') {
					s=6;
					sesli=6;
				} else if (tablo=='tr') {
					s=18;
				} else if (tablo=='en') {
					s=15;
				} else {
					err=1;
				}
			} else if (choosen=='Ö') {
				if (tablo=='modern') {
					s=6;
					sesli=6;
				} else if (tablo=='tr') {
					s=19;
				} else if (tablo=='en') {
					s=15;
				} else {
					err=1;
				}
			} else if (choosen=='P') {
				if (tablo=='modern') {
					s=7;
					sessiz=7;
				} else if (tablo=='tr') {
					s=20;
				} else if (tablo=='en') {
					s=16;
				} else {
					err=1;
				}
			} else if (choosen=='Q') {
				if (tablo=='modern') {
					s=8;
					sessiz=8;
				} else if (tablo=='tr') {
					s=0;
				} else if (tablo=='en') {
					s=17;
				} else {
					err=1;
				}
			} else if (choosen=='R') {
				if (tablo=='modern') {
					s=9;
					sessiz=9;
				} else if (tablo=='tr') {
					s=21;
				} else if (tablo=='en') {
					s=18;
				} else {
					err=1;
				}
			} else if (choosen=='S') {
				if (tablo=='modern') {
					s=1;
					sessiz=1;
				} else if (tablo=='tr') {
					s=22;
				} else if (tablo=='en') {
					s=19;
				} else {
					err=1;
				}
			} else if (choosen=='Ş') {
				if (tablo=='modern') {
					s=1;
					sessiz=1;
				} else if (tablo=='tr') {
					s=23;
				} else if (tablo=='en') {
					s=19;
				} else {
					err=1;
				}
			} else if (choosen=='T') {
				if (tablo=='modern') {
					s=2;
					sessiz=2;
				} else if (tablo=='tr') {
					s=24;
				} else if (tablo=='en') {
					s=20;
				} else {
					err=1;
				}
			} else if (choosen=='U') {
				if (tablo=='modern') {
					s=3;
					sesli=3;
				} else if (tablo=='tr') {
					s=25;
				} else if (tablo=='en') {
					s=21;
				} else {
					err=1;
				}
			} else if (choosen=='Ü') {
				if (tablo=='modern') {
					s=3;
					sesli=3;
				} else if (tablo=='tr') {
					s=26;
				} else if (tablo=='en') {
					s=21;
				} else {
					err=1;
				}
			} else if (choosen=='V') {
				if (tablo=='modern') {
					s=4;
					sessiz=4;
				} else if (tablo=='tr') {
					s=27;
				} else if (tablo=='en') {
					s=22;
				} else {
					err=1;
				}
			} else if (choosen=='W') {
				if (tablo=='modern') {
					s=5;
					sessiz=5;
				} else if (tablo=='tr') {
					s=0;
				} else if (tablo=='en') {
					s=23;
				} else {
					err=1;
				}
			} else if (choosen=='X') {
				if (tablo=='modern') {
					s=6;
					sessiz=6;
				} else if (tablo=='tr') {
					s=0;
				} else if (tablo=='en') {
					s=24;
				} else {
					err=1;
				}
			} else if (choosen=='Y') {
				if (tablo=='modern') {
					s=7;
					sessiz=7;
				} else if (tablo=='tr') {
					s=28;
				} else if (tablo=='en') {
					s=25;
				} else {
					err=1;
				}
			} else if (choosen=='Z') {
				if (tablo=='modern') {
					s=8;
					sessiz=8;
				} else if (tablo=='tr') {
					s=29;
				} else if (tablo=='en') {
					s=26;
				} else {
					err=1;
				}
			} else if (['ا', 'أ', 'إ', 'آ', 'ء', 'ى', 'ئ'].includes(choosen)) {
				if (['arb(ebced)', 'arb(mebced)', 'arb(hica)', 'arb(mhica)', 'osman'].includes(tablo)) {
					s=1;
				} else {
					err=1;
				}
			} else if (choosen=='ب') {
				if (['arb(ebced)', 'arb(mebced)', 'arb(hica)', 'arb(mhica)', 'osman'].includes(tablo)) {
					s=2;
				} else {
					err=1;
				}
			} else if (choosen=='ﭖ') {
				if (['osman'].includes(tablo)) {
					s=3;
				} else {
					err=1;
				}
			} else if (choosen=='ت') {
				if (['arb(ebced)', 'arb(mebced)'].includes(tablo)) {
					s=22;
				} else if (['arb(hica)', 'arb(mhica)'].includes(tablo)) {
					s=3;
				} else if (['osman'].includes(tablo)) {
					s=4;
				} else {
					err=1;
				}
			} else if (choosen=='ث') {
				if (['arb(ebced)', 'arb(mebced)'].includes(tablo)) {
					s=23;
				} else if (['arb(hica)', 'arb(mhica)'].includes(tablo)) {
					s=4;
				} else if (['osman'].includes(tablo)) {
					s=5;
				} else {
					err=1;
				}
			} else if (choosen=='ج') {
				if (['arb(ebced)', 'arb(mebced)'].includes(tablo)) {
					s=3;
				} else if (['arb(hica)', 'arb(mhica)'].includes(tablo)) {
					s=5;
				} else if (['osman'].includes(tablo)) {
					s=6;
				} else {
					err=1;
				}
			} else if (choosen=='ﭺ') {
				if (['osman'].includes(tablo)) {
					s=7;
				} else {
					err=1;
				}
			} else if (choosen=='ح') {
				if (['arb(ebced)', 'arb(mebced)'].includes(tablo)) {
					s=8;
				} else if (['arb(hica)', 'arb(mhica)'].includes(tablo)) {
					s=6;
				} else if (['osman'].includes(tablo)) {
					s=8;
				} else {
					err=1;
				}
			} else if (choosen=='خ') {
				if (['arb(ebced)', 'arb(mebced)'].includes(tablo)) {
					s=24;
				} else if (['arb(hica)', 'arb(mhica)'].includes(tablo)) {
					s=7;
				} else if (['osman'].includes(tablo)) {
					s=9;
				} else {
					err=1;
				}
			} else if (choosen=='د') {
				if (['arb(ebced)', 'arb(mebced)'].includes(tablo)) {
					s=4;
				} else if (['arb(hica)', 'arb(mhica)'].includes(tablo)) {
					s=8;
				} else if (['osman'].includes(tablo)) {
					s=10;
				} else {
					err=1;
				}
			} else if (choosen=='ذ') {
				if (['arb(ebced)', 'arb(mebced)'].includes(tablo)) {
					s=25;
				} else if (['arb(hica)', 'arb(mhica)'].includes(tablo)) {
					s=9;
				} else if (['osman'].includes(tablo)) {
					s=11;
				} else {
					err=1;
				}
			} else if (choosen=='ر') {
				if (['arb(ebced)', 'arb(mebced)'].includes(tablo)) {
					s=20;
				} else if (['arb(hica)', 'arb(mhica)'].includes(tablo)) {
					s=10;
				} else if (['osman'].includes(tablo)) {
					s=12;
				} else {
					err=1;
				}
			} else if (choosen=='ز') {
				if (['arb(ebced)', 'arb(mebced)'].includes(tablo)) {
					s=7;
				} else if (['arb(hica)', 'arb(mhica)'].includes(tablo)) {
					s=11;
				} else if (['osman'].includes(tablo)) {
					s=13;
				} else {
					err=1;
				}
			} else if (choosen=='ﮊ') {
				if (['osman'].includes(tablo)) {
					s=14;
				} else {
					err=1;
				}
			} else if (choosen=='س') {
				if (['arb(ebced)'].includes(tablo)) {
					s=15;
				} else if (['arb(mebced)'].includes(tablo)) {
					s=21;
				} else if (['arb(hica)'].includes(tablo)) {
					s=12;
				} else if (['arb(mhica)'].includes(tablo)) {
					s=24;
				} else if (['osman'].includes(tablo)) {
					s=15;
				} else {
					err=1;
				}
			} else if (choosen=='ش') {
				if (['arb(ebced)'].includes(tablo)) {
					s=21;
				} else if (['arb(mebced)'].includes(tablo)) {
					s=28;
				} else if (['arb(hica)'].includes(tablo)) {
					s=13;
				} else if (['arb(mhica)'].includes(tablo)) {
					s=25;
				} else if (['osman'].includes(tablo)) {
					s=16;
				} else {
					err=1;
				}
			} else if (choosen=='ص') {
				if (['arb(ebced)'].includes(tablo)) {
					s=18;
				} else if (['arb(mebced)'].includes(tablo)) {
					s=15;
				} else if (['arb(hica)'].includes(tablo)) {
					s=14;
				} else if (['arb(mhica)'].includes(tablo)) {
					s=18;
				} else if (['osman'].includes(tablo)) {
					s=17;
				} else {
					err=1;
				}
			} else if (choosen=='ض') {
				if (['arb(ebced)'].includes(tablo)) {
					s=26;
				} else if (['arb(mebced)'].includes(tablo)) {
					s=18;
				} else if (['arb(hica)'].includes(tablo)) {
					s=15;
				} else if (['arb(mhica)'].includes(tablo)) {
					s=19;
				} else if (['osman'].includes(tablo)) {
					s=18;
				} else {
					err=1;
				}
			} else if (choosen=='ط') {
				if (['arb(ebced)', 'arb(mebced)'].includes(tablo)) {
					s=9;
				} else if (['arb(hica)'].includes(tablo)) {
					s=16;
				} else if (['arb(mhica)'].includes(tablo)) {
					s=12;
				} else if (['osman'].includes(tablo)) {
					s=19;
				} else {
					err=1;
				}
			} else if (choosen=='ظ') {
				if (['arb(ebced)'].includes(tablo)) {
					s=27;
				} else if (['arb(mebced)'].includes(tablo)) {
					s=26;
				} else if (['arb(hica)'].includes(tablo)) {
					s=17;
				} else if (['arb(mhica)'].includes(tablo)) {
					s=13;
				} else if (['osman'].includes(tablo)) {
					s=20;
				} else {
					err=1;
				}
			} else if (choosen=='ع') {
				if (['arb(ebced)', 'arb(mebced)'].includes(tablo)) {
					s=16;
				} else if (['arb(hica)'].includes(tablo)) {
					s=18;
				} else if (['arb(mhica)'].includes(tablo)) {
					s=20;
				} else if (['osman'].includes(tablo)) {
					s=21;
				} else {
					err=1;
				}
			} else if (choosen=='غ') {
				if (['arb(ebced)'].includes(tablo)) {
					s=28;
				} else if (['arb(mebced)'].includes(tablo)) {
					s=17;
				} else if (['arb(hica)'].includes(tablo)) {
					s=19;
				} else if (['arb(mhica)'].includes(tablo)) {
					s=21;
				} else if (['osman'].includes(tablo)) {
					s=22;
				} else {
					err=1;
				}
			} else if (choosen=='ف') {
				if (['arb(ebced)', 'arb(mebced)'].includes(tablo)) {
					s=17;
				} else if (['arb(hica)'].includes(tablo)) {
					s=20;
				} else if (['arb(mhica)'].includes(tablo)) {
					s=22;
				} else if (['osman'].includes(tablo)) {
					s=23;
				} else {
					err=1;
				}
			} else if (choosen=='ق') {
				if (['arb(ebced)', 'arb(mebced)'].includes(tablo)) {
					s=19;
				} else if (['arb(hica)'].includes(tablo)) {
					s=21;
				} else if (['arb(mhica)'].includes(tablo)) {
					s=23;
				} else if (['osman'].includes(tablo)) {
					s=24;
				} else {
					err=1;
				}
			} else if (choosen=='ك') {
				if (['arb(ebced)', 'arb(mebced)'].includes(tablo)) {
					s=11;
				} else if (['arb(hica)'].includes(tablo)) {
					s=22;
				} else if (['arb(mhica)'].includes(tablo)) {
					s=14;
				} else if (['osman'].includes(tablo)) {
					s=25;
				} else {
					err=1;
				}
			} else if (choosen=='ﮒ') {
				if (['osman'].includes(tablo)) {
					s=26;
				} else {
					err=1;
				}
			} else if (choosen=='ﯓ') {
				if (['osman'].includes(tablo)) {
					s=27;
				} else {
					err=1;
				}
			} else if (choosen=='ل') {
				if (['arb(ebced)', 'arb(mebced)'].includes(tablo)) {
					s=12;
				} else if (['arb(hica)'].includes(tablo)) {
					s=23;
				} else if (['arb(mhica)'].includes(tablo)) {
					s=15;
				} else if (['osman'].includes(tablo)) {
					s=28;
				} else {
					err=1;
				}
			} else if (choosen=='م') {
				if (['arb(ebced)', 'arb(mebced)'].includes(tablo)) {
					s=13;
				} else if (['arb(hica)'].includes(tablo)) {
					s=24;
				} else if (['arb(mhica)'].includes(tablo)) {
					s=16;
				} else if (['osman'].includes(tablo)) {
					s=29;
				} else {
					err=1;
				}
			} else if (choosen=='ن') {
				if (['arb(ebced)', 'arb(mebced)'].includes(tablo)) {
					s=14;
				} else if (['arb(hica)'].includes(tablo)) {
					s=25;
				} else if (['arb(mhica)'].includes(tablo)) {
					s=17;
				} else if (['osman'].includes(tablo)) {
					s=30;
				} else {
					err=1;
				}
			} else if (['و', 'ؤ'].includes(choosen)) {
				if (['arb(ebced)', 'arb(mebced)'].includes(tablo)) {
					s=6;
				} else if (['arb(hica)', 'arb(mhica)'].includes(tablo)) {
					s=27;
				} else if (['osman'].includes(tablo)) {
					s=31;
				} else {
					err=1;
				}
			} else if (['ه', 'ة'].includes(choosen)) {
				if (['arb(ebced)', 'arb(mebced)'].includes(tablo)) {
					s=5;
				} else if (['arb(hica)', 'arb(mhica)'].includes(tablo)) {
					s=26;
				} else if (['osman'].includes(tablo)) {
					s=32;
				} else {
					err=1;
				}
			} else if (choosen=='ﻻ') {
				if (['osman'].includes(tablo)) {
					s=33;
				} else {
					err=1;
				}
			} else if (choosen=='ي') {
				if (['arb(ebced)', 'arb(mebced)'].includes(tablo)) {
					s=10;
				} else if (['arb(hica)', 'arb(mhica)'].includes(tablo)) {
					s=28;
				} else if (['osman'].includes(tablo)) {
					s=34;
				} else {
					err=1;
				}
			} else {
				n+=1;
				if (['ّ'].includes(choosen)) {
					if (shadda==1) {
						s=0;
					} else if (shadda==2) {
						let C=1;
						while (s==0) {
							C+=1;
							s=numerolog(metin[T-C], tablo, outas, 1);
						}
					} else {
						err=3;
					}
					hrk=hrk+1;
				} else if (['ٰ'].includes(choosen)) {
					let C=1;
					while (s==0 || M!='ـ') {
						C+=1;
						if (metin[T-C]=='ـ') {
							s=numerolog('ا', tablo, outas, 1);
						}
					}
				} else if ([' '].includes(choosen)) {
					space+=1;
					s=0;
				} else if (['\n', '\r'].includes(choosen)) {
					newline+=1;
				} else if (['َ', 'ِ', 'ً', 'ٍ', 'ُ', 'ْ', 'ٌ', 'ـ'].includes(choosen)) {
					hrk=hrk+1;
					s=0;
				} else {
					nitem=nitem & choosen;
					err=2;
				}
			}
			if (err==1) {
				nesoohc=nesoohc & choosen;
				D=D+1;
			} else {
				SM+=s;
				seslit+=sesli;
				sessizt+=sessiz;
				sesli=sessiz=0;
			}
		}
	}
	if (err==0) {
		if (outas=='sesli') {
			return rakamtopla(seslit, 1);
		} else if (outas=='sessiz') {
			return rakamtopla(sessizt, 1);
		} else if (outas=='tam') {
			return SM;
		} else if (outas=='hepsi') {
			return rakamtopla(SM, 0);
		} else {
			if (parseFloat(outas)>0) {
				return rakamtopla(SM, parseFloat(outas));
			} else {
				return 'Çıktı türü?';
			}
		}
	} else if (err==1) {
		return nesoohc+' ('+D+' karakter \''+tablo+'\' için tanımsız)';
	} else if (err==2) {
		return nitem+' ('+String(N-space+hrk)+' karakter yöntemlerde tanımsız)';
	} else if (err==3) {
		return 'Şedde Ayarı?';
	}
}
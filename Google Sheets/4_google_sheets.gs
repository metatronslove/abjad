// Merhaba Sahur Özel'in Ebced Hesaplayan Makrolarının LibreOffice Basic
// dilinden Google Apps Script diline çevirisidir. Konu hakkında daha
// geniş bilgi için go.abdil.one/6 adresinden ilgili Google Drive kla-
// sörüne erişebilirsiniz bu kodlar MIT, Creative commons ve GPL gibi
// lisanslarla değil; kullanıcılarının vicdanlarıyla korunmaktadır.
// Vicdansızları büyük yargı gününde rab hesaba çeker.
function abjad(metin, tablo, shadda, detail) {
	var sm, s, n, shaddie, counter, err, space, hrk, sn, choosen, nitem, c;
	sm = 0;
	n = 0;
	s = 0;
	shaddie = 0;
	err = 0;
	space = 0;
	hrk = 0;
	nitem = "";
	sn = "";
	if (metin !== undefined) {
		if (tablo !== undefined) {
			for (counter = 0; counter < metin.length; counter += 1) {
				choosen = metin[counter];
				switch (choosen) {
					case "ا":
					case "أ":
					case "إ":
					case "آ":
					case "ء":
					case "ى":
						switch (tablo) {
							case 1:
							case 4:
							case 5:
							case 7:
							case 10:
							case 12:
							case 15:
							case 17:
							case 20:
							case 22:
							case 25:
							case 27:
							case 30:
							case 32:
							case 35:
								s = 1;
								break;
							case 0:
							case 6:
							case 11:
							case 16:
							case 21:
							case 26:
							case 31:
								s = parseFloat(asgar(choosen, tablo + 1));
								break;
							case 2:
							case 8:
							case 13:
							case 18:
							case 23:
							case 28:
							case 33:
								s = parseFloat(abjad("الف", tablo - 1, 1));
								break;
							case 3:
							case 9:
							case 14:
							case 19:
							case 24:
							case 29:
							case 34:
								s = parseFloat(bastet(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"));
								break;
							default:
								err = 1;
						}
						break;
					case "ؤ":
						switch (tablo) {
							case 1:
							case 4:
							case 7:
							case 10:
								s = 7;
								break;
							case 12:
							case 15:
								s = 6;
								break;
							case 17:
							case 20:
							case 22:
							case 25:
								s = 801;
								break;
							case 27:
							case 30:
								s = 41;
								break;
							case 32:
							case 35:
								s = 901;
								break;
							case 0:
							case 6:
							case 11:
							case 16:
							case 21:
							case 26:
							case 31:
								s = parseFloat(asgar(choosen, tablo + 1));
								break;
							case 2:
							case 8:
							case 13:
							case 18:
							case 23:
							case 28:
							case 33:
								s = parseFloat(abjad("الف", tablo - 1, 1)) + parseFloat(abjad("واو", tablo - 1, 1));
								break;
							case 3:
							case 9:
							case 14:
							case 19:
							case 24:
							case 29:
							case 34:
								s = parseFloat(bastet("و", 1, -1 - (tablo - 2), 1, "ARABIC")) + parseFloat(bastet("ا", 1, -1 - (tablo - 2), 1, "ARABIC"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ئ":
						switch (tablo) {
							case 1:
							case 4:
							case 7:
							case 10:
								s = 11;
								break;
							case 12:
							case 15:
								s = 7;
								break;
							case 17:
							case 20:
							case 22:
							case 25:
							case 27:
							case 30:
							case 32:
							case 35:
								s = 1001;
								break;
							case 0:
							case 6:
							case 11:
							case 16:
							case 21:
							case 26:
							case 31:
								s = parseFloat(asgar("ي", tablo + 1)) + parseFloat(asgar("ا", tablo + 1));
								break;
							case 2:
							case 8:
							case 13:
							case 18:
							case 23:
							case 28:
							case 33:
								s = parseFloat(abjad("الف", tablo - 1, 1)) + parseFloat(abjad("يا", tablo - 1, 1));
								break;
							case 3:
							case 9:
							case 14:
							case 19:
							case 24:
							case 29:
							case 34:
								s = parseFloat(bastet("ي", 1, -1 - (tablo - 2), 1, "ARABIC")) + parseFloat(bastet("ا", 1, -1 - (tablo - 2), 1, "ARABIC"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ۀ":
						switch (tablo) {
							case 1:
							case 4:
							case 7:
							case 10:
								s = 15;
								break;
							case 12:
							case 15:
								s = 13;
								break;
							case 17:
							case 20:
							case 22:
							case 25:
								s = 1800;
								break;
							case 27:
							case 30:
								s = 1700;
								break;
							case 32:
							case 35:
								s = 1900;
								break;
							case 0:
							case 6:
							case 11:
							case 16:
							case 21:
							case 26:
							case 31:
								s = parseFloat(asgar("ي", tablo + 1)) + parseFloat(asgar("ه", tablo + 1));
								break;
							case 2:
							case 8:
							case 13:
							case 18:
							case 23:
							case 28:
							case 33:
								s = parseFloat(abjad("يا", tablo - 1, 1)) + parseFloat(abjad("ها", tablo - 1, 1));
								break;
							case 3:
							case 9:
							case 14:
							case 19:
							case 24:
							case 29:
							case 34:
								s = parseFloat(bastet("ي", 1, -1 - (tablo - 2), 1, "ARABIC")) + parseFloat(bastet("ه", 1, -1 - (tablo - 2), 1, "ARABIC"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ب":
					case "ﭖ":
						switch (tablo) {
							case 1:
							case 4:
							case 7:
							case 10:
							case 17:
							case 20:
							case 22:
							case 25:
							case 27:
							case 30:
							case 32:
							case 35:
								s = 2;
								break;
							case 12:
							case 15:
								s = 9;
								break;
							case 0:
							case 6:
							case 11:
							case 16:
							case 21:
							case 26:
							case 31:
								s = parseFloat(asgar(choosen, tablo + 1));
								break;
							case 2:
							case 8:
							case 13:
							case 18:
							case 23:
							case 28:
							case 33:
								s = parseFloat(abjad("با", tablo - 1, 1));
								break;
							case 3:
							case 9:
							case 14:
							case 19:
							case 24:
							case 29:
							case 34:
								s = parseFloat(bastet(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ج":
					case "ﭺ":
						switch (tablo) {
							case 1:
							case 4:
							case 7:
							case 10:
								s = 3;
								break;
							case 12:
							case 15:
								s = 100;
								break;
							case 17:
							case 20:
							case 22:
							case 25:
							case 27:
							case 30:
							case 32:
							case 35:
								s = 5;
								break;
							case 0:
							case 6:
							case 11:
							case 16:
							case 21:
							case 26:
							case 31:
								s = parseFloat(asgar(choosen, tablo + 1));
								break;
							case 2:
							case 8:
							case 13:
							case 18:
							case 23:
							case 28:
							case 33:
								s = parseFloat(abjad("جيم", tablo - 1, 1));
								break;
							case 3:
							case 9:
							case 14:
							case 19:
							case 24:
							case 29:
							case 34:
								s = parseFloat(bastet(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "د":
						switch (tablo) {
							case 1:
							case 4:
							case 7:
							case 10:
								s = 4;
								break;
							case 12:
							case 15:
								s = 70;
								break;
							case 17:
							case 20:
							case 22:
							case 25:
							case 27:
							case 30:
							case 32:
							case 35:
								s = 8;
								break;
							case 0:
							case 6:
							case 11:
							case 16:
							case 21:
							case 26:
							case 31:
								s = parseFloat(asgar(choosen, tablo + 1));
								break;
							case 2:
							case 8:
							case 13:
							case 18:
							case 23:
							case 28:
							case 33:
								s = parseFloat(abjad("دال", tablo - 1, 1));
								break;
							case 3:
							case 9:
							case 14:
							case 19:
							case 24:
							case 29:
							case 34:
								s = parseFloat(bastet(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ه":
					case "ة":
						switch (tablo) {
							case 1:
							case 4:
							case 7:
							case 10:
								s = 5;
								break;
							case 12:
							case 15:
								s = 7;
								break;
							case 17:
							case 20:
							case 22:
							case 25:
								s = 800;
								break;
							case 27:
							case 30:
								s = 700;
								break;
							case 32:
							case 35:
								s = 900;
								break;
							case 0:
							case 6:
							case 11:
							case 16:
							case 21:
							case 26:
							case 31:
								s = parseFloat(asgar(choosen, tablo + 1));
								break;
							case 2:
							case 8:
							case 13:
							case 18:
							case 23:
							case 28:
							case 33:
								s = parseFloat(abjad("ها", tablo - 1, 1));
								break;
							case 3:
							case 9:
							case 14:
							case 19:
							case 24:
							case 29:
							case 34:
								s = parseFloat(bastet(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "و":
						switch (tablo) {
							case 1:
							case 4:
							case 7:
							case 10:
								s = 6;
								break;
							case 12:
							case 15:
								s = 5;
								break;
							case 17:
							case 20:
							case 22:
							case 25:
								s = 900;
								break;
							case 27:
							case 30:
								s = 40;
								break;
							case 32:
							case 35:
								s = 800;
								break;
							case 0:
							case 6:
							case 11:
							case 16:
							case 21:
							case 26:
							case 31:
								s = parseFloat(asgar(choosen, tablo + 1));
								break;
							case 2:
							case 8:
							case 13:
							case 18:
							case 23:
							case 28:
							case 33:
								s = parseFloat(abjad("واو", tablo - 1, 1));
								break;
							case 3:
							case 9:
							case 14:
							case 19:
							case 24:
							case 29:
							case 34:
								s = parseFloat(bastet(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ز":
					case "ﮊ":
						switch (tablo) {
							case 1:
							case 4:
							case 7:
							case 10:
								s = 7;
								break;
							case 12:
							case 15:
							case 27:
							case 30:
								s = 600;
								break;
							case 17:
							case 20:
							case 22:
							case 25:
							case 32:
							case 35:
								s = 20;
								break;
							case 0:
							case 6:
							case 11:
							case 16:
							case 21:
							case 26:
							case 31:
								s = parseFloat(asgar(choosen, tablo + 1));
								break;
							case 2:
							case 8:
							case 13:
							case 18:
							case 23:
							case 28:
							case 33:
								s = parseFloat(abjad("زا", tablo - 1, 1));
								break;
							case 3:
							case 9:
							case 14:
							case 19:
							case 24:
							case 29:
							case 34:
								s = parseFloat(bastet(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ح":
						switch (tablo) {
							case 1:
							case 4:
							case 7:
							case 10:
								s = 8;
								break;
							case 12:
							case 15:
								s = 90;
								break;
							case 17:
							case 20:
							case 22:
							case 25:
							case 27:
							case 30:
							case 32:
							case 35:
								s = 6;
								break;
							case 0:
							case 6:
							case 11:
							case 16:
							case 21:
							case 26:
							case 31:
								s = parseFloat(asgar(choosen, tablo + 1));
								break;
							case 2:
							case 8:
							case 13:
							case 18:
							case 23:
							case 28:
							case 33:
								s = parseFloat(abjad("حا", tablo - 1, 1));
								break;
							case 3:
							case 9:
							case 14:
							case 19:
							case 24:
							case 29:
							case 34:
								s = parseFloat(bastet(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ط":
						switch (tablo) {
							case 1:
							case 4:
							case 7:
							case 10:
								s = 9;
								break;
							case 12:
							case 15:
								s = 800;
								break;
							case 17:
							case 20:
							case 32:
							case 35:
								s = 70;
								break;
							case 22:
							case 25:
								s = 30;
								break;
							case 27:
							case 30:
								s = 100;
								break;
							case 0:
							case 6:
							case 11:
							case 16:
							case 21:
							case 26:
							case 31:
								s = parseFloat(asgar(choosen, tablo + 1));
								break;
							case 2:
							case 8:
							case 13:
							case 18:
							case 23:
							case 28:
							case 33:
								s = parseFloat(abjad("طا", tablo - 1, 1));
								break;
							case 3:
							case 9:
							case 14:
							case 19:
							case 24:
							case 29:
							case 34:
								s = parseFloat(bastet(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ی":
					case "ي":
						switch (tablo) {
							case 1:
							case 4:
							case 7:
							case 10:
								s = 10;
								break;
							case 12:
							case 15:
								s = 6;
								break;
							case 17:
							case 20:
							case 22:
							case 25:
							case 27:
							case 30:
							case 32:
							case 35:
								s = 1000;
								break;
							case 0:
							case 6:
							case 11:
							case 16:
							case 21:
							case 26:
							case 31:
								s = parseFloat(asgar(choosen, tablo + 1));
								break;
							case 2:
							case 8:
							case 13:
							case 18:
							case 23:
							case 28:
							case 33:
								s = parseFloat(abjad("يا", tablo - 1, 1));
								break;
							case 3:
							case 9:
							case 14:
							case 19:
							case 24:
							case 29:
							case 34:
								s = parseFloat(bastet(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ك":
					case "ﮒ":
					case "ک":
						switch (tablo) {
							case 1:
							case 4:
							case 7:
							case 10:
							case 12:
							case 15:
								s = 20;
								break;
							case 17:
							case 20:
							case 32:
							case 35:
								s = 400;
								break;
							case 22:
							case 25:
								s = 50;
								break;
							case 27:
							case 30:
								s = 10;
								break;
							case 0:
							case 6:
							case 11:
							case 16:
							case 21:
							case 26:
							case 31:
								s = parseFloat(asgar(choosen, tablo + 1));
								break;
							case 2:
							case 8:
							case 13:
							case 18:
							case 23:
							case 28:
							case 33:
								s = parseFloat(abjad("كاف", tablo - 1, 1));
								break;
							case 3:
							case 9:
							case 14:
							case 19:
							case 24:
							case 29:
							case 34:
								s = parseFloat(bastet(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ل":
						switch (tablo) {
							case 1:
							case 4:
							case 7:
							case 10:
								s = 30;
								break;
							case 12:
							case 15:
								s = 2;
								break;
							case 17:
							case 20:
							case 32:
							case 35:
								s = 500;
								break;
							case 22:
							case 25:
								s = 60;
								break;
							case 27:
							case 30:
								s = 20;
								break;
							case 0:
							case 6:
							case 11:
							case 16:
							case 21:
							case 26:
							case 31:
								s = parseFloat(asgar(choosen, tablo + 1));
								break;
							case 2:
							case 8:
							case 13:
							case 18:
							case 23:
							case 28:
							case 33:
								s = parseFloat(abjad("لام", tablo - 1, 1));
								break;
							case 3:
							case 9:
							case 14:
							case 19:
							case 24:
							case 29:
							case 34:
								s = parseFloat(bastet(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ﻻ":
						switch (tablo) {
							case 1:
							case 4:
							case 7:
							case 10:
								s = 31;
								break;
							case 12:
							case 15:
								s = 3;
								break;
							case 17:
							case 20:
							case 32:
							case 35:
								s = 501;
								break;
							case 22:
							case 25:
								s = 61;
								break;
							case 27:
							case 30:
								s = 21;
								break;
							case 0:
							case 6:
							case 11:
							case 16:
							case 21:
							case 26:
							case 31:
								s = parseFloat(asgar("ا", tablo + 1)) + parseFloat(asgar("ل", tablo + 1));
								break;
							case 2:
							case 8:
							case 13:
							case 18:
							case 23:
							case 28:
							case 33:
								s = parseFloat(abjad("لام الف", tablo - 1, 1));
								break;
							case 3:
							case 9:
							case 14:
							case 19:
							case 24:
							case 29:
							case 34:
								s = parseFloat(bastet(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "م":
						switch (tablo) {
							case 1:
							case 4:
							case 7:
							case 10:
								s = 40;
								break;
							case 12:
							case 15:
								s = 4;
								break;
							case 17:
							case 20:
							case 32:
							case 35:
								s = 600;
								break;
							case 22:
							case 25:
								s = 70;
								break;
							case 27:
							case 30:
								s = 30;
								break;
							case 0:
							case 6:
							case 11:
							case 16:
							case 21:
							case 26:
							case 31:
								s = parseFloat(asgar(choosen, tablo + 1));
								break;
							case 2:
							case 8:
							case 13:
							case 18:
							case 23:
							case 28:
							case 33:
								s = parseFloat(abjad("ميم", tablo - 1, 1));
								break;
							case 3:
							case 9:
							case 14:
							case 19:
							case 24:
							case 29:
							case 34:
								s = parseFloat(bastet(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ن":
					case "ﯓ":
						switch (tablo) {
							case 1:
							case 4:
							case 7:
							case 10:
							case 27:
							case 30:
								s = 50;
								break;
							case 12:
							case 15:
								s = 3;
								break;
							case 17:
							case 20:
							case 32:
							case 35:
								s = 700;
								break;
							case 22:
							case 25:
								s = 80;
								break;
							case 0:
							case 6:
							case 11:
							case 16:
							case 21:
							case 26:
							case 31:
								s = parseFloat(asgar(choosen, tablo + 1));
								break;
							case 2:
							case 8:
							case 13:
							case 18:
							case 23:
							case 28:
							case 33:
								s = parseFloat(abjad("نون", tablo - 1, 1));
								break;
							case 3:
							case 9:
							case 14:
							case 19:
							case 24:
							case 29:
							case 34:
								s = parseFloat(bastet(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "س":
						switch (tablo) {
							case 1:
							case 4:
							case 12:
							case 15:
								s = 60;
								break;
							case 7:
							case 10:
								s = 300;
								break;
							case 17:
							case 20:
							case 32:
							case 35:
								s = 30;
								break;
							case 22:
							case 25:
								s = 600;
								break;
							case 27:
							case 30:
								s = 800;
								break;
							case 0:
							case 6:
							case 11:
							case 16:
							case 21:
							case 26:
							case 31:
								s = parseFloat(asgar(choosen, tablo + 1));
								break;
							case 2:
							case 8:
							case 13:
							case 18:
							case 23:
							case 28:
							case 33:
								s = parseFloat(abjad("سين", tablo - 1, 1));
								break;
							case 3:
							case 9:
							case 14:
							case 19:
							case 24:
							case 29:
							case 34:
								s = parseFloat(bastet(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ع":
						switch (tablo) {
							case 1:
							case 4:
							case 7:
							case 10:
								s = 70;
								break;
							case 12:
							case 15:
								s = 30;
								break;
							case 17:
							case 20:
							case 32:
							case 35:
								s = 90;
								break;
							case 22:
							case 25:
								s = 200;
								break;
							case 27:
							case 30:
								s = 80;
								break;
							case 0:
							case 6:
							case 11:
							case 16:
							case 21:
							case 26:
							case 31:
								s = parseFloat(asgar(choosen, tablo + 1));
								break;
							case 2:
							case 8:
							case 13:
							case 18:
							case 23:
							case 28:
							case 33:
								s = parseFloat(abjad("عين", tablo - 1, 1));
								break;
							case 3:
							case 9:
							case 14:
							case 19:
							case 24:
							case 29:
							case 34:
								s = parseFloat(bastet(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ف":
						switch (tablo) {
							case 1:
							case 4:
							case 7:
							case 10:
								s = 80;
								break;
							case 12:
							case 15:
								s = 40;
								break;
							case 17:
							case 20:
							case 32:
							case 35:
								s = 200;
								break;
							case 22:
							case 25:
								s = 400;
								break;
							case 27:
							case 30:
								s = 300;
								break;
							case 0:
							case 6:
							case 11:
							case 16:
							case 21:
							case 26:
							case 31:
								s = parseFloat(asgar(choosen, tablo + 1));
								break;
							case 2:
							case 8:
							case 13:
							case 18:
							case 23:
							case 28:
							case 33:
								s = parseFloat(abjad("فا", tablo - 1, 1));
								break;
							case 3:
							case 9:
							case 14:
							case 19:
							case 24:
							case 29:
							case 34:
								s = parseFloat(bastet(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ص":
						switch (tablo) {
							case 1:
							case 4:
							case 22:
							case 25:
								s = 90;
								break;
							case 7:
							case 10:
							case 27:
							case 30:
								s = 60;
								break;
							case 12:
							case 15:
								s = 400;
								break;
							case 17:
							case 20:
							case 32:
							case 35:
								s = 50;
								break;
							case 0:
							case 6:
							case 11:
							case 16:
							case 21:
							case 26:
							case 31:
								s = parseFloat(asgar(choosen, tablo + 1));
								break;
							case 2:
							case 8:
							case 13:
							case 18:
							case 23:
							case 28:
							case 33:
								s = parseFloat(abjad("صاد", tablo - 1, 1));
								break;
							case 3:
							case 9:
							case 14:
							case 19:
							case 24:
							case 29:
							case 34:
								s = parseFloat(bastet(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ق":
						switch (tablo) {
							case 1:
							case 4:
							case 7:
							case 10:
								s = 100;
								break;
							case 12:
							case 15:
								s = 50;
								break;
							case 17:
							case 20:
							case 32:
							case 35:
								s = 300;
								break;
							case 22:
							case 25:
								s = 500;
								break;
							case 27:
							case 30:
								s = 400;
								break;
							case 0:
							case 6:
							case 11:
							case 16:
							case 21:
							case 26:
							case 31:
								s = parseFloat(asgar(choosen, tablo + 1));
								break;
							case 2:
							case 8:
							case 13:
							case 18:
							case 23:
							case 28:
							case 33:
								s = parseFloat(abjad("قاف", tablo - 1, 1));
								break;
							case 3:
							case 9:
							case 14:
							case 19:
							case 24:
							case 29:
							case 34:
								s = parseFloat(bastet(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ر":
						switch (tablo) {
							case 1:
							case 4:
							case 7:
							case 10:
								s = 200;
								break;
							case 12:
							case 15:
								s = 8;
								break;
							case 17:
							case 20:
							case 22:
							case 25:
							case 32:
							case 35:
								s = 10;
								break;
							case 27:
							case 30:
								s = 500;
								break;
							case 0:
							case 6:
							case 11:
							case 16:
							case 21:
							case 26:
							case 31:
								s = parseFloat(asgar(choosen, tablo + 1));
								break;
							case 2:
							case 8:
							case 13:
							case 18:
							case 23:
							case 28:
							case 33:
								s = parseFloat(abjad("را", tablo - 1, 1));
								break;
							case 3:
							case 9:
							case 14:
							case 19:
							case 24:
							case 29:
							case 34:
								s = parseFloat(bastet(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ش":
						switch (tablo) {
							case 1:
							case 4:
							case 12:
							case 15:
								s = 300;
								break;
							case 7:
							case 10:
								s = 1000;
								break;
							case 17:
							case 20:
							case 32:
							case 35:
								s = 40;
								break;
							case 22:
							case 25:
								s = 700;
								break;
							case 27:
							case 30:
								s = 900;
								break;
							case 0:
							case 6:
							case 11:
							case 16:
							case 21:
							case 26:
							case 31:
								s = parseFloat(asgar(choosen, tablo + 1));
								break;
							case 2:
							case 8:
							case 13:
							case 18:
							case 23:
							case 28:
							case 33:
								s = parseFloat(abjad("شين", tablo - 1, 1));
								break;
							case 3:
							case 9:
							case 14:
							case 19:
							case 24:
							case 29:
							case 34:
								s = parseFloat(bastet(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ت":
						switch (tablo) {
							case 1:
							case 4:
							case 7:
							case 10:
								s = 400;
								break;
							case 12:
							case 15:
								s = 10;
								break;
							case 17:
							case 20:
							case 22:
							case 25:
							case 27:
							case 30:
							case 32:
							case 35:
								s = 3;
								break;
							case 0:
							case 6:
							case 11:
							case 16:
							case 21:
							case 26:
							case 31:
								s = parseFloat(asgar(choosen, tablo + 1));
								break;
							case 2:
							case 8:
							case 13:
							case 18:
							case 23:
							case 28:
							case 33:
								s = parseFloat(abjad("تا", tablo - 1, 1));
								break;
							case 3:
							case 9:
							case 14:
							case 19:
							case 24:
							case 29:
							case 34:
								s = parseFloat(bastet(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ث":
						switch (tablo) {
							case 1:
							case 4:
							case 7:
							case 10:
								s = 500;
								break;
							case 12:
							case 15:
								s = 700;
								break;
							case 17:
							case 20:
							case 22:
							case 25:
							case 27:
							case 30:
							case 32:
							case 35:
								s = 4;
								break;
							case 0:
							case 6:
							case 11:
							case 16:
							case 21:
							case 26:
							case 31:
								s = parseFloat(asgar(choosen, tablo + 1));
								break;
							case 2:
							case 8:
							case 13:
							case 18:
							case 23:
							case 28:
							case 33:
								s = parseFloat(abjad("ثا", tablo - 1, 1));
								break;
							case 3:
							case 9:
							case 14:
							case 19:
							case 24:
							case 29:
							case 34:
								s = parseFloat(bastet(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "خ":
						switch (tablo) {
							case 1:
							case 4:
							case 7:
							case 10:
								s = 600;
								break;
							case 12:
							case 15:
								s = 200;
								break;
							case 17:
							case 20:
							case 22:
							case 25:
							case 27:
							case 30:
							case 32:
							case 35:
								s = 7;
								break;
							case 0:
							case 6:
							case 11:
							case 16:
							case 21:
							case 26:
							case 31:
								s = parseFloat(asgar(choosen, tablo + 1));
								break;
							case 2:
							case 8:
							case 13:
							case 18:
							case 23:
							case 28:
							case 33:
								s = parseFloat(abjad("خا", tablo - 1, 1));
								break;
							case 3:
							case 9:
							case 14:
							case 19:
							case 24:
							case 29:
							case 34:
								s = parseFloat(bastet(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ذ":
						switch (tablo) {
							case 1:
							case 4:
							case 7:
							case 10:
								s = 700;
								break;
							case 12:
							case 15:
								s = 80;
								break;
							case 17:
							case 20:
							case 22:
							case 25:
							case 27:
							case 30:
							case 32:
							case 35:
								s = 9;
								break;
							case 0:
							case 6:
							case 11:
							case 16:
							case 21:
							case 26:
							case 31:
								s = parseFloat(asgar(choosen, tablo + 1));
								break;
							case 2:
							case 8:
							case 13:
							case 18:
							case 23:
							case 28:
							case 33:
								s = parseFloat(abjad("ذال", tablo - 1, 1));
								break;
							case 3:
							case 9:
							case 14:
							case 19:
							case 24:
							case 29:
							case 34:
								s = parseFloat(bastet(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ض":
						switch (tablo) {
							case 1:
							case 4:
								s = 800;
								break;
							case 7:
							case 10:
								s = 90;
								break;
							case 12:
							case 15:
								s = 500;
								break;
							case 17:
							case 20:
							case 32:
							case 35:
								s = 60;
								break;
							case 22:
							case 25:
								s = 100;
								break;
							case 27:
							case 30:
								s = 70;
								break;
							case 0:
							case 6:
							case 11:
							case 16:
							case 21:
							case 26:
							case 31:
								s = parseFloat(asgar(choosen, tablo + 1));
								break;
							case 2:
							case 8:
							case 13:
							case 18:
							case 23:
							case 28:
							case 33:
								s = parseFloat(abjad("ضاد", tablo - 1, 1));
								break;
							case 3:
							case 9:
							case 14:
							case 19:
							case 24:
							case 29:
							case 34:
								s = parseFloat(bastet(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ظ":
						switch (tablo) {
							case 1:
							case 4:
								s = 900;
								break;
							case 7:
							case 10:
								s = 800;
								break;
							case 12:
							case 15:
								s = 1000;
								break;
							case 17:
							case 20:
							case 32:
							case 35:
								s = 80;
								break;
							case 22:
							case 25:
								s = 40;
								break;
							case 27:
							case 30:
								s = 200;
								break;
							case 0:
							case 6:
							case 11:
							case 16:
							case 21:
							case 26:
							case 31:
								s = parseFloat(asgar(choosen, tablo + 1));
								break;
							case 2:
							case 8:
							case 13:
							case 18:
							case 23:
							case 28:
							case 33:
								s = parseFloat(abjad("ظا", tablo - 1, 1));
								break;
							case 3:
							case 9:
							case 14:
							case 19:
							case 24:
							case 29:
							case 34:
								s = parseFloat(bastet(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "غ":
						switch (tablo) {
							case 1:
							case 4:
								s = 1000;
								break;
							case 7:
							case 10:
							case 12:
							case 15:
								s = 900;
								break;
							case 17:
							case 20:
							case 32:
							case 35:
								s = 100;
								break;
							case 22:
							case 25:
								s = 300;
								break;
							case 27:
							case 30:
								s = 90;
								break;
							case 0:
							case 6:
							case 11:
							case 16:
							case 21:
							case 26:
							case 31:
								s = parseFloat(asgar(choosen, tablo + 1));
								break;
							case 2:
							case 8:
							case 13:
							case 18:
							case 23:
							case 28:
							case 33:
								s = parseFloat(abjad("غين", tablo - 1, 1));
								break;
							case 3:
							case 9:
							case 14:
							case 19:
							case 24:
							case 29:
							case 34:
								s = parseFloat(bastet(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "א":
						switch (tablo) {
							case 1:
							case 4:
								s = 1;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("אלף", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "HEBREW"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ב":
						switch (tablo) {
							case 1:
							case 4:
								s = 2;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("בית", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "HEBREW"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ג":
						switch (tablo) {
							case 1:
							case 4:
								s = 3;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("גימל", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "HEBREW"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ד":
						switch (tablo) {
							case 1:
							case 4:
								s = 4;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("דלת", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "HEBREW"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ה":
						switch (tablo) {
							case 1:
							case 4:
								s = 5;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("הא", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "HEBREW"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ו":
						switch (tablo) {
							case 1:
							case 4:
								s = 6;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("וו", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "HEBREW"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ז":
						switch (tablo) {
							case 1:
							case 4:
								s = 7;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("זין", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "HEBREW"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ח":
						switch (tablo) {
							case 1:
							case 4:
								s = 8;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("חית", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "HEBREW"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ט":
						switch (tablo) {
							case 1:
							case 4:
								s = 9;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("טיח", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "HEBREW"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "י":
						switch (tablo) {
							case 1:
							case 4:
								s = 10;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("יוד", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "HEBREW"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "כ":
						switch (tablo) {
							case 1:
							case 4:
								s = 20;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("כף", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "HEBREW"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ל":
						switch (tablo) {
							case 1:
							case 4:
								s = 30;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("למד", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "HEBREW"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "מ":
						switch (tablo) {
							case 1:
							case 4:
								s = 40;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("מם", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "HEBREW"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "נ":
						switch (tablo) {
							case 1:
							case 4:
								s = 50;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("נון", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "HEBREW"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ס":
						switch (tablo) {
							case 1:
							case 4:
								s = 60;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("סמך", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "HEBREW"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ע":
						switch (tablo) {
							case 1:
							case 4:
								s = 70;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("עין", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "HEBREW"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "פ":
						switch (tablo) {
							case 1:
							case 4:
								s = 80;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("פא", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "HEBREW"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "צ":
						switch (tablo) {
							case 1:
							case 4:
								s = 90;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("צדי", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "HEBREW"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ק":
						switch (tablo) {
							case 1:
							case 4:
								s = 100;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("קוף", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "HEBREW"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ר":
						switch (tablo) {
							case 1:
							case 4:
								s = 200;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("ריש", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "HEBREW"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ש":
						switch (tablo) {
							case 1:
							case 4:
								s = 300;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("שין", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "HEBREW"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ת":
						switch (tablo) {
							case 1:
							case 4:
								s = 400;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("תו", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "HEBREW"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ך":
						switch (tablo) {
							case 1:
							case 4:
								s = 500;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("ךף", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "HEBREW"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ם":
						switch (tablo) {
							case 1:
							case 4:
								s = 600;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("םם", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "HEBREW"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ן":
						switch (tablo) {
							case 1:
							case 4:
								s = 700;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("וןן", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "HEBREW"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ף":
						switch (tablo) {
							case 1:
							case 4:
								s = 800;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("ףא", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "HEBREW"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "ץ":
						switch (tablo) {
							case 1:
							case 4:
								s = 900;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("ץדי", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "HEBREW"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "A":
					case "a":
						switch (tablo) {
							case 1:
							case 4:
								s = 1;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("aa", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "TURKCE"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "B":
					case "b":
						switch (tablo) {
							case 1:
							case 4:
								s = 2;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("be", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "TURKCE"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "C":
					case "c":
					case "Ç":
					case "ç":
						switch (tablo) {
							case 1:
							case 4:
								s = 3;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("ce", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "TURKCE"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "D":
					case "d":
						switch (tablo) {
							case 1:
							case 4:
								s = 4;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("de", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "TURKCE"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "E":
					case "e":
						switch (tablo) {
							case 1:
							case 4:
								s = 5;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("ee", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "TURKCE"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "F":
					case "f":
						switch (tablo) {
							case 1:
							case 4:
								s = 6;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("fe", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "TURKCE"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "G":
					case "g":
						switch (tablo) {
							case 1:
							case 4:
								s = 7;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("ge", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "TURKCE"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "Ğ":
					case "ğ":
						switch (tablo) {
							case 1:
							case 4:
								s = 8;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("yumusakge", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "TURKCE"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "H":
					case "h":
						switch (tablo) {
							case 1:
							case 4:
								s = 9;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("he", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "TURKCE"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "I":
					case "ı":
						switch (tablo) {
							case 1:
							case 4:
								s = 10;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("ıı", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "TURKCE"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "İ":
					case "i":
						switch (tablo) {
							case 1:
							case 4:
								s = 20;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("ii", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "TURKCE"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "J":
					case "j":
						switch (tablo) {
							case 1:
							case 4:
								s = 30;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("je", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "TURKCE"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "K":
					case "k":
						switch (tablo) {
							case 1:
							case 4:
								s = 40;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("ke", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "TURKCE"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "L":
					case "l":
						switch (tablo) {
							case 1:
							case 4:
								s = 50;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("le", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "TURKCE"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "M":
					case "m":
						switch (tablo) {
							case 1:
							case 4:
								s = 60;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("me", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "TURKCE"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "N":
					case "n":
						switch (tablo) {
							case 1:
							case 4:
								s = 70;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("ne", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "TURKCE"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "O":
					case "o":
						switch (tablo) {
							case 1:
							case 4:
								s = 80;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("oo", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "TURKCE"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "Ö":
					case "ö":
						switch (tablo) {
							case 1:
							case 4:
								s = 90;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("öö", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "TURKCE"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "P":
					case "p":
						switch (tablo) {
							case 1:
							case 4:
								s = 100;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("pe", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "TURKCE"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "R":
					case "r":
						switch (tablo) {
							case 1:
							case 4:
								s = 200;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("re", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "TURKCE"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "S":
					case "s":
						switch (tablo) {
							case 1:
							case 4:
								s = 300;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("se", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "TURKCE"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "Ş":
					case "ş":
						switch (tablo) {
							case 1:
							case 4:
								s = 400;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("şe", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "TURKCE"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "T":
					case "t":
						switch (tablo) {
							case 1:
							case 4:
								s = 500;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("te", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "TURKCE"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "U":
					case "u":
						switch (tablo) {
							case 1:
							case 4:
								s = 600;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("uu", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "TURKCE"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "Ü":
					case "ü":
						switch (tablo) {
							case 1:
							case 4:
								s = 700;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("üü", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "TURKCE"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "V":
					case "v":
						switch (tablo) {
							case 1:
							case 4:
								s = 800;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("ve", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "TURKCE"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "Y":
					case "y":
						switch (tablo) {
							case 1:
							case 4:
								s = 900;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("ye", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "TURKCE"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					case "Z":
					case "z":
						switch (tablo) {
							case 1:
							case 4:
								s = 1000;
								break;
							case 0:
								s = parseFloat(asgar(choosen, 1));
								break;
							case 2:
								s = parseFloat(abjad("ze", 1, 1));
								break;
							case 3:
								s = parseFloat(bastet(choosen, 1, -2, 1, "TURKCE"));
								break;
							case 5:
								s = 1;
								break;
							default:
								err = 1;
						}
						break;
					default:
						s = 0;
						n = n + 1;
						switch (choosen) {
							case "ّ":
								if (shadda == 1) {
									s = 0;
								} else if (shadda > 2){
									err = 3;
								} else if (shadda == 2) {
									c = 0;
									do {
										choosen = metin[counter - c];
										s = parseFloat(abjad(choosen, tablo, 1));
										c += 1;
										shaddie = shaddie + 1;
									} while (saf(choosen, "", 1) == "");
								} else if (shadda == undefined && detail == undefined || shadda == undefined && detail !== undefined) {
									err = 3;
								}
								hrk = hrk + 1;
								break;
							case "ٰ":
								c = 0;
								do {
									choosen = metin[counter - c];
									if (choosen == "ـ") {
										s = parseFloat(abjad("ا", tablo, 1));
									}
									c += 1;
								} while (saf(choosen, "", 1) == "" || choosen !== "ـ");
								break;
							case " ":
								space = space + 1;
								break;
							case String.fromCharCode(10):
							case String.fromCharCode(13):
								break;
							case "َ":
							case "ِ":
							case "ً":
							case "ٍ":
							case "ُ":
							case "ْ":
							case "ٌ":
							case "ـ":
								hrk += 1;
								break;
							default:
								nitem += choosen;
								err = 2;
						}
				}
				if (detail == 1) {
					switch (saf(choosen, "", 1)) {
						case " ":
							break;
						case "ا":
							sn += "ا=" + s + " / ";
							break;
						case choosen:
							sn += "" + choosen + "=" + s + " / ";
							break;
					}
				} else {
					sm += s;
				}
			}
			switch (tablo) {
				case 4:
				case 10:
				case 15:
				case 20:
				case 25:
				case 30:
				case 35:
					if (detail == 1 && shadda == undefined || detail == 1 && shadda !== undefined) {
						sn += " \+" + ((metin.length - n) + shaddie).toString() + " ";
					} else {
						sm += ((metin.length - n) + shaddie);
					}
					break;
				default:
			}
		}
	}
	switch (err) {
		case 0:
			if (detail == 1 && shadda == undefined || detail == 1 && shadda !== undefined) {
				return "\ " + sn + "\ ";
			} else {
				return sm;
			}
			break;
		case 1:
			return "\ " + "Tablo Kodu?" + "\ ";
		case 2:
			return "\ " + (n - (space + hrk)).toString() + " Tanımsız:" + nitem + "\|" + space.toString() + " boşluk\|" + hrk.toString() + " hareke" + "\ ";
		case 3:
			return "\ " + "Şedde Ayarı?" + "\ ";
	}
}

function wordbyword(klmmetin, tablow, shaddaw, detailw) {
	if (klmmetin !== undefined) {
		klmmetin += " ";
		var calculation = "";
		var content = "";
		var word = "";
		var klmchoosen;
		for (counter = 0; counter < klmmetin.length; counter++) {
			klmchoosen = klmmetin[counter];
			word += klmchoosen;
			switch (klmchoosen) {
				case " ":
				case "\n":
					word = word.substring(0, word.length - 1);
					calculation = abjad(word, tablow, shaddaw, detailw).toString();
					if (calculation !== "0") { content += word + altayaz(calculation) + klmchoosen; }
					word = "";
					calculation = "";
					break;
				default:
			}
		}
	}
	return content;
}

function bastet(metin, mt, tablo, shadda, language, detail) {
	var err, baster, invertablo, hm, ns, bc, turn, choosen;
	err = 0;
	switch (metin) {
		case parseFloat(metin):
			baster = metin.toString();
			break;
		default:
			switch (tablo) {
				case 0:
				case 1:
				case 2:
				case 3:
				case 4:
				case 5:
				case 6:
				case 7:
				case 8:
				case 9:
				case 10:
				case 11:
				case 12:
				case 13:
				case 14:
				case 15:
				case 16:
				case 17:
				case 18:
				case 19:
				case 20:
				case 21:
				case 22:
				case 23:
				case 24:
				case 25:
				case 26:
				case 27:
				case 28:
				case 29:
				case 30:
				case 31:
				case 32:
				case 33:
				case 34:
				case 35:
					baster = parseFloat(abjad(metin, tablo, shadda));
					break;
				case -1:
				case -2:
				case -3:
				case -4:
				case -5:
				case -6:
				case -7:
				case -8:
				case -9:
				case -10:
				case -11:
				case -12:
				case -13:
				case -14:
				case -15:
				case -16:
				case -17:
				case -18:
				case -19:
				case -20:
				case -21:
				case -22:
				case -23:
				case -24:
				case -25:
				case -26:
				case -27:
				case -28:
				case -29:
				case -30:
				case -31:
				case -32:
				case -33:
				case -34:
				case -35:
				case -36:
					invertablo = (-1 * tablo) - 1;
					baster = parseFloat(abjad(metin, invertablo, shadda));
					break;
			}
	}
	for (hm = 0; hm < mt; hm++) {
		ns = "";
		ns = nutket(baster, language.toUpperCase());
		baster = 0;
		switch (tablo) {
			case 0:
			case 0:
			case 1:
			case 2:
			case 3:
			case 4:
			case 5:
			case 6:
			case 7:
			case 8:
			case 9:
			case 10:
			case 11:
			case 12:
			case 13:
			case 14:
			case 15:
			case 16:
			case 17:
			case 18:
			case 19:
			case 20:
			case 21:
			case 22:
			case 23:
			case 24:
			case 25:
			case 26:
			case 27:
			case 28:
			case 29:
			case 30:
			case 31:
			case 32:
			case 33:
			case 34:
			case 35:
				baster = parseFloat(abjad(ns, tablo, 1)) + parseFloat(abjad(ns, 5, 1));
				break;
			case -1:
			case -2:
			case -3:
			case -4:
			case -5:
			case -6:
			case -7:
			case -8:
			case -9:
			case -10:
			case -11:
			case -12:
			case -13:
			case -14:
			case -15:
			case -16:
			case -17:
			case -18:
			case -19:
			case -20:
			case -21:
			case -22:
			case -23:
			case -24:
			case -25:
			case -26:
			case -27:
			case -28:
			case -29:
			case -30:
			case -31:
			case -32:
			case -33:
			case -34:
			case -35:
			case -36:
				invertablo = (-1 * tablo) - 1;
				baster = parseFloat(abjad(ns, invertablo, 1));
				break;
			default:
				return "Tablo Kodu?";
		}
	}
	switch (err) {
		case 0:
			switch (detail) {
				case 1:
					return ns;
				default:
					return baster;
			}
		case 1:
			return "Dil Tanımı?";
		default:
	}
}

function unsur(metin, otabiat, otype, shadda, guide) {
	var counter, adet, choosen, liste, selected;
	selected = "";
	liste = "";
	adet = 0;
	if (metin !== undefined) {
		for (counter = 0; counter < metin.length; counter++) {
			choosen = metin[counter];
			if (choosen == "ّ" && shadda == 2) {
				c = 0;
				do {
					choosen = metin[counter - c];
					c += 1;
				} while (saf(choosen, "", 1) == "");
			}
			switch (choosen.toUpperCase()) {
				case "ا":
				case "ب":
				case "ج":
				case "س":
				case "ص":
				case "ر":
				case "خ":
				case "ه":
				case "ز":
				case "ح":
				case "ط":
				case "ي":
				case "ی":
				case "ل":
				case "ة":
				case "ث":
				case "د":
				case "ك":
				case "ع":
				case "ف":
				case "ق":
				case "ش":
				case "ض":
				case "و":
				case "م":
				case "ن":
				case "ت":
				case "ذ":
				case "ظ":
				case "غ":
					selected += choosen;
					break;
				case "أ":
				case "إ":
				case "آ":
				case "ء":
				case "ى":
					selected += "ا";
					break;
				case "ؤ":
					selected += "و" + "ا";
					break;
				case "ۀ":
					selected += "ه" + "ي";
					break;
				case "ئ":
					selected += "ي" + "ا";
					break;
				case "א":
				case "ב":
				case "ג":
				case "ד":
				case "ה":
				case "ו":
				case "ז":
				case "ח":
				case "ט":
				case "י":
				case "כ":
				case "ל":
				case "מ":
				case "נ":
				case "ס":
				case "ע":
				case "פ":
				case "צ":
				case "ק":
				case "ר":
				case "ש":
				case "ת":
				case "ם":
				case "ן":
				case "ף":
				case "ץ":
				case "ך":
					selected += choosen;
					break;
				case "A":
				case "B":
				case "C":
				case "Ç":
				case "D":
				case "E":
				case "F":
				case "G":
				case "Ğ":
				case "H":
				case "I":
				case "İ":
				case "J":
				case "K":
				case "L":
				case "M":
				case "N":
				case "O":
				case "Ö":
				case "P":
				case "R":
				case "S":
				case "Ş":
				case "T":
				case "U":
				case "Ü":
				case "V":
				case "Y":
				case "Z":
					selected += choosen.toUpperCase();
					break;
				default:
					selected += "";
			}
		}
		switch (guide.toUpperCase()) {
			case "TURKCE":
			case 0:
				switch (otype) {
					case "fire":
					case "ateş":
					case 0:
						for (counter = 0; counter < selected.length; counter++) {
							choosen = selected[counter];
							switch (choosen) {
								case "A":
								case "D":
								case "Ğ":
								case "J":
								case "N":
								case "R":
								case "U":
								case "Z":
									liste += choosen + " "
									adet += 1
									break;
								default:
							}
						}
						break;
					case "air":
					case "hava":
					case 1:
						for (counter = 0; counter < selected.length; counter++) {
							choosen = selected[counter];
							switch (choosen) {
								case "B":
								case "E":
								case "H":
								case "K":
								case "O":
								case "S":
								case "Ü":
									liste += choosen + " "
									adet += 1
									break;
								default:
							}
						}
						break;
					case "water":
					case "su":
					case 2:
						for (counter = 0; counter < selected.length; counter++) {
							choosen = selected[counter];
							switch (choosen) {
								case "C":
								case "F":
								case "I":
								case "L":
								case "Ö":
								case "Ş":
								case "V":
									liste += choosen + " "
									adet += 1
									break;
								default:
							}
						}
						break;
					case "earth":
					case "toprak":
					case 3:
						for (counter = 0; counter < selected.length; counter++) {
							choosen = selected[counter];
							switch (choosen) {
								case "Ç":
								case "G":
								case "İ":
								case "M":
								case "P":
								case "T":
								case "Y":
									liste += choosen + " "
									adet += 1
									break;
								default:
							}
						}
						break;
				}
				break;
			case "ARABI":
			case 1:
				switch (otype) {
					case "fire":
					case "ateş":
					case 0:
						for (counter = 0; counter < selected.length; counter++) {
							choosen = selected[counter];
							switch (choosen) {
								case "ا":
								case "ه":
								case "ط":
								case "م":
								case "ف":
								case "ش":
								case "ذ":
									liste += choosen + " "
									adet += 1
									break;
								default:
							}
						}
						break;
					case "air":
					case "hava":
					case 1:
						for (counter = 0; counter < selected.length; counter++) {
							choosen = selected[counter];
							switch (choosen) {
								case "د":
								case "ح":
								case "ل":
								case "ع":
								case "ر":
								case "خ":
								case "غ":
									liste += choosen + " "
									adet += 1
									break;
								default:
							}
						}
						break;
					case "water":
					case "su":
					case 2:
						for (counter = 0; counter < selected.length; counter++) {
							choosen = selected[counter];
							switch (choosen) {
								case "ب":
								case "و":
								case "ن":
								case "ي":
								case "ی":
								case "ص":
								case "ت":
								case "ض":
									liste += choosen + " "
									adet += 1
									break;
								default:
							}
						}
						break;
					case "earth":
					case "toprak":
					case 3:
						for (counter = 0; counter < selected.length; counter++) {
							choosen = selected[counter];
							switch (choosen) {
								case "ج":
								case "ز":
								case "ك":
								case "س":
								case "ق":
								case "ث":
								case "ظ":
									liste += choosen + " "
									adet += 1
									break;
								default:
							}
						}
						break;
				}
				break;
			case "BUNI":
			case 2:
				switch (otype) {
					case "fire":
					case "ateş":
					case 0:
						for (counter = 0; counter < selected.length; counter++) {
							choosen = selected[counter];
							switch (choosen) {
								case "ا":
								case "ه":
								case "ط":
								case "م":
								case "ف":
								case "ش":
								case "ذ":
									liste += choosen + " "
									adet += 1
									break;
								default:
							}
						}
						break;
					case "air":
					case "hava":
					case 1:
						for (counter = 0; counter < selected.length; counter++) {
							choosen = selected[counter];
							switch (choosen) {
								case "ب":
								case "و":
								case "ن":
								case "ي":
								case "ی":
								case "ص":
								case "ت":
								case "ض":
									liste += choosen + " "
									adet += 1
									break;
								default:
							}
						}
						break;
					case "water":
					case "su":
					case 2:
						for (counter = 0; counter < selected.length; counter++) {
							choosen = selected[counter];
							switch (choosen) {
								case "د":
								case "ح":
								case "ل":
								case "ع":
								case "ر":
								case "خ":
								case "غ":
									liste += choosen + " "
									adet += 1
									break;
								default:
							}
						}
						break;
					case "earth":
					case "toprak":
					case 3:
						for (counter = 0; counter < selected.length; counter++) {
							choosen = selected[counter];
							switch (choosen) {
								case "ج":
								case "ز":
								case "ك":
								case "س":
								case "ق":
								case "ث":
								case "ظ":
									liste += choosen + " "
									adet += 1
									break;
								default:
							}
						}
						break;
				}
				break;
			case "HUSEYNI":
			case 3:
				switch (otype) {
					case "fire":
					case "ateş":
					case 0:
						for (counter = 0; counter < selected.length; counter++) {
							choosen = selected[counter];
							switch (choosen) {
								case "ا":
								case "ه":
								case "ط":
								case "م":
								case "ف":
								case "ش":
								case "ذ":
									liste += choosen + " "
									adet += 1
									break;
								default:
							}
						}
						break;
					case "air":
					case "hava":
					case 1:
						for (counter = 0; counter < selected.length; counter++) {
							choosen = selected[counter];
							switch (choosen) {
								case "ج":
								case "ز":
								case "ك":
								case "س":
								case "ق":
								case "ث":
								case "ظ":
									liste += choosen + " "
									adet += 1
									break;
								default:
							}
						}
						break;
					case "water":
					case "su":
					case 2:
						for (counter = 0; counter < selected.length; counter++) {
							choosen = selected[counter];
							switch (choosen) {
								case "د":
								case "ح":
								case "ل":
								case "ع":
								case "ر":
								case "خ":
								case "غ":
									liste += choosen + " "
									adet += 1
									break;
								default:
							}
						}
						break;
					case "earth":
					case "toprak":
					case 3:
						for (counter = 0; counter < selected.length; counter++) {
							choosen = selected[counter];
							switch (choosen) {
								case "ب":
								case "و":
								case "ي":
								case "ی":
								case "ن":
								case "ص":
								case "ت":
								case "ض":
									liste += choosen + " "
									adet += 1
									break;
								default:
							}
						}
						break;
				}
				break;
			case "HEBREW":
			case 4:
				switch (otype) {
					case "fire":
					case "ateş":
					case 0:
						for (counter = 0; counter < selected.length; counter++) {
							choosen = selected[counter];
							switch (choosen) {
								case "א":
								case "ה":
								case "ט":
								case "מ":
								case "פ":
								case "ש":
								case "ף":
									liste += choosen + " "
									adet += 1
									break;
								default:
							}
						}
						break;
					case "air":
					case "hava":
					case 1:
						for (counter = 0; counter < selected.length; counter++) {
							choosen = selected[counter];
							switch (choosen) {
								case "ב":
								case "ו":
								case "י":
								case "נ":
								case "צ":
								case "ת":
								case "ץ":
									liste += choosen + " "
									adet += 1
									break;
								default:
							}
						}
						break;
					case "water":
					case "su":
					case 2:
						for (counter = 0; counter < selected.length; counter++) {
							choosen = selected[counter];
							switch (choosen) {
								case "ג":
								case "ז":
								case "כ":
								case "ס":
								case "ק":
								case "ם":
								case "ך":
									liste += choosen + " "
									adet += 1
									break;
								default:
							}
						}
						break;
					case "earth":
					case "toprak":
					case 3:
						for (counter = 0; counter < selected.length; counter++) {
							choosen = selected[counter];
							switch (choosen) {
								case "ד":
								case "ח":
								case "ל":
								case "ע":
								case "ר":
								case "ן":
									liste += choosen + " "
									adet += 1
									break;
								default:
							}
						}
						break;
				}
				break;
			default:
				switch (otype) {
					case "fire":
					case "ateş":
					case 0:
						for (counter = 0; counter < selected.length; counter++) {
							choosen = selected[counter];
							switch (choosen) {
								case "ا":
								case "ب":
								case "ج":
								case "س":
								case "ص":
								case "ر":
								case "خ":
									liste += choosen + " "
									adet += 1
									break;
								default:
							}
						}
						break;
					case "air":
					case "hava":
					case 1:
						for (counter = 0; counter < selected.length; counter++) {
							choosen = selected[counter];
							switch (choosen) {
								case "ه":
								case "ز":
								case "ح":
								case "ط":
								case "ي":
								case "ل":
								case "ة":
								case "ث":
								case "ی":
									liste += choosen + " "
									adet += 1
									break;
								default:
							}
						}
						break;
					case "water":
					case "su":
					case 2:
						for (counter = 0; counter < selected.length; counter++) {
							choosen = selected[counter];
							switch (choosen) {
								case "د":
								case "ك":
								case "ع":
								case "ف":
								case "ق":
								case "ش":
								case "ض":
									liste += choosen + " "
									adet += 1
									break;
								default:
							}
						}
						break;
					case "earth":
					case "toprak":
					case 3:
						for (counter = 0; counter < selected.length; counter++) {
							choosen = selected[counter];
							switch (choosen) {
								case "و":
								case "م":
								case "ن":
								case "ت":
								case "ذ":
								case "ظ":
								case "غ":
									liste += choosen + " "
									adet += 1
									break;
								default:
							}
						}
						break;
				}
		}
		switch (otabiat) {
			case "liste":
			case "list":
			case 1:
				return liste;
			case "adet":
			case "amount":
			case 0:
				return adet;
		}
	}
}

function teksir(teksirmetin, teksirayrac, shadda) {
	var iksir, result, inversed, newmetin, lengthdouble, produce, counter, teksired;
	lengthdouble = 0;
	if (shadda = 2) {
		newmetin = saf(teksirmetin, 0, 2);
	} else {
		newmetin = saf(teksirmetin, 0, 1);
	}
	result = saf(newmetin, teksirayrac, 1) + String.fromCharCode(10) + String.fromCharCode(13);
	iksir = newmetin;
	for (produce = 0; produce < newmetin.length - 1; produce++) {
		if (newmetin.length / 2 == Math.floor(newmetin.length / 2)) {
			lengthdouble = 1;
		}
		iksir = "";
		for (counter = 1; counter <= Math.floor(newmetin.length / 2); counter++) {
			inversed = newmetin.length - counter;
			iksir += newmetin[inversed];
			iksir += newmetin[counter - 1];
		}
		if (lengthdouble !== 1) {
			iksir += newmetin[Math.floor(newmetin.length / 2)];
		}
		teksired = result + saf(iksir, teksirayrac, 1) + String.fromCharCode(10) + String.fromCharCode(13);
		result = teksired;
		newmetin = saf(iksir, 0, 1);
	}
	return result;
}

function numbers2arab(indians) {
	var na, counter, choosenarab;
	indians = indians.toString();
	na = "";
	for (counter = 0; counter < indians.length; counter++) {
		choosenarab = indians[counter];
		switch (choosenarab) {
			case "1":
				na += "١";
				break;
			case "2":
				na += "٢";
				break;
			case "3":
				na += "٣";
				break;
			case "4":
				na += "٤";
				break;
			case "5":
				na += "٥";
				break;
			case "6":
				na += "٦";
				break;
			case "7":
				na += "٧";
				break;
			case "8":
				na += "٨";
				break;
			case "9":
				na += "٩";
				break;
			case "0":
				na += "٠";
				break;
			case " ":
				na += " ";
				break;
			case undefined:
				break;
			default:
				na += choosenarab;
		}
	}
	return na;
}

function huddam(num, htype, method) {
	var suffix, preffix, h, gh, counts, departs, rest, counter, counting, choosenduty, turn, counted, mode, eacher;
	var hpart = new Array();
	hpart[0] = "nothing";
	num = parseFloat(num);
	counts = 1;
	gh = "";
	h = "";
	if (num !== undefined && num !== null) {
		if (htype !== undefined) {
			switch (method) {
				case 2:
				case 8:
				case 13:
				case 18:
				case 23:
				case 28:
				case 33:
					method -= 1;
					mode = "eacher";
					break;
				case 4:
				case 7:
				case 12:
				case 17:
				case 22:
				case 27:
				case 32:
					mode = "regular";
					break;
				case 1:
				default:
					method = 1;
					mode = "regular";
			}
			switch (htype.toUpperCase()) {
				case "ULVI":
					suffix = parseFloat(abjad("ئيل", method, 1));
					break;
				case "SUFLI":
					suffix = parseFloat(abjad("يوش", method, 1));
					break;
				case "ŞER":
					suffix = parseFloat(abjad("طيش", method, 1));
					break;
				default:
					suffix = parseFloat(abjad(htype, method, 1));
			}
			if (suffix > num) {
				do {
					num += 361;
				} while (suffix > num);
			}
			preffix = (num - suffix).toString();
			if (preffix.length > 3) {
				for (departs = preffix.length; departs > preffix.length - Math.floor(preffix.length / 3) * 3; departs -= 3) {
					hpart[counts] = preffix.substring(departs - 3, departs);
					counts += 1;
				}
				rest = preffix.length - ((counts - 1) * 3);
				if (rest > 0) {
					hpart[counts] = preffix.substring(0, rest);
				} else {
					counts -= 1;
				}
			} else {
				hpart[1] = preffix;
			}
			for (counter = counts; counter > 0; counter -= 1) {
				if (hpart[counter] !== undefined) {
					for (counting = 0; counting < hpart[counter].length; counting++) {
						eacher = "";
						choosenduty = parseFloat(hpart[counter].substring(counting, counting + 1));
						turn = (4 - hpart[counter].length) + counting;
						h = "";
						switch (turn) {
							case 3:
								switch (choosenduty) {
									case 1:
										if (1 < hpart[counter].length) {
											h = "ا";
										} else if (counts == 1) {
											h = "ا";
										}
										break;
									case 2:
										switch (method) {
											case 12:
												h = "ل";
												break;
											case 1:
											case 7:
											case 17:
											case 22:
											case 27:
											case 32:
											default:
												h = "ب";
										}
										break;
									case 3:
										switch (method) {
											case 12:
												h = "ن";
												break;
											case 17:
											case 22:
											case 27:
											case 32:
												h = "ت";
												break;
											case 1:
											case 7:
											default:
												h = "ج";
										}
										break;
									case 4:
										switch (method) {
											case 12:
												h = "م";
												break;
											case 17:
											case 22:
											case 27:
											case 32:
												h = "ث";
												break;
											case 1:
											case 7:
											default:
												h = "د";
										}
										break;
									case 5:
										switch (method) {
											case 12:
												h = "و";
												break;
											case 17:
											case 22:
											case 27:
											case 32:
												h = "ج";
												break;
											case 1:
											case 7:
											default:
												h = "ه";
										}
										break;
									case 6:
										switch (method) {
											case 12:
												h = "ي";
												break;
											case 17:
											case 22:
											case 27:
											case 32:
												h = "ح";
												break;
											case 1:
											case 7:
											default:
												h = "و";
										}
										break;
									case 7:
										switch (method) {
											case 12:
												h = "ه";
												break;
											case 17:
											case 22:
											case 27:
											case 32:
												h = "خ";
												break;
											case 1:
											case 7:
											default:
												h = "ز";
										}
										break;
									case 8:
										switch (method) {
											case 12:
												h = "ر";
												break;
											case 17:
											case 22:
											case 27:
											case 32:
												h = "د";
												break;
											case 1:
											case 7:
											default:
												h = "ح";
										}
										break;
									case 9:
										switch (method) {
											case 12:
												h = "ب";
												break;
											case 17:
											case 22:
											case 27:
											case 32:
												h = "ذ";
												break;
											case 1:
											case 7:
											default:
												h = "ط";
										}
										break;
								}
								break;
							case 2:
								switch (choosenduty) {
									case 1:
										switch (method) {
											case 12:
												h = "ت";
												break;
											case 17:
											case 22:
											case 32:
												h = "ر";
												break;
											case 27:
												h = "ك"
												break;
											case 1:
											case 7:
											default:
												h = "ي";
										}
										break;
									case 2:
										switch (method) {
											case 17:
											case 22:
											case 32:
												h = "ز";
												break;
											case 27:
												h = "ل";
												break;
											case 1:
											case 7:
											case 12:
											default:
												h = "ك";
										}
										break;
									case 3:
										switch (method) {
											case 12:
												h = "ع";
												break;
											case 17:
											case 32:
												h = "س";
												break;
											case 22:
												h = "ط";
												break;
											case 27:
												h = "م";
												break;
											case 1:
											case 7:
											default:
												h = "ل";
										}
										break;
									case 4:
										switch (method) {
											case 12:
												h = "ف";
												break;
											case 17:
											case 32:
												h = "ش";
												break;
											case 22:
												h = "ظ";
												break;
											case 27:
												h = "و";
												break;
											case 1:
											case 7:
											default:
												h = "م";
										}
										break;
									case 5:
										switch (method) {
											case 12:
												h = "ق";
												break;
											case 17:
											case 32:
												h = "ص";
												break;
											case 22:
												h = "ك";
												break;
											case 1:
											case 7:
											default:
												h = "ن";
										}
										break;
									case 6:
										switch (method) {
											case 7:
											case 27:
												h = "ص";
												break;
											case 17:
											case 32:
												h = "ض";
												break;
											case 22:
												h = "ل";
												break;
											case 1:
											case 12:
											default:
												h = "س";
										}
										break;
									case 7:
										switch (method) {
											case 12:
												h = "د";
												break;
											case 17:
											case 32:
												h = "ط";
												break;
											case 22:
												h = "م";
												break;
											case 27:
												h = "ض";
												break;
											case 1:
											case 7:
											default:
												h = "ع";
										}
										break;
									case 8:
										switch (method) {
											case 12:
												h = "ذ";
												break;
											case 17:
											case 32:
												h = "ظ";
												break;
											case 22:
												h = "ن";
												break;
											case 27:
												h = "ع";
												break;
											case 1:
											case 7:
											default:
												h = "ف";
										}
										break;
									case 9:
										switch (method) {
											case 7:
												h = "ض";
												break;
											case 12:
												h = "ح";
												break;
											case 17:
											case 32:
												h = "ع";
												break;
											case 27:
												h = "غ";
												break;
											case 1:
											default:
												h = "ص";
										}
										break;
								}
								break;
							case 1:
								switch (choosenduty) {
									case 1:
										switch (method) {
											case 12:
												h = "ج";
												break;
											case 17:
											case 32:
												h = "غ";
												break;
											case 22:
												h = "ض";
												break;
											case 27:
												h = "ط";
												break;
											case 1:
											case 7:
											default:
												h = "ق";
										}
										break;
									case 2:
										switch (method) {
											case 12:
												h = "خ";
												break;
											case 17:
											case 32:
												h = "ف";
												break;
											case 22:
												h = "ع";
												break;
											case 27:
												h = "ظ";
												break;
											case 1:
											case 7:
											default:
												h = "ر";
										}
										break;
									case 3:
										switch (method) {
											case 7:
												h = "س";
												break;
											case 17:
											case 32:
												h = "ق";
												break;
											case 22:
												h = "غ";
												break;
											case 27:
												h = "ف";
												break;
											case 1:
											case 12:
											default:
												h = "ش";
										}
										break;
									case 4:
										switch (method) {
											case 12:
												h = "ص";
												break;
											case 17:
											case 32:
												h = "ك";
												break;
											case 22:
												h = "ف";
												break;
											case 27:
												h = "ق";
												break;
											case 1:
											case 7:
											default:
												h = "ت";
										}
										break;
									case 5:
										switch (method) {
											case 12:
												h = "ض";
												break;
											case 17:
											case 32:
												h = "ل";
												break;
											case 22:
												h = "ق";
												break;
											case 27:
												h = "ر";
												break;
											case 1:
											case 7:
											default:
												h = "ث";
										}
										break;
									case 6:
										switch (method) {
											case 12:
											case 27:
												h = "ز";
												break;
											case 17:
											case 32:
												h = "م";
												break;
											case 22:
												h = "س";
												break;
											case 1:
											case 7:
											default:
												h = "خ";
										}
										break;
									case 7:
										switch (method) {
											case 12:
												h = "ث";
												break;
											case 17:
											case 32:
												h = "ن";
												break;
											case 22:
												h = "ش";
												break;
											case 27:
												h = "ه";
												break;
											case 1:
											case 7:
											default:
												h = "ذ";
										}
										break;
									case 8:
										switch (method) {
											case 7:
												h = "ظ";
												break;
											case 12:
												h = "ط";
												break;
											case 17:
											case 22:
												h = "ه";
												break;
											case 27:
												h = "س";
												break;
											case 32:
												h = "و";
												break;
											case 1:
											default:
												h = "ض";
										}
										break;
									case 9:
										switch (method) {
											case 7:
											case 12:
												h = "غ";
												break;
											case 17:
											case 22:
												h = "و";
												break;
											case 27:
												h = "ش";
												break;
											case 32:
												h = "ه";
												break;
											case 1:
											default:
												h = "ظ";
										}
										break;
								}
								break;
						}
						if (h !== undefined) {
							gh += "" + h;
						}
						if (parseFloat(hpart[counter]) > 0) {
							for (counted = 1; counted < counter; counted++) {
								switch (method) {
									case 7:
										eacher += "ش";
										break;
									case 12:
										eacher += "ظ";
										break;
									case 17:
									case 22:
									case 27:
									case 32:
										eacher += "ي";
										break;
									case 1:
									default:
										eacher += "غ";
								}
							}
						}
						if (mode == "eacher") {
							gh += eacher;
							eacher = "";
						}
					}
					if (mode == "regular") {
						gh += eacher;
						eacher = "";
					}
				}
			}
			switch (htype.toUpperCase()) {
				case "ULVI":
					gh += "ئيل";
					break;
				case "SUFLI":
					gh += "يوش";
					break;
				case "ŞER":
					gh += "طيش";
					break;
				default:
					gh += htype;
			}
		}
	}
	if (gh !== undefined) {
		return gh;
	} else {
		return "";
	}
}

function rakamtopla(urval, d1g1tamount) {
	var choosen, newsum, hepsi, myval, counter, showvar;
	myval = "" + urval + "";
	if (d1g1tamount == 0) {
		hepsi = myval;
		do {
			newsum = 0;
			for (counter = 0; counter < myval.length; counter++) {
				choosen = parseFloat(myval.substring(counter, counter + 1));
				newsum = newsum + choosen;
			}
			myval = "" + newsum + "";
			hepsi = hepsi + " ► " + newsum;
		} while (myval.length > 1);
		showvar = hepsi;
	} else {
		do {
			newsum = 0;
			for (counter = 0; counter < myval.length; counter++) {
				choosen = parseFloat(myval.substring(counter, counter + 1));
				newsum = newsum + choosen;
			}
			myval = "" + newsum + "";
		} while (myval.length > d1g1tamount);
		showvar = myval;
	}
	return showvar;
}

function tesbeh(zkr, minimum, boncuk, bolum) {
	var turn, part, rest, outp;
	outp = "";
	zkr = parseFloat(zkr);
	if (zkr < minimum) {
		zkr = zkr * zkr;
	}
	turn = Math.floor(zkr / boncuk);
	part = Math.floor((zkr - (turn * boncuk)) / bolum);
	rest = ((zkr - (turn * boncuk)) - (part * bolum));
	if (turn > 0 && turn !== undefined) {
		outp += "[" + turn + " tur]";
	}
	if (part > 0 && part !== undefined) {
		outp += "[" + part + "X" + bolum + "]";
	}
	if (rest > 0 && rest !== undefined) {
		outp += "[" + rest + " kalan]";
	}
	return outp;
}

function altayaz(girdi) {
	var ss, counter, choosenalta;
	girdi = girdi.toString();
	ss = "";
	for (counter = 0; counter < girdi.length; counter++) {
		choosenalta = girdi[counter];
		switch (choosenalta) {
			case "1":
				ss += "₁";
				break;
			case "2":
				ss += "₂";
				break;
			case "3":
				ss += "₃";
				break;
			case "4":
				ss += "₄";
				break;
			case "5":
				ss += "₅";
				break;
			case "6":
				ss += "₆";
				break;
			case "7":
				ss += "₇";
				break;
			case "8":
				ss += "₈";
				break;
			case "9":
				ss += "₉";
				break;
			case "0":
				ss += "₀";
				break;
			case " ":
				ss += " ";
				break;
			case "+":
				ss += "₊";
				break;
			case "-":
				ss += "₋";
				break;
			case "=":
				ss += "₌";
				break;
			case "(":
				ss += "₍";
				break;
			case "[":
				ss += "₍";
				break;
			case ")":
				ss += "₎";
				break;
			case "]":
				ss += "₎";
				break;
			case undefined:
				break;
			default:
				ss += choosenalta;
		}
	}
	return ss;
}

function saf(metinsaf, ayrac, shadda) {
	var safmetin, irun, choosen, counter, s;
	safmetin = "";
	switch (ayrac) {
		case 0:
			irun = "";
			break;
		default:
			irun = ayrac;
	}
	if (metinsaf !== undefined) {
		for (counter = 0; counter < metinsaf.length; counter++) {
			choosen = metinsaf[counter];
			s = "";
			if (choosen == "ّ" && shadda == 2) {
				c = 0;
				do {
					choosen = metinsaf[counter - c];
					c += 1;
				} while (saf(choosen, "", 1) == "");
			}
			switch (choosen) {
				case "ا":
				case "ء":
				case "ى":
				case "ب":
				case "ج":
				case "د":
				case "ه":
				case "و":
				case "ؤ":
				case "ز":
				case "ح":
				case "ط":
				case "ي":
				case "ك":
				case "ل":
				case "م":
				case "ن":
				case "س":
				case "ع":
				case "ف":
				case "ص":
				case "ق":
				case "ر":
				case "ش":
				case "ت":
				case "ض":
				case "ة":
				case "ث":
				case "خ":
				case "ذ":
				case "ض":
				case "ظ":
				case "غ":
				case "ئ":
					s = choosen + irun;
					break;
				case "أ":
				case "إ":
				case "آ":
				case "ىٰ":
					s = "ا" + irun;
					break;
				case "ک":
					s = "ک" + irun;
					break;
				case "ﮒ":
					s = "ﮒ" + irun;
					break;
				case "ی":
					s = "ی" + irun;
					break;
				case "ۀ":
					s = "ۀ" + irun;
					break;
				case "א":
				case "ב":
				case "ג":
				case "ד":
				case "ה":
				case "ו":
				case "ז":
				case "ח":
				case "ט":
				case "י":
				case "ל":
				case "ס":
				case "ע":
				case "ק":
				case "ר":
				case "ש":
				case "ת":
				case "כ":
				case "ך":
				case "מ":
				case "ם":
				case "נ":
				case "ן":
				case "פ":
				case "ף":
				case "צ":
				case "ץ":
				case "A":
				case "B":
				case "C":
				case "Ç":
				case "D":
				case "E":
				case "F":
				case "G":
				case "Ğ":
				case "H":
				case "I":
				case "İ":
				case "J":
				case "K":
				case "L":
				case "M":
				case "N":
				case "O":
				case "Ö":
				case "P":
				case "R":
				case "S":
				case "Ş":
				case "T":
				case "U":
				case "Ü":
				case "V":
				case "Y":
				case "Z":
				case "a":
				case "b":
				case "c":
				case "ç":
				case "d":
				case "e":
				case "f":
				case "g":
				case "ğ":
				case "h":
				case "ı":
				case "i":
				case "j":
				case "k":
				case "l":
				case "m":
				case "n":
				case "o":
				case "ö":
				case "p":
				case "r":
				case "s":
				case "ş":
				case "t":
				case "u":
				case "ü":
				case "v":
				case "y":
				case "z":
					s = choosen + irun;
					break;
				case " ":
					switch (ayrac) {
						case "":
							s = choosen;
							break;
						case 0:
							s = "";
							break;
						default:
							s = irun;
					}
					break;
				default:
					s = "";
			}
			safmetin += s;
		}
	}
	return safmetin;
}

function asgar(harf, level) {
	var c = parseFloat(abjad(harf, level, 1));
	if (c > 12) {
		return c - (12 * Math.floor(c / 12));
	} else {
		return c;
	}
}

function newline(amount) {
	var nl = "";
	for (var rows = 1; rows < amount; rows += 1) {
		nl += String.fromCharCode(10) + String.fromCharCode(13);
	}
	return nl;
}

function nutket(MyNumber, language) {
	var temp = "";
	var nutuk = "";
	var counter = 0;
	if (language == undefined) {
		language = "ARABIC";
	}
	if (MyNumber == undefined) {
		MyNumber = 0;
	}
	language = language.toUpperCase();
	switch (language) {
		case "ARABIC":
			if (MyNumber == 0 && counter == 0) {
				return "صفر";
			}
			var PlaceOnes = ["", "ألف", "مليون", "مليار", "تريليون"];
			var PlaceTwos = ["", "ألفان", "مليونان", "ملياران", "تريليونان"];
			var PlaceAppent = ["", "ألفاً", "مليوناً", "ملياراً", "تريليوناً"];
			var PlacePlural = ["", "آلاف", "ملايين", "مليارات", "تريليونات"];
			MyNumber = MyNumber.toString().trim();
			do {
				var EventHappenned = 0;
				if (counter > 0 && parseFloat(Right(MyNumber, 3)) == 1) {
					temp = "";
					if (nutuk.length > 0) {
						nutuk = PlaceOnes[counter] + " و " + nutuk;
					} else {
						nutuk = PlaceOnes[counter] + " " + nutuk;
					}
				} else if (counter > 0 && parseFloat(Right(MyNumber, 3)) == 2) {
					temp = "";
					if (nutuk.length > 0) {
						nutuk = PlaceTwos[counter] + " و " + nutuk;
					} else {
						nutuk = PlaceTwos[counter] + " " + nutuk;
					}
				} else {
					temp = GetHundreds(Right(MyNumber, 3), language, counter, nutuk);
				}
				if (temp != "") {
					if (counter > 0) {
						if (nutuk.length > 0) {
							nutuk = " و " + nutuk;
						}
						if (parseFloat(Right(MyNumber, 3)) != 2) {
							if (Math.floor(parseFloat(Right(MyNumber, 3)) / 100) != 1) {
								if (parseFloat(Right(MyNumber, 3)) >= 3 && parseFloat(Right(MyNumber, 3)) <= 10) {
									nutuk = " " + PlacePlural[counter] + nutuk;
									EventHappenned = 1;
								}
							}
						}
					}
					if (EventHappenned == 0) {
						if (nutuk.length > 0) {
							nutuk = " " + PlaceAppent[counter] + nutuk;
						} else {
							nutuk = " " + PlaceOnes[counter] + nutuk;
						}
					} else {
						EventHappenned = 0;
					}
					nutuk = temp + nutuk;
					temp = "";
				}
				if (MyNumber.length > 3) {
					MyNumber = Left(MyNumber, MyNumber.length - 3);
				} else {
					MyNumber = "";
				}
				counter += 1;
			} while (MyNumber != "");
			break;
		case "HEBREW":
			if (MyNumber == 0 && counter == 0) {
				return "אֶפֶס";
			}
			var PlaceOnes = ["", "אלף", "מיליון", "מיליארד", "טריליון"];
			var PlaceTwos = ["", "אלפיים ", "שני מיליון ", "שני מיליארד ", "שני טריליון "];
			var PlaceAppent = ["", "אלפא", "מיליון", "מיליארד", "טריליון"];
			var PlacePlural = ["", "אלפים", "מיליונים", "מיליארדים", "טריליונים"];
			MyNumber = MyNumber.toString().trim();
			do {
				var EventHappenned = 0;
				if (counter > 0 && parseFloat(Right(MyNumber, 3)) == 1) {
					temp = "";
					if (nutuk.length > 0) {
						nutuk = PlaceOnes[counter] + " ו " + nutuk;
					} else {
						nutuk = PlaceOnes[counter] + " " + nutuk;
					}
				} else if (counter > 0 && parseFloat(Right(MyNumber, 3)) == 2) {
					temp = "";
					if (nutuk.length > 0) {
						nutuk = PlaceTwos[counter] + " ו " + nutuk;
					} else {
						nutuk = PlaceTwos[counter] + " " + nutuk;
					}
				} else {
					temp = GetHundreds(Right(MyNumber, 3), language, counter, nutuk);
				}
				if (temp != "") {
					if (counter > 0) {
						if (nutuk.length > 0) {
							nutuk = " ו " + nutuk;
						}
						if (parseFloat(Right(MyNumber, 3)) != 2) {
							if (Math.floor(parseFloat(Right(MyNumber, 3)) / 100) != 1) {
								if (parseFloat(Right(MyNumber, 3)) >= 3 && parseFloat(Right(MyNumber, 3)) <= 10) {
									nutuk = " " + PlacePlural[counter] + nutuk;
									EventHappenned = 1;
								}
							}
						}
					}
					if (EventHappenned == 0) {
						if (nutuk.length > 0) {
							nutuk = " " + PlaceAppent[counter] + nutuk;
						} else {
							nutuk = " " + PlaceOnes[counter] + nutuk;
						}
					} else {
						EventHappenned = 0;
					}
					nutuk = temp + nutuk;
					temp = "";
				}
				if (MyNumber.length > 3) {
					MyNumber = Left(MyNumber, MyNumber.length - 3);
				} else {
					MyNumber = "";
				}
				counter += 1;
			} while (MyNumber != "");
			break;
		case "TURKCE":
			var dongu = 0;
			var place = "";
			if (MyNumber == 0 && dongu == 0) {
				return "sıfır";
			}
			var place = ["", "bin ", "milyon ", "milyar ", "trilyon "];
			MyNumber = MyNumber.toString().trim();
			while (MyNumber != "") {
				if (dongu == 1 && parseFloat(Right(MyNumber, 3)) == 1) {
					temp = "";
					nutuk = place[dongu] + nutuk;
				} else {
					temp = GetHundreds(Right(MyNumber, 3), language, dongu, nutuk);
				}
				if (temp != "") {
					nutuk = temp + " " + place[dongu] + nutuk;
					temp = "";
				}
				if (MyNumber.length > 3) {
					MyNumber = Left(MyNumber, MyNumber.length - 3);
				} else {
					MyNumber = "";
				}
				dongu += 1;
			}
			break;
		default:
	}
	counter = 0;
	return nutuk.trim();
}

function GetHundreds(MyNumber, language, counter, nutuk) {
	var result = "";
	MyNumber = Right("000" + MyNumber, 3);
	switch (language) {
		case "ARABIC":
			if (parseFloat(Left(MyNumber, 1)) > 0) {
				if (parseFloat(Right(MyNumber, 2)) == 0 && parseFloat(Left(MyNumber, 1)) == 2) {
					if (counter == 0) {
						result = "مئتان ";
					} else {
						result = "مئتا ";
					}
				} else {
					switch (parseFloat(Left(MyNumber, 1))) {
						case 1:
							result = "مائة ";
							break;
						case 2:
							result = "مئتان ";
							break;
						case 3:
							result = "ثلاثمائة ";
							break;
						case 4:
							result = "أربعمائة ";
							break;
						case 5:
							result = "خمسمائة ";
							break;
						case 6:
							result = "ستمائة ";
							break;
						case 7:
							result = "سبعمائة ";
							break;
						case 8:
							result = "ثمانمائة ";
							break;
						case 9:
							result = "تسعمائة ";
							break;
						default:
					}
				}
			}
			if (result.length > 0 && parseFloat(Right(MyNumber, 2)) != 0) {
				result += " و ";
			}
			if (MyNumber.substring(1, 2) != "0") {
				result += GetTens(MyNumber.substring(1), language, counter, parseFloat(Left(MyNumber, 1)), result + nutuk);
			} else {
				result += GetDigit(parseFloat(Right(MyNumber, 1)), language);
			}
			break;
		case "HEBREW":
			if (parseFloat(Left(MyNumber, 1)) > 0) {
				switch (parseFloat(Left(MyNumber, 1))) {
					case 1:
						result = "מאה ";
						break;
					case 2:
						result = "מאתיים ";
						break;
					case 3:
						result = "שלוש מאות ";
						break;
					case 4:
						result = "ארבע מאות ";
						break;
					case 5:
						result = "חמש מאות ";
						break;
					case 6:
						result = "שש מאות ";
						break;
					case 7:
						result = "שבע מאות ";
						break;
					case 8:
						result = "שמונה מאות ";
						break;
					case 9:
						result = "תשע מאות ";
						break;
					default:
				}
			}
			if (result.length > 0 && parseFloat(Right(MyNumber, 2)) != 0) {
				result += " ו ";
			}
			if (MyNumber.substring(1, 2) != "0") {
				result += GetTens(MyNumber.substring(1), language, counter, parseFloat(Left(MyNumber, 1)), result + nutuk);
			} else {
				result += GetDigit(parseFloat(Right(MyNumber, 1)), language);
			}
			break;
		case "TURKCE":
			if (parseFloat(Left(MyNumber, 1)) > 0) {
				if (parseFloat(Left(MyNumber, 1)) > 1) {
					result = GetDigit(parseFloat(Left(MyNumber, 1)), language) + " yüz ";
				} else {
					result = "yüz ";
				}
			}
			if (MyNumber.substring(1, 2) != "0") {
				result += GetTens(MyNumber.substring(1), language);
			} else {
				result += GetDigit(parseFloat(Right(MyNumber, 1)), language);
			}
			break;
		default:
	}
	return result;
}

function GetTens(TensText, language, counter, Hundreds, nutuk) {
	var result = "";
	switch (language) {
		case "ARABIC":
			var PlaceOnes = ["", "ألف ", "مليون ", "مليار ", "تريليون "];
			var PlaceTwos = ["", "ألفان ", "مليونان ", "ملياران ", "تريليونان "];
			if (parseFloat(Left(TensText, 1)) == 1) {
				switch (parseFloat(TensText)) {
					case 10:
						result = "عشرة";
						break;
					case 11:
						result = "إحدى عشرة";
						break;
					case 12:
						result = "اثنتا عشرة";
						break;
					case 13:
						result = "ثلاث عشرة";
						break;
					case 14:
						result = "أربع عشرة";
						break;
					case 15:
						result = "خمس عشرة";
						break;
					case 16:
						result = "ست عشرة";
						break;
					case 17:
						result = "سبع عشرة";
						break;
					case 18:
						result = "ثماني عشرة";
						break;
					case 19:
						result = "تسع عشرة";
						break;
					default:
				}
			} else {
				if (parseFloat(TensText) == 2 && Hundreds == 0 && counter > 0) {
					result = PlaceTwos[counter] + result;
				} else {
					if (parseFloat(TensText) == 1 && counter > 0) {
						result = PlaceOnes[counter] + result;
					} else if (parseFloat(TensText) == 1 || parseFloat(TensText) == 2) {
						if (counter == 0 && Hundreds == 0 && parseFloat(TensText) == 0) {
							result += "";
						}
					}
				}
				if (parseFloat(TensText) > 0) {
					if (parseFloat(Left(TensText, 1)) > 1) {
						result += GetTensStatus(parseFloat(Left(TensText, 1)), language);
					}
					if (result.length > 0 && parseFloat(Right(TensText, 1)) != 0) {
						result += "و ";
					}
					result += GetDigit(parseFloat(Right(TensText, 1)), language);
				} else {
					if (nutuk.length > 0 && parseFloat(Left(TensText, 1)) != 0 || result.length > 0 && parseFloat(Left(TensText, 1)) != 0) {
						result += "و ";
					}
					result += GetTensStatus(parseFloat(Left(TensText, 1)), language);
				}
			}
			break;
		case "HEBREW":
			var PlaceOnes = ["", "אלפים ", "מיליון ", "מיליארד ", "טריליון "];
			var PlaceTwos = ["", "אלפיים ", "שני מיליון ", "שני מיליארד ", "שני טריליון "];
			if (parseFloat(Left(TensText, 1)) == 1) {
				switch (parseFloat(TensText)) {
					case 10:
						result = "עשר ";
						break;
					case 11:
						result = "אחת עשרה ";
						break;
					case 12:
						result = "שתים עשרה ";
						break;
					case 13:
						result = "שלוש עשרה ";
						break;
					case 14:
						result = "ארבע עשרה ";
						break;
					case 15:
						result = "חמש עשרה ";
						break;
					case 16:
						result = "שש עשרה ";
						break;
					case 17:
						result = "שבע עשרה ";
						break;
					case 18:
						result = "שמונה עשרה ";
						break;
					case 19:
						result = "תשע עשרה ";
						break;
					default:
				}
			} else {
				if (parseFloat(TensText) == 2 && Hundreds == 0 && counter > 0) {
					result = PlaceTwos[counter] + result;
				} else {
					if (parseFloat(TensText) == 1 && counter > 0) {
						result = PlaceOnes[counter] + result;
					} else if (parseFloat(TensText) == 1 || parseFloat(TensText) == 2) {
						if (counter == 0 && Hundreds == 0 && parseFloat(TensText) == 0) {
							result += "";
						}
					}
				}
				if (parseFloat(TensText) > 0) {
					if (parseFloat(Left(TensText, 1)) > 1) {
						result += GetTensStatus(parseFloat(Left(TensText, 1)), language);
					}
					if (result.length > 0 && parseFloat(Right(TensText, 1)) != 0) {
						result += "ו ";
					}
					result += GetDigit(parseFloat(Right(TensText, 1)), language);
				} else {
					if (nutuk.length > 0 && parseFloat(Left(TensText, 1)) != 0 || result.length > 0 && parseFloat(Left(TensText, 1)) != 0) {
						result += "ו ";
					}
					result += GetTensStatus(parseFloat(Left(TensText, 1)), language);
				}
			}
			break;
		case "TURKCE":
			switch (parseFloat(Left(TensText, 1))) {
				case 1:
					result = "on ";
					break;
				case 2:
					result = "yirmi ";
					break;
				case 3:
					result = "otuz ";
					break;
				case 4:
					result = "kırk ";
					break;
				case 5:
					result = "elli ";
					break;
				case 6:
					result = "altmış ";
					break;
				case 7:
					result = "yetmiş ";
					break;
				case 8:
					result = "seksen ";
					break;
				case 9:
					result = "doksan ";
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
	var result = "";
	switch (language) {
		case "ARABIC":
			switch (Tens) {
				case 2:
					result = "عشرين ";
					break;
				case 3:
					result = "ثلاثين ";
					break;
				case 4:
					result = "أربعين ";
					break;
				case 5:
					result = "خمسين ";
					break;
				case 6:
					result = "ستين ";
					break;
				case 7:
					result = "سبعين ";
					break;
				case 8:
					result = "ثمانين ";
					break;
				case 9:
					result = "تسعين ";
					break;
				default:
			}
			break;
		case "HEBREW":
			switch (Tens) {
				case 2:
					result = "עשרים ";
					break;
				case 3:
					result = "שלושים ";
					break;
				case 4:
					result = "ארבעים ";
					break;
				case 5:
					result = "חמישים ";
					break;
				case 6:
					result = "שישים ";
					break;
				case 7:
					result = "שבעים ";
					break;
				case 8:
					result = "שמונים ";
					break;
				case 9:
					result = "תשעים ";
					break;
				default:
			}
			break;
		default:
	}
	return result;
}

function GetDigit(Digit, language) {
	var result = "";
	switch (language) {
		case "ARABIC":
			switch (Digit) {
				case 1:
					result = "احد";
					break;
				case 2:
					result = "اثنان";
					break;
				case 3:
					result = "ثلاثة";
					break;
				case 4:
					result = "أربعة";
					break;
				case 5:
					result = "خمسة";
					break;
				case 6:
					result = "ستة";
					break;
				case 7:
					result = "سبعة";
					break;
				case 8:
					result = "ثمانية";
					break;
				case 9:
					result = "تسعة";
					break;
				default:
					result = "";
			}
			break;
		case "HEBREW":
			switch (Digit) {
				case 1:
					result = "אחת";
					break;
				case 2:
					result = "שניים";
					break;
				case 3:
					result = "שלושה";
					break;
				case 4:
					result = "ארבעה";
					break;
				case 5:
					result = "חמש";
					break;
				case 6:
					result = "שישה";
					break;
				case 7:
					result = "שבע";
					break;
				case 8:
					result = "שמונה";
					break;
				case 9:
					result = "תשע";
					break;
				default:
					result = "";
			}
			break;
		case "TURKCE":
			switch (Digit) {
				case 1:
					result = "bir";
					break;
				case 2:
					result = "iki";
					break;
				case 3:
					result = "üç";
					break;
				case 4:
					result = "dört";
					break;
				case 5:
					result = "beş";
					break;
				case 6:
					result = "altı";
					break;
				case 7:
					result = "yedi";
					break;
				case 8:
					result = "sekiz";
					break;
				case 9:
					result = "dokuz";
					break;
				default:
					result = "";
			}
			break;
		default:
	}
	return result;
}

function Left(str, n) {
	if (n <= 0)
		return "";
	else if (n > String(str).length)
		return str;
	else
		return String(str).substring(0, n);
}

function Right(str, n) {
	if (n <= 0)
		return "";
	else if (n > String(str).length)
		return str;
	else {
		var iLen = String(str).length;
		return String(str).substring(iLen, iLen - n);
	}
}

function hepart(npotent, mimic) {
	var kat = 2;
	var result, sum, rsum;
	do {
		result = npotent * kat;
		kat += 1;
	} while (Math.floor((result - 30) / 4) < 1);
	if (mimic == 1) {
		return kat - 1;
	} else {
		return result;
	}
}
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
                            case 0:
                            case 6:
                            case 11:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                            case 5:
                            case 7:
                            case 10:
                            case 12:
                            case 15:
                                s = 1;
                                break;
                            case 2:
                                s = parseFloat(abjad("الف", 1, 1));
                                break;
                            case 3:
                                s = parseFloat(bastet(choosen, 1, -2, 1, "ARABIC"));
                                break;
                            case 8:
                                s = parseFloat(abjad("الف", 7, 1));
                                break;
                            case 9:
                                s = parseFloat(bastet(choosen, 1, -8, 1, "ARABIC"));
                                break;
                            case 13:
                                s = parseFloat(abjad("الف", 12, 1));
                                break;
                            case 14:
                                s = parseFloat(bastet(choosen, 1, -13, 1, "ARABIC"));
                                break;
                            default:
                                err = 1;
                        }
                        break;
                    case "ؤ":
                        switch (tablo) {
                            case 0:
                                s = parseFloat(asgar("و", 1)) + parseFloat(asgar("ا", 1));
                                break;
                            case 1:
                            case 4:
                                s = 7;
                                break;
                            case 2:
                                s = parseFloat(abjad("الف", 1, 1)) + parseFloat(abjad("واو", 1, 1));
                                break;
                            case 3:
                                s = parseFloat(bastet("و", 1, -2, 1, "ARABIC")) + parseFloat(bastet("ا", 1, -2, 1, "ARABIC"));
                                break;
                            case 5:
                                s = 1;
                                break;
                            case 6:
                                s = parseFloat(asgar("و", 7)) + parseFloat(asgar("ا", 7));
                                break;
                            case 7:
                            case 10:
                                s = 6;
                                break;
                            case 8:
                                s = parseFloat(abjad("الف", 7, 1)) + parseFloat(abjad("واو", 7, 1));
                                break;
                            case 9:
                                s = parseFloat(bastet("و", 1, -8, 1, "ARABIC")) + parseFloat(bastet("ا", 1, -8, 1, "ARABIC"));
                                break;
                            case 11:
                                s = parseFloat(asgar("و", 12)) + parseFloat(asgar("ا", 12));
                                break;
                            case 12:
                            case 15:
                                s = 6;
                                break;
                            case 13:
                                s = parseFloat(abjad("الف", 12, 1)) + parseFloat(abjad("واو", 12, 1));
                                break;
                            case 14:
                                s = parseFloat(bastet("و", 1, -13, 1, "ARABIC")) + parseFloat(bastet("ا", 1, -13, 1, "ARABIC"));
                                break;
                            default:
                                err = 1;
                        }
                        break;
                    case "ئ":
                        switch (tablo) {
                            case 0:
                                s = parseFloat(asgar("ي", 1)) + parseFloat(asgar("ا", 1));
                                break;
                            case 1:
                            case 4:
                                s = 11;
                                break;
                            case 2:
                                s = parseFloat(abjad("الف", 1, 1)) + parseFloat(abjad("يا", 1, 1));
                                break;
                            case 3:
                                s = parseFloat(bastet("ي", 1, -2, 1, "ARABIC")) + parseFloat(bastet("ا", 1, -2, 1, "ARABIC"));
                                break;
                            case 5:
                                s = 1;
                                break;
                            case 6:
                                s = parseFloat(asgar("ي", 7)) + parseFloat(asgar("ا", 7));
                                break;
                            case 7:
                            case 10:
                                s = 7;
                                break;
                            case 8:
                                s = parseFloat(abjad("الف", 7, 1)) + parseFloat(abjad("يا", 7, 1));
                                break;
                            case 9:
                                s = parseFloat(bastet("ي", 1, -8, 1, "ARABIC")) + parseFloat(bastet("ا", 1, -8, 1, "ARABIC"));
                                break;
                            case 11:
                                s = parseFloat(asgar("ي", 12)) + parseFloat(asgar("ا", 12));
                                break;
                            case 12:
                            case 15:
                                s = 7;
                                break;
                            case 13:
                                s = parseFloat(abjad("الف", 12, 1)) + parseFloat(abjad("يا", 12, 1));
                                break;
                            case 14:
                                s = parseFloat(bastet("ي", 1, -13, 1, "ARABIC")) + parseFloat(bastet("ا", 1, -13, 1, "ARABIC"));
                                break;
                            default:
                                err = 1;
                        }
                        break;
                    case "ۀ":
                        switch (tablo) {
                            case 0:
                                s = parseFloat(asgar("ي", 1)) + parseFloat(asgar("ه", 1));
                                break;
                            case 1:
                            case 4:
                                s = 15;
                                break;
                            case 2:
                                s = parseFloat(abjad("يا", 1, 1)) + parseFloat(abjad("ها", 1, 1));
                                break;
                            case 3:
                                s = parseFloat(bastet("ي", 1, -2, 1, "ARABIC")) + parseFloat(bastet("ه", 1, -2, 1, "ARABIC"));
                                break;
                            case 5:
                                s = 1;
                                break;
                            case 6:
                                s = parseFloat(asgar("ي", 7)) + parseFloat(asgar("ه", 7));
                                break;
                            case 7:
                            case 10:
                                s = 13;
                                break;
                            case 8:
                                s = parseFloat(abjad("يا", 7, 1)) + parseFloat(abjad("ها", 7, 1));
                                break;
                            case 9:
                                s = parseFloat(bastet("ي", 1, -8, 1, "ARABIC")) + parseFloat(bastet("ه", 1, -8, 1, "ARABIC"));
                                break;
                            case 11:
                                s = parseFloat(asgar("ي", 12)) + parseFloat(asgar("ه", 12));
                                break;
                            case 12:
                            case 15:
                                s = 13;
                                break;
                            case 13:
                                s = parseFloat(abjad("يا", 12, 1)) + parseFloat(abjad("ها", 12, 1));
                                break;
                            case 14:
                                s = parseFloat(bastet("ي", 1, -13, 1, "ARABIC")) + parseFloat(bastet("ه", 1, -13, 1, "ARABIC"));
                                break;
                            default:
                                err = 1;
                        }
                        break;
                    case "ب":
                    case "ﭖ":
                        switch (tablo) {
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 2;
                                break;
                            case 2:
                                s = parseFloat(abjad("با", 1, 1));
                                break;
                            case 3:
                                s = parseFloat(bastet(choosen, 1, -2, 1, "ARABIC"));
                                break;
                            case 5:
                                s = 1;
                                break;
                            case 6:
                                s = parseFloat(asgar(choosen, 7));
                                break;
                            case 7:
                            case 10:
                                s = 9;
                                break;
                            case 8:
                                s = parseFloat(abjad("با", 7, 1));
                                break;
                            case 9:
                                s = parseFloat(bastet(choosen, 1, -8, 1, "ARABIC"));
                                break;
                            case 11:
                                s = parseFloat(asgar(choosen, 12));
                                break;
                            case 12:
                            case 15:
                                s = 9;
                                break;
                            case 13:
                                s = parseFloat(abjad("با", 12, 1));
                                break;
                            case 14:
                                s = parseFloat(bastet(choosen, 1, -13, 1, "ARABIC"));
                                break;
                            default:
                                err = 1;
                        }
                        break;
                    case "ج":
                    case "ﭺ":
                        switch (tablo) {
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 3;
                                break;
                            case 2:
                                s = parseFloat(abjad("جيم", 1, 1));
                                break;
                            case 3:
                                s = parseFloat(bastet(choosen, 1, -2, 1, "ARABIC"));
                                break;
                            case 5:
                                s = 1;
                                break;
                            case 6:
                                s = parseFloat(asgar(choosen, 7));
                                break;
                            case 7:
                            case 10:
                                s = 19;
                                break;
                            case 8:
                                s = parseFloat(abjad("جيم", 7, 1));
                                break;
                            case 9:
                                s = parseFloat(bastet(choosen, 1, -8, 1, "ARABIC"));
                                break;
                            case 11:
                                s = parseFloat(asgar(choosen, 12));
                                break;
                            case 12:
                            case 15:
                                s = 100;
                                break;
                            case 13:
                                s = parseFloat(abjad("جيم", 12, 1));
                                break;
                            case 14:
                                s = parseFloat(bastet(choosen, 1, -13, 1, "ARABIC"));
                                break;
                            default:
                                err = 1;
                        }
                        break;
                    case "د":
                        switch (tablo) {
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 4;
                                break;
                            case 2:
                                s = parseFloat(abjad("دال", 1, 1));
                                break;
                            case 3:
                                s = parseFloat(bastet(choosen, 1, -2, 1, "ARABIC"));
                                break;
                            case 5:
                                s = 1;
                                break;
                            case 6:
                                s = parseFloat(asgar(choosen, 7));
                                break;
                            case 7:
                            case 10:
                                s = 16;
                                break;
                            case 8:
                                s = parseFloat(abjad("دال", 7, 1));
                                break;
                            case 9:
                                s = parseFloat(bastet(choosen, 1, -8, 1, "ARABIC"));
                                break;
                            case 11:
                                s = parseFloat(asgar(choosen, 12));
                                break;
                            case 12:
                            case 15:
                                s = 70;
                                break;
                            case 13:
                                s = parseFloat(abjad("دال", 12, 1));
                                break;
                            case 14:
                                s = parseFloat(bastet(choosen, 1, -13, 1, "ARABIC"));
                                break;
                            default:
                                err = 1;
                        }
                        break;
                    case "ه":
                    case "ة":
                        switch (tablo) {
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 5;
                                break;
                            case 2:
                                s = parseFloat(abjad("ها", 1, 1));
                                break;
                            case 3:
                                s = parseFloat(bastet(choosen, 1, -2, 1, "ARABIC"));
                                break;
                            case 5:
                                s = 1;
                                break;
                            case 6:
                                s = parseFloat(asgar(choosen, 7));
                                break;
                            case 7:
                            case 10:
                                s = 7;
                                break;
                            case 8:
                                s = parseFloat(abjad("ها", 7, 1));
                                break;
                            case 9:
                                s = parseFloat(bastet(choosen, 1, -8, 1, "ARABIC"));
                                break;
                            case 11:
                                s = parseFloat(asgar(choosen, 12));
                                break;
                            case 12:
                            case 15:
                                s = 7;
                                break;
                            case 13:
                                s = parseFloat(abjad("ها", 12, 1));
                                break;
                            case 14:
                                s = parseFloat(bastet(choosen, 1, -13, 1, "ARABIC"));
                                break;
                            default:
                                err = 1;
                        }
                        break;
                    case "و":
                        switch (tablo) {
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 6;
                                break;
                            case 2:
                                s = parseFloat(abjad("واو", 1, 1));
                                break;
                            case 3:
                                s = parseFloat(bastet(choosen, 1, -2, 1, "ARABIC"));
                                break;
                            case 5:
                                s = 1;
                                break;
                            case 6:
                                s = parseFloat(asgar(choosen, 7));
                                break;
                            case 7:
                            case 10:
                                s = 5;
                                break;
                            case 8:
                                s = parseFloat(abjad("واو", 7, 1));
                                break;
                            case 9:
                                s = parseFloat(bastet(choosen, 1, -8, 1, "ARABIC"));
                                break;
                            case 11:
                                s = parseFloat(asgar(choosen, 12));
                                break;
                            case 12:
                            case 15:
                                s = 5;
                                break;
                            case 13:
                                s = parseFloat(abjad("واو", 12, 1));
                                break;
                            case 14:
                                s = parseFloat(bastet(choosen, 1, -13, 1, "ARABIC"));
                                break;
                            default:
                                err = 1;
                        }
                        break;
                    case "ز":
                    case "ﮊ":
                        switch (tablo) {
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 7;
                                break;
                            case 2:
                                s = parseFloat(abjad("زا", 1, 1));
                                break;
                            case 3:
                                s = parseFloat(bastet(choosen, 1, -2, 1, "ARABIC"));
                                break;
                            case 5:
                                s = 1;
                                break;
                            case 6:
                                s = parseFloat(asgar(choosen, 7));
                                break;
                            case 7:
                            case 10:
                                s = 25;
                                break;
                            case 8:
                                s = parseFloat(abjad("زا", 7, 1));
                                break;
                            case 9:
                                s = parseFloat(bastet(choosen, 1, -8, 1, "ARABIC"));
                                break;
                            case 11:
                                s = parseFloat(asgar(choosen, 12));
                                break;
                            case 12:
                            case 15:
                                s = 600;
                                break;
                            case 13:
                                s = parseFloat(abjad("زا", 12, 1));
                                break;
                            case 14:
                                s = parseFloat(bastet(choosen, 1, -13, 1, "ARABIC"));
                                break;
                            default:
                                err = 1;
                        }
                        break;
                    case "ح":
                        switch (tablo) {
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 8;
                                break;
                            case 2:
                                s = parseFloat(abjad("حا", 1, 1));
                                break;
                            case 3:
                                s = parseFloat(bastet(choosen, 1, -2, 1, "ARABIC"));
                                break;
                            case 5:
                                s = 1;
                                break;
                            case 6:
                                s = parseFloat(asgar(choosen, 7));
                                break;
                            case 7:
                            case 10:
                                s = 18;
                                break;
                            case 8:
                                s = parseFloat(abjad("حا", 7, 1));
                                break;
                            case 9:
                                s = parseFloat(bastet(choosen, 1, -8, 1, "ARABIC"));
                                break;
                            case 11:
                                s = parseFloat(asgar(choosen, 12));
                                break;
                            case 12:
                            case 15:
                                s = 90;
                                break;
                            case 13:
                                s = parseFloat(abjad("حا", 12, 1));
                                break;
                            case 14:
                                s = parseFloat(bastet(choosen, 1, -13, 1, "ARABIC"));
                                break;
                            default:
                                err = 1;
                        }
                        break;
                    case "ط":
                        switch (tablo) {
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 9;
                                break;
                            case 2:
                                s = parseFloat(abjad("طا", 1, 1));
                                break;
                            case 3:
                                s = parseFloat(bastet(choosen, 1, -2, 1, "ARABIC"));
                                break;
                            case 5:
                                s = 1;
                                break;
                            case 6:
                                s = parseFloat(asgar(choosen, 7));
                                break;
                            case 7:
                            case 10:
                                s = 26;
                                break;
                            case 8:
                                s = parseFloat(abjad("طا", 7, 1));
                                break;
                            case 9:
                                s = parseFloat(bastet(choosen, 1, -8, 1, "ARABIC"));
                                break;
                            case 11:
                                s = parseFloat(asgar(choosen, 12));
                                break;
                            case 12:
                            case 15:
                                s = 800;
                                break;
                            case 13:
                                s = parseFloat(abjad("طا", 12, 1));
                                break;
                            case 14:
                                s = parseFloat(bastet(choosen, 1, -13, 1, "ARABIC"));
                                break;
                            default:
                                err = 1;
                        }
                        break;
                    case "ی":
                    case "ي":
                        switch (tablo) {
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 10;
                                break;
                            case 2:
                                s = parseFloat(abjad("يا", 1, 1));
                                break;
                            case 3:
                                s = parseFloat(bastet(choosen, 1, -2, 1, "ARABIC"));
                                break;
                            case 5:
                                s = 1;
                                break;
                            case 6:
                                s = parseFloat(asgar(choosen, 7));
                                break;
                            case 7:
                            case 10:
                                s = 6;
                                break;
                            case 8:
                                s = parseFloat(abjad("يا", 7, 1));
                                break;
                            case 9:
                                s = parseFloat(bastet(choosen, 1, -8, 1, "ARABIC"));
                                break;
                            case 11:
                                s = parseFloat(asgar(choosen, 12));
                                break;
                            case 12:
                            case 15:
                                s = 6;
                                break;
                            case 13:
                                s = parseFloat(abjad("يا", 12, 1));
                                break;
                            case 14:
                                s = parseFloat(bastet(choosen, 1, -13, 1, "ARABIC"));
                                break;
                            default:
                                err = 1;
                        }
                        break;
                    case "ك":
                    case "ﮒ":
                    case "ک":
                        switch (tablo) {
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 20;
                                break;
                            case 2:
                                s = parseFloat(abjad("كاف", 1, 1));
                                break;
                            case 3:
                                s = parseFloat(bastet(choosen, 1, -2, 1, "ARABIC"));
                                break;
                            case 5:
                                s = 1;
                                break;
                            case 6:
                                s = parseFloat(asgar(choosen, 7));
                                break;
                            case 7:
                            case 10:
                                s = 11;
                                break;
                            case 8:
                                s = parseFloat(abjad("كاف", 7, 1));
                                break;
                            case 9:
                                s = parseFloat(bastet(choosen, 1, -8, 1, "ARABIC"));
                                break;
                            case 11:
                                s = parseFloat(asgar(choosen, 12));
                                break;
                            case 12:
                            case 15:
                                s = 20;
                                break;
                            case 13:
                                s = parseFloat(abjad("كاف", 12, 1));
                                break;
                            case 14:
                                s = parseFloat(bastet(choosen, 1, -13, 1, "ARABIC"));
                                break;
                            default:
                                err = 1;
                        }
                        break;
                    case "ل":
                        switch (tablo) {
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 30;
                                break;
                            case 2:
                                s = parseFloat(abjad("لام", 1, 1));
                                break;
                            case 3:
                                s = parseFloat(bastet(choosen, 1, -2, 1, "ARABIC"));
                                break;
                            case 5:
                                s = 1;
                                break;
                            case 6:
                                s = parseFloat(asgar(choosen, 7));
                                break;
                            case 7:
                            case 10:
                                s = 2;
                                break;
                            case 8:
                                s = parseFloat(abjad("لام", 7, 1));
                                break;
                            case 9:
                                s = parseFloat(bastet(choosen, 1, -8, 1, "ARABIC"));
                                break;
                            case 11:
                                s = parseFloat(asgar(choosen, 12));
                                break;
                            case 12:
                            case 15:
                                s = 2;
                                break;
                            case 13:
                                s = parseFloat(abjad("لام", 12, 1));
                                break;
                            case 14:
                                s = parseFloat(bastet(choosen, 1, -13, 1, "ARABIC"));
                                break;
                            default:
                                err = 1;
                        }
                        break;
                    case "ﻻ":
                        switch (tablo) {
                            case 0:
                                s = parseFloat(asgar("ا")) + parseFloat(asgar("ل"));
                                break;
                            case 1:
                            case 4:
                                s = 31;
                                break;
                            case 2:
                                s = parseFloat(abjad("لام الف", 1, 1));
                                break;
                            case 3:
                                s = parseFloat(bastet("لا", 1, -2, 1, "ARABIC"));
                                break;
                            case 5:
                                s = 2;
                                break;
                            case 6:
                                s = parseFloat(asgar(choosen, 7));
                                break;
                            case 7:
                            case 10:
                                s = 3;
                                break;
                            case 8:
                                s = parseFloat(abjad("لام الف", 7, 1));
                                break;
                            case 9:
                                s = parseFloat(bastet(choosen, 1, -8, 1, "ARABIC"));
                                break;
                            case 11:
                                s = parseFloat(asgar(choosen, 12));
                                break;
                            case 12:
                            case 15:
                                s = 3;
                                break;
                            case 13:
                                s = parseFloat(abjad("لام الف", 12, 1));
                                break;
                            case 14:
                                s = parseFloat(bastet(choosen, 1, -13, 1, "ARABIC"));
                                break;
                            default:
                                err = 1;
                        }
                        break;
                    case "م":
                        switch (tablo) {
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 40;
                                break;
                            case 2:
                                s = parseFloat(abjad("ميم", 1, 1));
                                break;
                            case 3:
                                s = parseFloat(bastet(choosen, 1, -2, 1, "ARABIC"));
                                break;
                            case 5:
                                s = 1;
                                break;
                            case 6:
                                s = parseFloat(asgar(choosen, 7));
                                break;
                            case 7:
                            case 10:
                                s = 4;
                                break;
                            case 8:
                                s = parseFloat(abjad("ميم", 7, 1));
                                break;
                            case 9:
                                s = parseFloat(bastet(choosen, 1, -8, 1, "ARABIC"));
                                break;
                            case 11:
                                s = parseFloat(asgar(choosen, 12));
                                break;
                            case 12:
                            case 15:
                                s = 4;
                                break;
                            case 13:
                                s = parseFloat(abjad("ميم", 12, 1));
                                break;
                            case 14:
                                s = parseFloat(bastet(choosen, 1, -13, 1, "ARABIC"));
                                break;
                            default:
                                err = 1;
                        }
                        break;
                    case "ن":
                    case "ﯓ":
                        switch (tablo) {
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 50;
                                break;
                            case 2:
                                s = parseFloat(abjad("نون", 1, 1));
                                break;
                            case 3:
                                s = parseFloat(bastet(choosen, 1, -2, 1, "ARABIC"));
                                break;
                            case 5:
                                s = 1;
                                break;
                            case 6:
                                s = parseFloat(asgar(choosen, 7));
                                break;
                            case 7:
                            case 10:
                                s = 3;
                                break;
                            case 8:
                                s = parseFloat(abjad("نون", 7, 1));
                                break;
                            case 9:
                                s = parseFloat(bastet(choosen, 1, -8, 1, "ARABIC"));
                                break;
                            case 11:
                                s = parseFloat(asgar(choosen, 12));
                                break;
                            case 12:
                            case 15:
                                s = 3;
                                break;
                            case 13:
                                s = parseFloat(abjad("نون", 12, 1));
                                break;
                            case 14:
                                s = parseFloat(bastet(choosen, 1, -13, 1, "ARABIC"));
                                break;
                            default:
                                err = 1;
                        }
                        break;
                    case "س":
                        switch (tablo) {
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 60;
                                break;
                            case 2:
                                s = parseFloat(abjad("سين", 1, 1));
                                break;
                            case 3:
                                s = parseFloat(bastet(choosen, 1, -2, 1, "ARABIC"));
                                break;
                            case 5:
                                s = 1;
                                break;
                            case 6:
                                s = parseFloat(asgar(choosen, 7));
                                break;
                            case 7:
                            case 10:
                                s = 15;
                                break;
                            case 8:
                                s = parseFloat(abjad("سين", 7, 1));
                                break;
                            case 9:
                                s = parseFloat(bastet(choosen, 1, -8, 1, "ARABIC"));
                                break;
                            case 11:
                                s = parseFloat(asgar(choosen, 12));
                                break;
                            case 12:
                            case 15:
                                s = 60;
                                break;
                            case 13:
                                s = parseFloat(abjad("سين", 12, 1));
                                break;
                            case 14:
                                s = parseFloat(bastet(choosen, 1, -13, 1, "ARABIC"));
                                break;
                            default:
                                err = 1;
                        }
                        break;
                    case "ع":
                        switch (tablo) {
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 70;
                                break;
                            case 2:
                                s = parseFloat(abjad("عين", 1, 1));
                                break;
                            case 3:
                                s = parseFloat(bastet(choosen, 1, -2, 1, "ARABIC"));
                                break;
                            case 5:
                                s = 1;
                                break;
                            case 6:
                                s = parseFloat(asgar(choosen, 7));
                                break;
                            case 7:
                            case 10:
                                s = 12;
                                break;
                            case 8:
                                s = parseFloat(abjad("عين", 7, 1));
                                break;
                            case 9:
                                s = parseFloat(bastet(choosen, 1, -8, 1, "ARABIC"));
                                break;
                            case 11:
                                s = parseFloat(asgar(choosen, 12));
                                break;
                            case 12:
                            case 15:
                                s = 30;
                                break;
                            case 13:
                                s = parseFloat(abjad("عين", 12, 1));
                                break;
                            case 14:
                                s = parseFloat(bastet(choosen, 1, -13, 1, "ARABIC"));
                                break;
                            default:
                                err = 1;
                        }
                        break;
                    case "ف":
                        switch (tablo) {
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 80;
                                break;
                            case 2:
                                s = parseFloat(abjad("فا", 1, 1));
                                break;
                            case 3:
                                s = parseFloat(bastet(choosen, 1, -2, 1, "ARABIC"));
                                break;
                            case 5:
                                s = 1;
                                break;
                            case 6:
                                s = parseFloat(asgar(choosen, 7));
                                break;
                            case 7:
                            case 10:
                                s = 13;
                                break;
                            case 8:
                                s = parseFloat(abjad("فا", 7, 1));
                                break;
                            case 9:
                                s = parseFloat(bastet(choosen, 1, -8, 1, "ARABIC"));
                                break;
                            case 11:
                                s = parseFloat(asgar(choosen, 12));
                                break;
                            case 12:
                            case 15:
                                s = 40;
                                break;
                            case 13:
                                s = parseFloat(abjad("فا", 12, 1));
                                break;
                            case 14:
                                s = parseFloat(bastet(choosen, 1, -13, 1, "ARABIC"));
                                break;
                            default:
                                err = 1;
                        }
                        break;
                    case "ص":
                        switch (tablo) {
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 90;
                                break;
                            case 2:
                                s = parseFloat(abjad("صاد", 1, 1));
                                break;
                            case 3:
                                s = parseFloat(bastet(choosen, 1, -2, 1, "ARABIC"));
                                break;
                            case 5:
                                s = 1;
                                break;
                            case 6:
                                s = parseFloat(asgar(choosen, 7));
                                break;
                            case 7:
                            case 10:
                                s = 22;
                                break;
                            case 8:
                                s = parseFloat(abjad("صاد", 7, 1));
                                break;
                            case 9:
                                s = parseFloat(bastet(choosen, 1, -8, 1, "ARABIC"));
                                break;
                            case 11:
                                s = parseFloat(asgar(choosen, 12));
                                break;
                            case 12:
                            case 15:
                                s = 400;
                                break;
                            case 13:
                                s = parseFloat(abjad("صاد", 12, 1));
                                break;
                            case 14:
                                s = parseFloat(bastet(choosen, 1, -13, 1, "ARABIC"));
                                break;
                            default:
                                err = 1;
                        }
                        break;
                    case "ق":
                        switch (tablo) {
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 100;
                                break;
                            case 2:
                                s = parseFloat(abjad("قاف", 1, 1));
                                break;
                            case 3:
                                s = parseFloat(bastet(choosen, 1, -2, 1, "ARABIC"));
                                break;
                            case 5:
                                s = 1;
                                break;
                            case 6:
                                s = parseFloat(asgar(choosen, 7));
                                break;
                            case 7:
                            case 10:
                                s = 14;
                                break;
                            case 8:
                                s = parseFloat(abjad("قاف", 7, 1));
                                break;
                            case 9:
                                s = parseFloat(bastet(choosen, 1, -8, 1, "ARABIC"));
                                break;
                            case 11:
                                s = parseFloat(asgar(choosen, 12));
                                break;
                            case 12:
                            case 15:
                                s = 50;
                                break;
                            case 13:
                                s = parseFloat(abjad("قاف", 12, 1));
                                break;
                            case 14:
                                s = parseFloat(bastet(choosen, 1, -13, 1, "ARABIC"));
                                break;
                            default:
                                err = 1;
                        }
                        break;
                    case "ر":
                        switch (tablo) {
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 200;
                                break;
                            case 2:
                                s = parseFloat(abjad("را", 1, 1));
                                break;
                            case 3:
                                s = parseFloat(bastet(choosen, 1, -2, 1, "ARABIC"));
                                break;
                            case 5:
                                s = 1;
                                break;
                            case 6:
                                s = parseFloat(asgar(choosen, 7));
                                break;
                            case 7:
                            case 10:
                                s = 8;
                                break;
                            case 8:
                                s = parseFloat(abjad("را", 7, 1));
                                break;
                            case 9:
                                s = parseFloat(bastet(choosen, 1, -8, 1, "ARABIC"));
                                break;
                            case 11:
                                s = parseFloat(asgar(choosen, 12));
                                break;
                            case 12:
                            case 15:
                                s = 8;
                                break;
                            case 13:
                                s = parseFloat(abjad("را", 12, 1));
                                break;
                            case 14:
                                s = parseFloat(bastet(choosen, 1, -13, 1, "ARABIC"));
                                break;
                            default:
                                err = 1;
                        }
                        break;
                    case "ش":
                        switch (tablo) {
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 300;
                                break;
                            case 2:
                                s = parseFloat(abjad("شين", 1, 1));
                                break;
                            case 3:
                                s = parseFloat(bastet(choosen, 1, -2, 1, "ARABIC"));
                                break;
                            case 5:
                                s = 1;
                                break;
                            case 6:
                                s = parseFloat(asgar(choosen, 7));
                                break;
                            case 7:
                            case 10:
                                s = 21;
                                break;
                            case 8:
                                s = parseFloat(abjad("شين", 7, 1));
                                break;
                            case 9:
                                s = parseFloat(bastet(choosen, 1, -8, 1, "ARABIC"));
                                break;
                            case 11:
                                s = parseFloat(asgar(choosen, 12));
                                break;
                            case 12:
                            case 15:
                                s = 300;
                                break;
                            case 13:
                                s = parseFloat(abjad("شين", 12, 1));
                                break;
                            case 14:
                                s = parseFloat(bastet(choosen, 1, -13, 1, "ARABIC"));
                                break;
                            default:
                                err = 1;
                        }
                        break;
                    case "ت":
                        switch (tablo) {
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 400;
                                break;
                            case 2:
                                s = parseFloat(abjad("تا", 1, 1));
                                break;
                            case 3:
                                s = parseFloat(bastet(choosen, 1, -2, 1, "ARABIC"));
                                break;
                            case 5:
                                s = 1;
                                break;
                            case 6:
                                s = parseFloat(asgar(choosen, 7));
                                break;
                            case 7:
                            case 10:
                                s = 10;
                                break;
                            case 8:
                                s = parseFloat(abjad("تا", 7, 1));
                                break;
                            case 9:
                                s = parseFloat(bastet(choosen, 1, -8, 1, "ARABIC"));
                                break;
                            case 11:
                                s = parseFloat(asgar(choosen, 12));
                                break;
                            case 12:
                            case 15:
                                s = 10;
                                break;
                            case 13:
                                s = parseFloat(abjad("تا", 12, 1));
                                break;
                            case 14:
                                s = parseFloat(bastet(choosen, 1, -13, 1, "ARABIC"));
                                break;
                            default:
                                err = 1;
                        }
                        break;
                    case "ث":
                        switch (tablo) {
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 500;
                                break;
                            case 2:
                                s = parseFloat(abjad("ثا", 1, 1));
                                break;
                            case 3:
                                s = parseFloat(bastet(choosen, 1, -2, 1, "ARABIC"));
                                break;
                            case 5:
                                s = 1;
                                break;
                            case 6:
                                s = parseFloat(asgar(choosen, 7));
                                break;
                            case 7:
                            case 10:
                                s = 25;
                                break;
                            case 8:
                                s = parseFloat(abjad("ثا", 7, 1));
                                break;
                            case 9:
                                s = parseFloat(bastet(choosen, 1, -8, 1, "ARABIC"));
                                break;
                            case 11:
                                s = parseFloat(asgar(choosen, 12));
                                break;
                            case 12:
                            case 15:
                                s = 700;
                                break;
                            case 13:
                                s = parseFloat(abjad("ثا", 12, 1));
                                break;
                            case 14:
                                s = parseFloat(bastet(choosen, 1, -13, 1, "ARABIC"));
                                break;
                            default:
                                err = 1;
                        }
                        break;
                    case "خ":
                        switch (tablo) {
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 600;
                                break;
                            case 2:
                                s = parseFloat(abjad("خا", 1, 1));
                                break;
                            case 3:
                                s = parseFloat(bastet(choosen, 1, -2, 1, "ARABIC"));
                                break;
                            case 5:
                                s = 1;
                                break;
                            case 6:
                                s = parseFloat(asgar(choosen, 7));
                                break;
                            case 7:
                            case 10:
                                s = 20;
                                break;
                            case 8:
                                s = parseFloat(abjad("خا", 7, 1));
                                break;
                            case 9:
                                s = parseFloat(bastet(choosen, 1, -8, 1, "ARABIC"));
                                break;
                            case 11:
                                s = parseFloat(asgar(choosen, 12));
                                break;
                            case 12:
                            case 15:
                                s = 200;
                                break;
                            case 13:
                                s = parseFloat(abjad("خا", 12, 1));
                                break;
                            case 14:
                                s = parseFloat(bastet(choosen, 1, -13, 1, "ARABIC"));
                                break;
                            default:
                                err = 1;
                        }
                        break;
                    case "ذ":
                        switch (tablo) {
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 700;
                                break;
                            case 2:
                                s = parseFloat(abjad("ذال", 1, 1));
                                break;
                            case 3:
                                s = parseFloat(bastet(choosen, 1, -2, 1, "ARABIC"));
                                break;
                            case 5:
                                s = 1;
                                break;
                            case 6:
                                s = parseFloat(asgar(choosen, 7));
                                break;
                            case 7:
                            case 10:
                                s = 17;
                                break;
                            case 8:
                                s = parseFloat(abjad("ذال", 7, 1));
                                break;
                            case 9:
                                s = parseFloat(bastet(choosen, 1, -8, 1, "ARABIC"));
                                break;
                            case 11:
                                s = parseFloat(asgar(choosen, 12));
                                break;
                            case 12:
                            case 15:
                                s = 80;
                                break;
                            case 13:
                                s = parseFloat(abjad("ذال", 12, 1));
                                break;
                            case 14:
                                s = parseFloat(bastet(choosen, 1, -13, 1, "ARABIC"));
                                break;
                            default:
                                err = 1;
                        }
                        break;
                    case "ض":
                        switch (tablo) {
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 800;
                                break;
                            case 2:
                                s = parseFloat(abjad("ضاد", 1, 1));
                                break;
                            case 3:
                                s = parseFloat(bastet(choosen, 1, -2, 1, "ARABIC"));
                                break;
                            case 5:
                                s = 1;
                                break;
                            case 6:
                                s = parseFloat(asgar(choosen, 7));
                                break;
                            case 7:
                            case 10:
                                s = 23;
                                break;
                            case 8:
                                s = parseFloat(abjad("ضاد", 7, 1));
                                break;
                            case 9:
                                s = parseFloat(bastet(choosen, 1, -8, 1, "ARABIC"));
                                break;
                            case 11:
                                s = parseFloat(asgar(choosen, 12));
                                break;
                            case 12:
                            case 15:
                                s = 500;
                                break;
                            case 13:
                                s = parseFloat(abjad("ضاد", 12, 1));
                                break;
                            case 14:
                                s = parseFloat(bastet(choosen, 1, -13, 1, "ARABIC"));
                                break;
                            default:
                                err = 1;
                        }
                        break;
                    case "ظ":
                        switch (tablo) {
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 900;
                                break;
                            case 2:
                                s = parseFloat(abjad("ظا", 1, 1));
                                break;
                            case 3:
                                s = parseFloat(bastet(choosen, 1, -2, 1, "ARABIC"));
                                break;
                            case 5:
                                s = 1;
                                break;
                            case 6:
                                s = parseFloat(asgar(choosen, 7));
                                break;
                            case 7:
                            case 10:
                                s = 28;
                                break;
                            case 8:
                                s = parseFloat(abjad("ظا", 7, 1));
                                break;
                            case 9:
                                s = parseFloat(bastet(choosen, 1, -8, 1, "ARABIC"));
                                break;
                            case 11:
                                s = parseFloat(asgar(choosen, 12));
                                break;
                            case 12:
                            case 15:
                                s = 1000;
                                break;
                            case 13:
                                s = parseFloat(abjad("ظا", 12, 1));
                                break;
                            case 14:
                                s = parseFloat(bastet(choosen, 1, -13, 1, "ARABIC"));
                                break;
                            default:
                                err = 1;
                        }
                        break;
                    case "غ":
                        switch (tablo) {
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 1000;
                                break;
                            case 2:
                                s = parseFloat(abjad("غين", 1, 1));
                                break;
                            case 3:
                                s = parseFloat(bastet(choosen, 1, -2, 1, "ARABIC"));
                                break;
                            case 5:
                                s = 1;
                                break;
                            case 6:
                                s = parseFloat(asgar(choosen, 7));
                                break;
                            case 7:
                            case 10:
                                s = 27;
                                break;
                            case 8:
                                s = parseFloat(abjad("غين", 7, 1));
                                break;
                            case 9:
                                s = parseFloat(bastet(choosen, 1, -8, 1, "ARABIC"));
                                break;
                            case 11:
                                s = parseFloat(asgar(choosen, 12));
                                break;
                            case 12:
                            case 15:
                                s = 900;
                                break;
                            case 13:
                                s = parseFloat(abjad("غين", 12, 1));
                                break;
                            case 14:
                                s = parseFloat(bastet(choosen, 1, -13, 1, "ARABIC"));
                                break;
                            default:
                                err = 1;
                        }
                        break;
                    case "א":
                        switch (tablo) {
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 1;
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
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 2;
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
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 3;
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
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 4;
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
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 5;
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
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 6;
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
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 7;
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
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 8;
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
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 9;
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
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 10;
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
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 20;
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
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 30;
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
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 40;
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
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 50;
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
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 60;
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
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 70;
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
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 80;
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
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 90;
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
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 100;
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
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 200;
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
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 300;
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
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 400;
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
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 500;
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
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 600;
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
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 700;
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
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 800;
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
                            case 0:
                                s = parseFloat(asgar(choosen, 1));
                                break;
                            case 1:
                            case 4:
                                s = 900;
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
                        break; default:
                        s = 0;
                        n = n + 1;
                        switch (choosen) {
                            case "ّ":
                                if (shadda == 1 && detail == undefined || shadda == 1 && detail !== undefined) {
                                    s = 0;
                                } else if (shadda > 2 && detail == undefined || shadda > 2 && detail !== undefined) {
                                    err = 3;
                                } else if (shadda == 2 && detail == undefined || shadda == 2 && detail !== undefined) {
                                    c = 1;
                                    do {
                                        choosen = metin[counter - 1 - c];
                                        s = parseFloat(abjad(choosen, tablo, 1));
                                        c = c + 1;
                                        shaddie = shaddie + 1;
                                    } while (saf(choosen, "") == "");
                                } else if (shadda == undefined && detail == undefined || shadda == undefined && detail !== undefined) {
                                    err = 3;
                                }
                                hrk = hrk + 1;
                                break;
                            case "ٰ":
                                c = 1;
                                do {
                                    choosen = metin[counter - 1 - c];
                                    if (choosen == "ـ") {
                                        s = parseFloat(abjad("ا", tablo, 1));
                                    }
                                    c = c + 1;
                                } while (saf(choosen, "") == "" || choosen !== "ـ");
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
                                hrk = hrk + 1;
                                break;
                            default:
                                nitem = nitem + choosen;
                                err = 2;
                        }
                }

                if (detail == 1) {
                    switch (saf(choosen, "")) {
                        case " ":
                            break;
                        case "ا":
                            sn = sn + "ا=" + s + " / ";
                            break;
                        case choosen:
                            sn = sn + "" + choosen + "=" + s + " / ";
                            break;
                    }
                } else {
                    sm = sm + s;
                }
            }

            switch (tablo) {
                case 4:
                case 10:
                case 15:
                    if (detail == 1 && shadda == undefined || detail == 1 && shadda !== undefined) {
                        sn = sn + " \+" + ((metin.length - n) + shaddie).toString() + " ";
                    } else {
                        sm = sm + ((metin.length - n) + shaddie);
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
    if(klmmetin !== undefined) {
      var calculation = "";
      var content = "";
      var word = "";
      var klmchoosen;
      for (counter = 0; counter < klmmetin.length; counter++) {
          klmchoosen = klmmetin[counter];
          word = word + klmchoosen;
          switch (klmchoosen) {
            case " ":
            word = word.substr(0, word.length - 1);
            calculation = abjad(word, tablow, shaddaw, detailw).toString();
            content += word + altayaz(calculation) + " ";
            word = "";
            calculation = "";
            break;
            default:
            if (counter == klmmetin.length - 1) {
                calculation = abjad(word, tablow, shaddaw, detailw).toString();
                content += word + altayaz(calculation) + "";
                word = "";
                calculation = "";
          }
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
                    invertablo = (-1 * tablo) - 1;
                    baster = parseFloat(abjad(metin, invertablo, shadda));
                    break;
            }
    }
    for (hm = 0; hm < mt; hm++) {
        ns = "";
        baster = baster.toString();
        for (bc = 0; bc < baster.length; bc++) {
            turn = baster.length - bc - 1;
            choosen = parseFloat(baster[turn]);
            switch (language.toUpperCase()) {
                case "ARABIC":
                    switch (bc) {
                        case 0:
                            switch (choosen) {
                                case 1:
                                    ns = ns + " احد";
                                    break;
                                case 2:
                                    ns = ns + " اثنان";
                                    break;
                                case 3:
                                    ns = ns + " ثلاثة";
                                    break;
                                case 4:
                                    ns = ns + " أربعة";
                                    break;
                                case 5:
                                    ns = ns + " خمسة";
                                    break;
                                case 6:
                                    ns = ns + " ستة";
                                    break;
                                case 7:
                                    ns = ns + " سبعة";
                                    break;
                                case 8:
                                    ns = ns + " ثمانية";
                                    break;
                                case 9:
                                    ns = ns + " تسعة";
                                    break;
                            }
                            break;
                        case 1:
                            switch (choosen) {
                                case 1:
                                    ns = ns + " عشرة";
                                    break;
                                case 2:
                                    ns = ns + " عشرين";
                                    break;
                                case 3:
                                    ns = ns + " ثلاثين";
                                    break;
                                case 4:
                                    ns = ns + " أربعين";
                                    break;
                                case 5:
                                    ns = ns + " خمسين";
                                    break;
                                case 6:
                                    ns = ns + " ستين";
                                    break;
                                case 7:
                                    ns = ns + " سبعين";
                                    break;
                                case 8:
                                    ns = ns + " ثمانين";
                                    break;
                                case 9:
                                    ns = ns + " تسعين";
                                    break;
                            }
                            break;
                        case 2:
                            switch (choosen) {
                                case 1:
                                    ns = ns + " مائة";
                                    break;
                                case 2:
                                    ns = ns + " مائتان";
                                    break;
                                case 3:
                                    ns = ns + " ثلثمائة";
                                    break;
                                case 4:
                                    ns = ns + " أربعمائة";
                                    break;
                                case 5:
                                    ns = ns + " خمسمائة";
                                    break;
                                case 6:
                                    ns = ns + " ستمائة";
                                    break;
                                case 7:
                                    ns = ns + " سبعمائة";
                                    break;
                                case 8:
                                    ns = ns + " ثمانمائة";
                                    break;
                                case 9:
                                    ns = ns + " تسعمائة";
                                    break;
                            }
                            break;
                        case 3:
                            switch (choosen) {
                                case 1:
                                    ns = ns + " ألف";
                                    break;
                                case 2:
                                    ns = ns + " ألفان";
                                    break;
                                case 3:
                                    ns = ns + " ثلاثة آلاف";
                                    break;
                                case 4:
                                    ns = ns + " أربعة آلاف";
                                    break;
                                case 5:
                                    ns = ns + " خمسة آلاف";
                                    break;
                                case 6:
                                    ns = ns + " ستة آلاف";
                                    break;
                                case 7:
                                    ns = ns + " سبعة آلاف";
                                    break;
                                case 8:
                                    ns = ns + " ثمانية آلاف";
                                    break;
                                case 9:
                                    ns = ns + " تسعة آلاف";
                                    break;
                            }
                            break;
                        case 4:
                            switch (choosen) {
                                case 1:
                                    ns = ns + " عشرة آلاف";
                                    break;
                                case 2:
                                    ns = ns + " عشرين ألفا";
                                    break;
                                case 3:
                                    ns = ns + " ثلاثون ألفا";
                                    break;
                                case 4:
                                    ns = ns + " أربعين ألفا";
                                    break;
                                case 5:
                                    ns = ns + " خمسون ألفا";
                                    break;
                                case 6:
                                    ns = ns + " ستين ألفا";
                                    break;
                                case 7:
                                    ns = ns + " سبعين ألفا";
                                    break;
                                case 8:
                                    ns = ns + " ثمانين ألفا";
                                    break;
                                case 9:
                                    ns = ns + " تسعين ألفا";
                                    break;
                            }
                            break;
                        case 5:
                            switch (choosen) {
                                case 1:
                                    ns = ns + " مائة ألف";
                                    break;
                                case 2:
                                    ns = ns + " مائتان ألف";
                                    break;
                                case 3:
                                    ns = ns + " ثلاثمائة ألف";
                                    break;
                                case 4:
                                    ns = ns + " أربعمائة ألف";
                                    break;
                                case 5:
                                    ns = ns + " خمسمائة ألف";
                                    break;
                                case 6:
                                    ns = ns + " ستمائة ألف";
                                    break;
                                case 7:
                                    ns = ns + " سبعمائة ألف";
                                    break;
                                case 8:
                                    ns = ns + " ثمانمائة ألف";
                                    break;
                                case 9:
                                    ns = ns + " تسعمائة ألف";
                                    break;
                            }
                            break;
                        case 6:
                            switch (choosen) {
                                case 1:
                                    ns = ns + " مليون";
                                    break;
                                case 2:
                                    ns = ns + " مليونان";
                                    break;
                                case 3:
                                    ns = ns + " ثلاثة مليون";
                                    break;
                                case 4:
                                    ns = ns + " أربعة مليون";
                                    break;
                                case 5:
                                    ns = ns + " خمسة مليون";
                                    break;
                                case 6:
                                    ns = ns + " ستة مليون";
                                    break;
                                case 7:
                                    ns = ns + " سبعة مليون";
                                    break;
                                case 8:
                                    ns = ns + " ثمانية مليون";
                                    break;
                                case 9:
                                    ns = ns + " تسعة مليون";
                                    break;
                            }
                            break;
                        case 7:
                            switch (choosen) {
                                case 1:
                                    ns = ns + " عشرة مليون";
                                    break;
                                case 2:
                                    ns = ns + " عشرين مليون";
                                    break;
                                case 3:
                                    ns = ns + " ثلاثين مليون";
                                    break;
                                case 4:
                                    ns = ns + " أربعين مليون";
                                    break;
                                case 5:
                                    ns = ns + " خمسين مليون";
                                    break;
                                case 6:
                                    ns = ns + " ستين مليون";
                                    break;
                                case 7:
                                    ns = ns + " سبعون مليون";
                                    break;
                                case 8:
                                    ns = ns + " ثمانون مليون";
                                    break;
                                case 9:
                                    ns = ns + " تسعين مليون";
                                    break;
                            }
                    }
                    break;
                case "HEBREW":
                    switch (bc) {
                        case 0:
                            switch (choosen) {
                                case 1:
                                    ns = ns + " אחת";
                                    break;
                                case 2:
                                    ns = ns + " שתים";
                                    break;
                                case 3:
                                    ns = ns + " שלש";
                                    break;
                                case 4:
                                    ns = ns + " ארבע";
                                    break;
                                case 5:
                                    ns = ns + " חמש";
                                    break;
                                case 6:
                                    ns = ns + " שש";
                                    break;
                                case 7:
                                    ns = ns + " שבע";
                                    break;
                                case 8:
                                    ns = ns + " שמונה";
                                    break;
                                case 9:
                                    ns = ns + " תשע";
                                    break;
                            }
                            break;
                        case 1:
                            switch (choosen) {
                                case 1:
                                    ns = ns + " עשר";
                                    break;
                                case 2:
                                    ns = ns + " עשרים";
                                    break;
                                case 3:
                                    ns = ns + " שלושים";
                                    break;
                                case 4:
                                    ns = ns + " ארבעים";
                                    break;
                                case 5:
                                    ns = ns + " חמישים";
                                    break;
                                case 6:
                                    ns = ns + " ששים";
                                    break;
                                case 7:
                                    ns = ns + " שבעים";
                                    break;
                                case 8:
                                    ns = ns + " שמונים";
                                    break;
                                case 9:
                                    ns = ns + " תשעים";
                                    break;
                            }
                            break;
                        case 2:
                            switch (choosen) {
                                case 1:
                                    ns = ns + " מאה";
                                    break;
                                case 2:
                                    ns = ns + " מָאתַיִם";
                                    break;
                                case 3:
                                    ns = ns + " שְׁלוֹשׁ מֵאוֹת";
                                    break;
                                case 4:
                                    ns = ns + " אַרְבַּע מֵאוֹת";
                                    break;
                                case 5:
                                    ns = ns + " חֲמֵשׁ מֵאוֹת";
                                    break;
                                case 6:
                                    ns = ns + " שֵׁשׁ מֵאוֹת";
                                    break;
                                case 7:
                                    ns = ns + " שְׁבַע מֵאוֹת";
                                    break;
                                case 8:
                                    ns = ns + " שְׁמוֹנֶה מֵאוֹת";
                                    break;
                                case 9:
                                    ns = ns + " תְּשַׁע מֵאוֹת";
                                    break;
                            }
                            break;
                        case 3:
                            switch (choosen) {
                                case 1:
                                    ns = ns + " אלף";
                                    break;
                                case 2:
                                    ns = ns + " אלפיים";
                                    break;
                                case 3:
                                    ns = ns + " שלושה אלף";
                                    break;
                                case 4:
                                    ns = ns + " ארבעת אלפים";
                                    break;
                                case 5:
                                    ns = ns + " חמשת אלפים";
                                    break;
                                case 6:
                                    ns = ns + " ששת אלפים";
                                    break;
                                case 7:
                                    ns = ns + " שבעת אלפים";
                                    break;
                                case 8:
                                    ns = ns + " שמונת אלפים";
                                    break;
                                case 9:
                                    ns = ns + " תשעת אלפים";
                                    break;
                            }
                            break;
                        case 4:
                            switch (choosen) {
                                case 1:
                                    ns = ns + " עשרת אלפים";
                                    break;
                                case 2:
                                    ns = ns + " עשרים אלף";
                                    break;
                                case 3:
                                    ns = ns + " שלושים אלף";
                                    break;
                                case 4:
                                    ns = ns + " ארבעים אלף";
                                    break;
                                case 5:
                                    ns = ns + " חמישים אלף";
                                    break;
                                case 6:
                                    ns = ns + " שישים אלף";
                                    break;
                                case 7:
                                    ns = ns + " שבעים אלף";
                                    break;
                                case 8:
                                    ns = ns + " שמונים אלף";
                                    break;
                                case 9:
                                    ns = ns + " תשעים אלף";
                                    break;
                            }
                            break;
                        case 5:
                            switch (choosen) {
                                case 1:
                                    ns = ns + " מאה אלף";
                                    break;
                                case 2:
                                    ns = ns + " מאתיים אלף";
                                    break;
                                case 3:
                                    ns = ns + " שלוש מאות אלף";
                                    break;
                                case 4:
                                    ns = ns + " ארבע מאות אלף";
                                    break;
                                case 5:
                                    ns = ns + " חמש מאות אלף";
                                    break;
                                case 6:
                                    ns = ns + " שש מאות אלף";
                                    break;
                                case 7:
                                    ns = ns + " שבע מאות אלף";
                                    break;
                                case 8:
                                    ns = ns + " שמונה מאות אלף";
                                    break;
                                case 9:
                                    ns = ns + " תשע מאות אלף";
                                    break;
                            }
                            break;
                        case 6:
                            switch (choosen) {
                                case 1:
                                    ns = ns + " מיליון";
                                    break;
                                case 2:
                                    ns = ns + " שני מיליון";
                                    break;
                                case 3:
                                    ns = ns + " שלושה מיליון";
                                    break;
                                case 4:
                                    ns = ns + " ארבע מיליון";
                                    break;
                                case 5:
                                    ns = ns + " חמישה מיליון";
                                    break;
                                case 6:
                                    ns = ns + " שישה מיליון";
                                    break;
                                case 7:
                                    ns = ns + " שבעה מיליון";
                                    break;
                                case 8:
                                    ns = ns + " שמונה מליון";
                                    break;
                                case 9:
                                    ns = ns + " תשעה מיליון";
                                    break;
                            }
                            break;
                        case 7:
                            switch (choosen) {
                                case 1:
                                    ns = ns + " עשר מיליון";
                                    break;
                                case 2:
                                    ns = ns + " עשרים מיליון";
                                    break;
                                case 3:
                                    ns = ns + " שלושים מיליון";
                                    break;
                                case 4:
                                    ns = ns + " ארבעים מיליון";
                                    break;
                                case 5:
                                    ns = ns + " חמישים מיליון";
                                    break;
                                case 6:
                                    ns = ns + " שישים מיליון";
                                    break;
                                case 7:
                                    ns = ns + " שבעים מיליון";
                                    break;
                                case 8:
                                    ns = ns + " שמונים מיליון";
                                    break;
                                case 9:
                                    ns = ns + " תשעים מיליון";
                                    break;
                            }
                    }
            }
        }
        baster = 0;
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
function unsur(unsurmetin, otabiat, otype, shadda) {
    var fc, ac, wc, ec, fs, ai, ws, es, err, counter, choosen, c, ounsur;
    fc = 0;
    ac = 0;
    wc = 0;
    ec = 0;
    fs = "";
    ai = "";
    ws = "";
    es = "";
    err = 0;
    if (typeof otabiat === 'string') {
        switch (otabiat.toLowerCase()) {
            case "liste":
            case "list":
                otabiat = 1;
            	break;
            case "adet":
            case "amount":
                otabiat = 0;
        }
    }
    if (typeof otype === 'string') {
        switch (otype.toLowerCase()) {
            case "fire":
            case "ateş":
                otype = 0;
            	break;
            case "air":
            case "hava":
                otype = 1;
            	break;
            case "water":
            case "su":
                otype = 2;
            	break;
            case "earth":
            case "toprak":
                otype = 3;
        }
    }
    if (unsurmetin !== undefined) {
        for (counter = 0; counter < unsurmetin.length; counter++) {
            choosen = unsurmetin[counter];
            if (choosen == "ّ" && shadda == 2) {
                c = 1;
                do {
                    choosen = unsurmetin[counter - 1 - c];
                    c = c + 1;
                } while (saf(choosen, "") == "");
            } else if (choosen == "ّ" && shadda == undefined) {
                err = 1;
            } else if (choosen == "ّ" && shadda == 1) {}
            switch (choosen) {
                case "ا":
                case "ء":
                case "ب":
                case "ج":
                case "س":
                case "ص":
                case "ر":
                case "خ":
                    fc = fc + 1;
                    fs = fs + " " + choosen;
                    break;
                case "أ":
                case "إ":
                case "آ":
                    fc = fc + 1;
                    fs = fs + " " + "ا";
                    break;
                case "ى":
                case "ه":
                case "ز":
                case "ح":
                case "ط":
                case "ي":
                case "ل":
                case "ة":
                case "ث":
                case "ی":
                    ac = ac + 1;
                    ai = ai + " " + choosen;
                    break;
                case "د":
                case "ك":
                case "ع":
                case "ف":
                case "ق":
                case "ش":
                case "ض":
                    wc = wc + 1;
                    ws = ws + " " + choosen;
                    break;
                case "و":
                case "م":
                case "ن":
                case "ت":
                case "ذ":
                case "ظ":
                case "غ":
                    ec = ec + 1;
                    es = es + " " + choosen;
                    break;
                case "ؤ":
                    ec = ec + 1;
                    es = es + " " + "و";
                    fc = fc + 1;
                    fs = fs + " " + "ا";
                    break;
                case "ۀ":
                    ac = ac + 1;
                    ai = ai + " " + "ه";
                    ac = ac + 1;
                    ai = ai + " " + "ي";
                    break;
                case "ئ":
                    ac = ac + 1;
                    ai = ai + " " + "ي";
                    fc = fc + 1;
                    fs = fs + " " + "ا";
                    break;
            }
            switch (choosen) {
                case "א":
                case "ב":
                case "ג":
                case "ס":
                case "צ":
                case "ץ":
                case "ר":
                    fc = fc + 1;
                    fs = fs + " " + choosen;
                    break;
                case "ה":
                case "ז":
                case "ח":
                case "ט":
                case "י":
                case "ל":
                    ac = ac + 1;
                    ai = ai + " " + choosen;
                    break;
                case "ד":
                case "כ":
                case "ך":
                case "ע":
                case "פ":
                case "ף":
                case "ק":
                case "ש":
                    wc = wc + 1;
                    ws = ws + " " + choosen;
                    break;
                case "ו":
                case "מ":
                case "ם":
                case "נ":
                case "ן":
                case "ת":
                    ec = ec + 1;
                    es = es + " " + choosen;
                    break;
            }
        }
    }
    switch (otype) {
        case 0:
            switch (otabiat) {
                case 1:
                    ounsur = fs;
                    break;
                case 0:
                    ounsur = fc;
                    break;
            }
            break;
        case 1:
            switch (otabiat) {
                case 1:
                    ounsur = ai;
                    break;
                case 0:
                    ounsur = ac;
                    break;
            }
            break;
        case 2:
            switch (otabiat) {
                case 1:
                    ounsur = ws;
                    break;
                case 0:
                    ounsur = wc;
                    break;
            }
            break;
        case 3:
            switch (otabiat) {
                case 1:
                    ounsur = es;
                    break;
                case 0:
                    ounsur = ec;
                    break;
            }
            break;
    }
    switch (err) {
        case 0:
            return ounsur;
        case 1:
            return "Şedde Ayarı?";
    }
}
function teksir(teksirmetin, teksirayrac) {
    var iksir, result, inversed, newmetin, lengthdouble, produce, counter, teksired;
    lengthdouble = 0;
    newmetin = saf(teksirmetin, 0);
    result = saf(newmetin, teksirayrac) + String.fromCharCode(10) + String.fromCharCode(13);
    iksir = newmetin;
    for (produce = 0; produce < newmetin.length - 1; produce++) {
        if (newmetin.length / 2 == Math.floor(newmetin.length / 2)) {
            lengthdouble = 1;
        }
        iksir = "";
        for (counter = 1; counter <= Math.floor(newmetin.length / 2); counter++) {
            inversed = newmetin.length - counter;
            iksir = iksir + newmetin[inversed];
            iksir = iksir + newmetin[counter - 1];
        }
        if (lengthdouble !== 1) {
            iksir += newmetin[Math.floor(newmetin.length / 2)];
        }
        teksired = result + saf(iksir, teksirayrac) + String.fromCharCode(10) + String.fromCharCode(13);
        result = teksired;
        newmetin = saf(iksir, 0);
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
                na = na + "١";
                break;
            case "2":
                na = na + "٢";
                break;
            case "3":
                na = na + "٣";
                break;
            case "4":
                na = na + "٤";
                break;
            case "5":
                na = na + "٥";
                break;
            case "6":
                na = na + "٦";
                break;
            case "7":
                na = na + "٧";
                break;
            case "8":
                na = na + "٨";
                break;
            case "9":
                na = na + "٩";
                break;
            case "0":
                na = na + "٠";
                break;
            case " ":
                na = na + " ";
                break;
            case undefined:
                break;
            default:
                na = na + choosenarab;
        }
    }
    return na;
}
function huddam(num, htype, method) {
    var suffix, preffix, h, gh, counts, departs, rest, counter, counting, choosenduty, turn, counted;
    var hpart = new Array();
    hpart[0] = "nothing";
    num = parseFloat(num);
    counts = 1;
    gh = "";
    h = "";
    if (num !== undefined && num !== null) {
        if (htype !== undefined) {
            switch (method) {
                case 1:
                    switch (htype.toUpperCase()) {
                        case "ULVI":
                            suffix = parseFloat(abjad("ئيل", 12, 1));
                            break;
                        case "SUFLI":
                            suffix = parseFloat(abjad("يوش", 12, 1));
                            break;
                        case "ŞER":
                            suffix = parseFloat(abjad("طيش", 12, 1));
                            break;
                        default:
                            suffix = parseFloat(abjad(htype, 12, 1));
                    }
                    break;
                default:
                    switch (htype.toUpperCase()) {
                        case "ULVI":
                            suffix = parseFloat(abjad("ئيل", 1, 1));
                            break;
                        case "SUFLI":
                            suffix = parseFloat(abjad("يوش", 1, 1));
                            break;
                        case "ŞER":
                            suffix = parseFloat(abjad("طيش", 1, 1));
                            break;
                        default:
                            suffix = parseFloat(abjad(htype, 1, 1));
                    }
            }
            if (suffix > num) {
                do {
                    num += 361;
                } while (suffix > num);
            }
            preffix = (num - suffix).toString();
            if (preffix.length > 3) {
                for (departs = preffix.length; departs > preffix.length - Math.floor(preffix.length / 3) * 3; departs -= 3) {
                    hpart[counts] = preffix.substr(departs - 3, 3);
                    counts = counts + 1;
                }
                rest = preffix.length - ((counts - 1) * 3);
                if (rest > 0) {
                    hpart[counts] = preffix.substr(0, rest);
                } else {
                    counts = counts - 1;
                }
            } else {
                hpart[1] = preffix;
            }
            for (counter = counts; counter > 0; counter -= 1) {
                if (hpart[counter] !== undefined) {
                    for (counting = 0; counting < hpart[counter].length; counting++) {
                        choosenduty = parseFloat(hpart[counter].substr(counting, 1));
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
                                            case 1:
                                                h = "ل";
                                                break;
                                            default:
                                                h = "ب";
                                        }
                                        break;
                                    case 3:
                                        switch (method) {
                                            case 1:
                                                h = "ن";
                                                break;
                                            default:
                                                h = "ج";
                                        }
                                        break;
                                    case 4:
                                        switch (method) {
                                            case 1:
                                                h = "م";
                                                break;
                                            default:
                                                h = "د";
                                        }
                                        break;
                                    case 5:
                                        switch (method) {
                                            case 1:
                                                h = "و";
                                                break;
                                            default:
                                                h = "ه";
                                        }
                                        break;
                                    case 6:
                                        switch (method) {
                                            case 1:
                                                h = "ي";
                                                break;
                                            default:
                                                h = "و";
                                        }
                                        break;
                                    case 7:
                                        switch (method) {
                                            case 1:
                                                h = "ه";
                                                break;
                                            default:
                                                h = "ز";
                                        }
                                        break;
                                    case 8:
                                        switch (method) {
                                            case 1:
                                                h = "ر";
                                                break;
                                            default:
                                                h = "ح";
                                        }
                                        break;
                                    case 9:
                                        switch (method) {
                                            case 1:
                                                h = "ب";
                                                break;
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
                                            case 1:
                                                h = "ت";
                                                break;
                                            default:
                                                h = "ي";
                                        }
                                        break;
                                    case 2:
                                        h = "ك";
                                        break;
                                    case 3:
                                        switch (method) {
                                            case 1:
                                                h = "ع";
                                                break;
                                            default:
                                                h = "ل";
                                        }
                                        break;
                                    case 4:
                                        switch (method) {
                                            case 1:
                                                h = "ف";
                                                break;
                                            default:
                                                h = "م";
                                        }
                                        break;
                                    case 5:
                                        switch (method) {
                                            case 1:
                                                h = "ق";
                                                break;
                                            default:
                                                h = "ن";
                                        }
                                        break;
                                    case 6:
                                        h = "س";
                                        break;
                                    case 7:
                                        switch (method) {
                                            case 1:
                                                h = "د";
                                                break;
                                            default:
                                                h = "ع";
                                        }
                                        break;
                                    case 8:
                                        switch (method) {
                                            case 1:
                                                h = "ذ";
                                                break;
                                            default:
                                                h = "ف";
                                        }
                                        break;
                                    case 9:
                                        switch (method) {
                                            case 1:
                                                h = "ح";
                                                break;
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
                                            case 1:
                                                h = "ج";
                                                break;
                                            default:
                                                h = "ق";
                                        }
                                        break;
                                    case 2:
                                        switch (method) {
                                            case 1:
                                                h = "خ";
                                                break;
                                            default:
                                                h = "ر";
                                        }
                                        break;
                                    case 3:
                                        h = "ش";
                                        break;
                                    case 4:
                                        switch (method) {
                                            case 1:
                                                h = "ص";
                                                break;
                                            default:
                                                h = "ت";
                                        }
                                        break;
                                    case 5:
                                        switch (method) {
                                            case 1:
                                                h = "ض";
                                                break;
                                            default:
                                                h = "ث";
                                        }
                                        break;
                                    case 6:
                                        switch (method) {
                                            case 1:
                                                h = "ز";
                                                break;
                                            default:
                                                h = "خ";
                                        }
                                        break;
                                    case 7:
                                        switch (method) {
                                            case 1:
                                                h = "ث";
                                                break;
                                            default:
                                                h = "ذ";
                                        }
                                        break;
                                    case 8:
                                        switch (method) {
                                            case 1:
                                                h = "ط";
                                                break;
                                            default:
                                                h = "ض";
                                        }
                                        break;
                                    case 9:
                                        switch (method) {
                                            case 1:
                                                h = "غ";
                                                break;
                                            default:
                                                h = "ظ";
                                        }
                                        break;
                                }
                                break;
                        }
                        if (h !== undefined) {
                            gh = gh + "" + h;
                        }
                    }
                }
                if (parseFloat(hpart[counter]) > 0) {
                    for (counted = 1; counted < counter; counted++) {
                        switch (method) {
                            case 1:
                                gh = gh + "ظ";
                                break;
                            default:
                                gh = gh + "غ";
                        }
                    }
                }
            }
            switch (htype.toUpperCase()) {
                case "ULVI":
                    gh = gh + "ئيل";
                    break;
                case "SUFLI":
                    gh = gh + "يوش";
                    break;
                case "ŞER":
                    gh = gh + "طيش";
                    break;
                default:
                    gh = gh + htype;
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
                choosen = parseFloat(myval.substr(counter, 1));
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
                choosen = parseFloat(myval.substr(counter, 1));
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
        outp = "[" + turn + " tur]";
    }
    if (part > 0 && part !== undefined) {
        outp = outp + "[" + part + "X" + bolum + "]";
    }
    if (rest > 0 && rest !== undefined) {
        outp = outp + "[" + rest + " kalan]";
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
                ss = ss + "₁";
                break;
            case "2":
                ss = ss + "₂";
                break;
            case "3":
                ss = ss + "₃";
                break;
            case "4":
                ss = ss + "₄";
                break;
            case "5":
                ss = ss + "₅";
                break;
            case "6":
                ss = ss + "₆";
                break;
            case "7":
                ss = ss + "₇";
                break;
            case "8":
                ss = ss + "₈";
                break;
            case "9":
                ss = ss + "₉";
                break;
            case "0":
                ss = ss + "₀";
                break;
            case " ":
                ss = ss + " ";
                break;
            case "+":
                ss = ss + "₊";
                break;
            case "-":
                ss = ss + "₋";
                break;
            case "=":
                ss = ss + "₌";
                break;
            case "(":
                ss = ss + "₍";
                break;
            case "[":
                ss = ss + "₍";
                break;
            case ")":
                ss = ss + "₎";
                break;
            case "]":
                ss = ss + "₎";
                break;
            case undefined:
                break;
            default:
                ss = ss + choosenalta;
        }
    }
    return ss;
}
function saf(metinsaf, ayrac) {
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
            safmetin = safmetin + s;
        }
    }
    return safmetin;
}
function asgar(harf, level) {
    var c;
    if (level > 1) {
        c = parseFloat(abjad(harf, level, 1));
    } else {
        c = parseFloat(abjad(harf, 1, 1));
    }
    if (c > 12) {
        return c - (12 * Math.floor(c / 12));
    } else {
        return c;
    }
}
function newline(amount) {
	var nl = "";
	for (var rows = 1; rows < amount; rows += 1) {
		nl = nl + String.fromCharCode(10) + String.fromCharCode(13):
	}
	return nl;
}
function hepart(npotent,mimic) {
  var kat = 2;
  var result, sum, rsum;
  do {
    result = npotent * kat;
    kat += 1;
  } while (Math.floor((result-30)/4) < 1);
  if (mimic == 1) {
    return kat - 1;
  } else {
    return result;
  }
}

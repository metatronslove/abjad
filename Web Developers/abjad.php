<?php

class Abjad
{
    /**
     * @var string Internal encoding for multibyte strings
     */
    private static $encoding = 'UTF-8';

    /**
     * Constructor sets the internal encoding.
     */
    public function __construct()
    {
        mb_internal_encoding(self::$encoding);
    }

    /**
     * Convert a string to an array of Unicode characters.
     */
    private static function chars($str)
    {
        return mb_str_split($str);
    }

    /**
     * Original abjad() function.
     */
    public static function abjad($metin, $tablo = 1, $shadda = 1, $detail = 0)
    {
        $abjadsum = 0;
        $s = 0;
        $N = 0;
        $T = 0;
        $SH = 0;
        $SM = 0;
        $err = 0;
        $hrk = 0;
        $space = 0;
        $newline = 0;
        $SN = "";
        $nitem = "";
        $chars = self::chars($metin);
        foreach ($chars as $choosen) {
            if (in_array($choosen, ["ا", "أ", "إ", "آ", "ء", "ى"], true)) {
                if (in_array($tablo, [1, 4, 5, 7, 10, 12, 15, 17, 20, 22, 25, 27, 30, 32, 35], true)) {
                    $s = 1;
                } elseif (in_array($tablo, [0, 6, 11, 16, 21, 26, 31], true)) {
                    $s = self::asgar($choosen, $tablo + 1);
                } elseif (in_array($tablo, [2, 8, 13, 18, 23, 28, 33], true)) {
                    $s = self::abjad("الف", $tablo - 1, 1);
                } elseif (in_array($tablo, [3, 9, 14, 19, 24, 29, 34], true)) {
                    $s = self::bastet($choosen, 1, -1 - ($tablo - 2), 1, "ARABIC");
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ؤ") {
                if (in_array($tablo, [1, 4, 7, 10], true)) {
                    $s = 7;
                } elseif (in_array($tablo, [12, 15], true)) {
                    $s = 6;
                } elseif (in_array($tablo, [17, 20, 22, 25], true)) {
                    $s = 801;
                } elseif (in_array($tablo, [27, 30], true)) {
                    $s = 41;
                } elseif (in_array($tablo, [32, 35], true)) {
                    $s = 901;
                } elseif (in_array($tablo, [0, 6, 11, 16, 21, 26, 31], true)) {
                    $s = self::asgar("ا", $tablo + 1) + self::asgar("و", $tablo + 1);
                } elseif (in_array($tablo, [2, 8, 13, 18, 23, 28, 33], true)) {
                    $s = self::abjad("الف", $tablo - 1, 1) + self::abjad("واو", $tablo - 1, 1);
                } elseif (in_array($tablo, [3, 9, 14, 19, 24, 29, 34], true)) {
                    $s = self::bastet("ا", 1, -1 - ($tablo - 2), 1, "ARABIC") + self::bastet("و", 1, -1 - ($tablo - 2), 1, "ARABIC");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ئ") {
                if (in_array($tablo, [1, 4, 7, 10], true)) {
                    $s = 11;
                } elseif (in_array($tablo, [12, 15], true)) {
                    $s = 7;
                } elseif (in_array($tablo, [17, 20, 22, 25, 27, 30, 32, 35], true)) {
                    $s = 1001;
                } elseif (in_array($tablo, [0, 6, 11, 16, 21, 26, 31], true)) {
                    $s = self::asgar("ا", $tablo + 1) + self::asgar("ي", $tablo + 1);
                } elseif (in_array($tablo, [2, 8, 13, 18, 23, 28, 33], true)) {
                    $s = self::abjad("الف", $tablo - 1, 1) + self::abjad("يا", $tablo - 1, 1);
                } elseif (in_array($tablo, [3, 9, 14, 19, 24, 29, 34], true)) {
                    $s = self::bastet("ا", 1, -1 - ($tablo - 2), 1, "ARABIC") + self::bastet("ي", 1, -1 - ($tablo - 2), 1, "ARABIC");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ۀ") {
                if (in_array($tablo, [1, 4, 7, 10], true)) {
                    $s = 15;
                } elseif (in_array($tablo, [12, 15], true)) {
                    $s = 13;
                } elseif (in_array($tablo, [17, 20, 22, 25], true)) {
                    $s = 1800;
                } elseif (in_array($tablo, [27, 30], true)) {
                    $s = 1700;
                } elseif (in_array($tablo, [32, 35], true)) {
                    $s = 1900;
                } elseif (in_array($tablo, [0, 6, 11, 16, 21, 26, 31], true)) {
                    $s = self::asgar("ي", $tablo + 1) + self::asgar("ه", $tablo + 1);
                } elseif (in_array($tablo, [2, 8, 13, 18, 23, 28, 33], true)) {
                    $s = self::abjad("يا", $tablo - 1, 1) + self::abjad("ها", $tablo - 1, 1);
                } elseif (in_array($tablo, [3, 9, 14, 19, 24, 29, 34], true)) {
                    $s = self::bastet("ي", 1, -1 - ($tablo - 2), 1, "ARABIC") + self::bastet("ه", 1, -1 - ($tablo - 2), 1, "ARABIC");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["ب", "ﭖ"], true)) {
                if (in_array($tablo, [1, 4, 7, 10, 17, 20, 22, 25, 27, 30, 32, 35], true)) {
                    $s = 2;
                } elseif (in_array($tablo, [12, 15], true)) {
                    $s = 9;
                } elseif (in_array($tablo, [0, 6, 11, 16, 21, 26, 31], true)) {
                    $s = self::asgar($choosen, $tablo + 1);
                } elseif (in_array($tablo, [2, 8, 13, 18, 23, 28, 33], true)) {
                    $s = self::abjad("با", $tablo - 1, 1);
                } elseif (in_array($tablo, [3, 9, 14, 19, 24, 29, 34], true)) {
                    $s = self::bastet($choosen, 1, -1 - ($tablo - 2), 1, "ARABIC");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["ج", "ﭺ"], true)) {
                if (in_array($tablo, [1, 4, 7, 10], true)) {
                    $s = 3;
                } elseif (in_array($tablo, [12, 15], true)) {
                    $s = 100;
                } elseif (in_array($tablo, [17, 20, 22, 25, 27, 30, 32, 35], true)) {
                    $s = 5;
                } elseif (in_array($tablo, [0, 6, 11, 16, 21, 26, 31], true)) {
                    $s = self::asgar($choosen, $tablo + 1);
                } elseif (in_array($tablo, [2, 8, 13, 18, 23, 28, 33], true)) {
                    $s = self::abjad("جيم", $tablo - 1, 1);
                } elseif (in_array($tablo, [3, 9, 14, 19, 24, 29, 34], true)) {
                    $s = self::bastet($choosen, 1, -1 - ($tablo - 2), 1, "ARABIC");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "د") {
                if (in_array($tablo, [1, 4, 7, 10], true)) {
                    $s = 4;
                } elseif (in_array($tablo, [12, 15], true)) {
                    $s = 70;
                } elseif (in_array($tablo, [17, 20, 22, 25, 27, 30, 32, 35], true)) {
                    $s = 8;
                } elseif (in_array($tablo, [0, 6, 11, 16, 21, 26, 31], true)) {
                    $s = self::asgar($choosen, $tablo + 1);
                } elseif (in_array($tablo, [2, 8, 13, 18, 23, 28, 33], true)) {
                    $s = self::abjad("دال", $tablo - 1, 1);
                } elseif (in_array($tablo, [3, 9, 14, 19, 24, 29, 34], true)) {
                    $s = self::bastet($choosen, 1, -1 - ($tablo - 2), 1, "ARABIC");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["ه", "ة"], true)) {
                if (in_array($tablo, [1, 4, 7, 10], true)) {
                    $s = 5;
                } elseif (in_array($tablo, [12, 15], true)) {
                    $s = 7;
                } elseif (in_array($tablo, [17, 20, 22, 25], true)) {
                    $s = 800;
                } elseif (in_array($tablo, [27, 30], true)) {
                    $s = 700;
                } elseif (in_array($tablo, [32, 35], true)) {
                    $s = 900;
                } elseif (in_array($tablo, [0, 6, 11, 16, 21, 26, 31], true)) {
                    $s = self::asgar($choosen, $tablo + 1);
                } elseif (in_array($tablo, [2, 8, 13, 18, 23, 28, 33], true)) {
                    $s = self::abjad("ها", $tablo - 1, 1);
                } elseif (in_array($tablo, [3, 9, 14, 19, 24, 29, 34], true)) {
                    $s = self::bastet($choosen, 1, -1 - ($tablo - 2), 1, "ARABIC");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "و") {
                if (in_array($tablo, [1, 4, 7, 10], true)) {
                    $s = 6;
                } elseif (in_array($tablo, [12, 15], true)) {
                    $s = 5;
                } elseif (in_array($tablo, [17, 20, 22, 25], true)) {
                    $s = 900;
                } elseif (in_array($tablo, [27, 30], true)) {
                    $s = 40;
                } elseif (in_array($tablo, [32, 35], true)) {
                    $s = 800;
                } elseif (in_array($tablo, [0, 6, 11, 16, 21, 26, 31], true)) {
                    $s = self::asgar($choosen, $tablo + 1);
                } elseif (in_array($tablo, [2, 8, 13, 18, 23, 28, 33], true)) {
                    $s = self::abjad("واو", $tablo - 1, 1);
                } elseif (in_array($tablo, [3, 9, 14, 19, 24, 29, 34], true)) {
                    $s = self::bastet($choosen, 1, -1 - ($tablo - 2), 1, "ARABIC");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["ز", "ﮊ"], true)) {
                if (in_array($tablo, [1, 4, 7, 10], true)) {
                    $s = 7;
                } elseif (in_array($tablo, [12, 15, 27, 30], true)) {
                    $s = 600;
                } elseif (in_array($tablo, [17, 20, 22, 25, 32, 35], true)) {
                    $s = 20;
                } elseif (in_array($tablo, [0, 6, 11, 16, 21, 26, 31], true)) {
                    $s = self::asgar($choosen, $tablo + 1);
                } elseif (in_array($tablo, [2, 8, 13, 18, 23, 28, 33], true)) {
                    $s = self::abjad("زا", $tablo - 1, 1);
                } elseif (in_array($tablo, [3, 9, 14, 19, 24, 29, 34], true)) {
                    $s = self::bastet($choosen, 1, -1 - ($tablo - 2), 1, "ARABIC");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ح") {
                if (in_array($tablo, [1, 4, 7, 10], true)) {
                    $s = 8;
                } elseif (in_array($tablo, [12, 15], true)) {
                    $s = 90;
                } elseif (in_array($tablo, [17, 20, 22, 25, 27, 30, 32, 35], true)) {
                    $s = 6;
                } elseif (in_array($tablo, [0, 6, 11, 16, 21, 26, 31], true)) {
                    $s = self::asgar($choosen, $tablo + 1);
                } elseif (in_array($tablo, [2, 8, 13, 18, 23, 28, 33], true)) {
                    $s = self::abjad("حا", $tablo - 1, 1);
                } elseif (in_array($tablo, [3, 9, 14, 19, 24, 29, 34], true)) {
                    $s = self::bastet($choosen, 1, -1 - ($tablo - 2), 1, "ARABIC");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ط") {
                if (in_array($tablo, [1, 4, 7, 10], true)) {
                    $s = 9;
                } elseif (in_array($tablo, [12, 15], true)) {
                    $s = 800;
                } elseif (in_array($tablo, [17, 20, 32, 35], true)) {
                    $s = 70;
                } elseif (in_array($tablo, [22, 25], true)) {
                    $s = 30;
                } elseif (in_array($tablo, [27, 30], true)) {
                    $s = 100;
                } elseif (in_array($tablo, [0, 6, 11, 16, 21, 26, 31], true)) {
                    $s = self::asgar($choosen, $tablo + 1);
                } elseif (in_array($tablo, [2, 8, 13, 18, 23, 28, 33], true)) {
                    $s = self::abjad("طا", $tablo - 1, 1);
                } elseif (in_array($tablo, [3, 9, 14, 19, 24, 29, 34], true)) {
                    $s = self::bastet($choosen, 1, -1 - ($tablo - 2), 1, "ARABIC");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["ی", "ي"], true)) {
                if (in_array($tablo, [1, 4, 7, 10], true)) {
                    $s = 10;
                } elseif (in_array($tablo, [12, 15], true)) {
                    $s = 6;
                } elseif (in_array($tablo, [17, 20, 22, 25, 27, 30, 32, 35], true)) {
                    $s = 1000;
                } elseif (in_array($tablo, [0, 6, 11, 16, 21, 26, 31], true)) {
                    $s = self::asgar($choosen, $tablo + 1);
                } elseif (in_array($tablo, [2, 8, 13, 18, 23, 28, 33], true)) {
                    $s = self::abjad("يا", $tablo - 1, 1);
                } elseif (in_array($tablo, [3, 9, 14, 19, 24, 29, 34], true)) {
                    $s = self::bastet($choosen, 1, -1 - ($tablo - 2), 1, "ARABIC");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["ك", "ﮒ", "ک"], true)) {
                if (in_array($tablo, [1, 4, 7, 10, 12, 15], true)) {
                    $s = 20;
                } elseif (in_array($tablo, [17, 20, 32, 35], true)) {
                    $s = 400;
                } elseif (in_array($tablo, [22, 25], true)) {
                    $s = 50;
                } elseif (in_array($tablo, [27, 30], true)) {
                    $s = 10;
                } elseif (in_array($tablo, [0, 6, 11, 16, 21, 26, 31], true)) {
                    $s = self::asgar($choosen, $tablo + 1);
                } elseif (in_array($tablo, [2, 8, 13, 18, 23, 28, 33], true)) {
                    $s = self::abjad("كاف", $tablo - 1, 1);
                } elseif (in_array($tablo, [3, 9, 14, 19, 24, 29, 34], true)) {
                    $s = self::bastet($choosen, 1, -1 - ($tablo - 2), 1, "ARABIC");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ل") {
                if (in_array($tablo, [1, 4, 7, 10], true)) {
                    $s = 30;
                } elseif (in_array($tablo, [12, 15], true)) {
                    $s = 2;
                } elseif (in_array($tablo, [17, 20, 32, 35], true)) {
                    $s = 500;
                } elseif (in_array($tablo, [22, 25], true)) {
                    $s = 60;
                } elseif (in_array($tablo, [27, 30], true)) {
                    $s = 20;
                } elseif (in_array($tablo, [0, 6, 11, 16, 21, 26, 31], true)) {
                    $s = self::asgar($choosen, $tablo + 1);
                } elseif (in_array($tablo, [2, 8, 13, 18, 23, 28, 33], true)) {
                    $s = self::abjad("لام", $tablo - 1, 1);
                } elseif (in_array($tablo, [3, 9, 14, 19, 24, 29, 34], true)) {
                    $s = self::bastet($choosen, 1, -1 - ($tablo - 2), 1, "ARABIC");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ﻻ") {
                if (in_array($tablo, [1, 4, 7, 10], true)) {
                    $s = 31;
                } elseif (in_array($tablo, [12, 15], true)) {
                    $s = 3;
                } elseif (in_array($tablo, [17, 20, 32, 35], true)) {
                    $s = 501;
                } elseif (in_array($tablo, [22, 25], true)) {
                    $s = 61;
                } elseif (in_array($tablo, [27, 30], true)) {
                    $s = 21;
                } elseif (in_array($tablo, [0, 6, 11, 16, 21, 26, 31], true)) {
                    $s = self::asgar("ا", $tablo + 1) + self::asgar("ل", $tablo + 1);
                } elseif (in_array($tablo, [2, 8, 13, 18, 23, 28, 33], true)) {
                    $s = self::abjad("الف", $tablo - 1, 1) + self::abjad("لام", $tablo - 1, 1);
                } elseif (in_array($tablo, [3, 9, 14, 19, 24, 29, 34], true)) {
                    $s = self::bastet("ل", 1, -1 - ($tablo - 2), 1, "ARABIC") + self::bastet("ا", 1, -1 - ($tablo - 2), 1, "ARABIC");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "م") {
                if (in_array($tablo, [1, 4, 7, 10], true)) {
                    $s = 40;
                } elseif (in_array($tablo, [12, 15], true)) {
                    $s = 4;
                } elseif (in_array($tablo, [17, 20, 32, 35], true)) {
                    $s = 600;
                } elseif (in_array($tablo, [22, 25], true)) {
                    $s = 70;
                } elseif (in_array($tablo, [27, 30], true)) {
                    $s = 30;
                } elseif (in_array($tablo, [0, 6, 11, 16, 21, 26, 31], true)) {
                    $s = self::asgar($choosen, $tablo + 1);
                } elseif (in_array($tablo, [2, 8, 13, 18, 23, 28, 33], true)) {
                    $s = self::abjad("ميم", $tablo - 1, 1);
                } elseif (in_array($tablo, [3, 9, 14, 19, 24, 29, 34], true)) {
                    $s = self::bastet($choosen, 1, -1 - ($tablo - 2), 1, "ARABIC");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["ن", "ﯓ"], true)) {
                if (in_array($tablo, [1, 4, 7, 10, 27, 30], true)) {
                    $s = 50;
                } elseif (in_array($tablo, [12, 15], true)) {
                    $s = 3;
                } elseif (in_array($tablo, [17, 20, 32, 35], true)) {
                    $s = 700;
                } elseif (in_array($tablo, [22, 25], true)) {
                    $s = 80;
                } elseif (in_array($tablo, [0, 6, 11, 16, 21, 26, 31], true)) {
                    $s = self::asgar($choosen, $tablo + 1);
                } elseif (in_array($tablo, [2, 8, 13, 18, 23, 28, 33], true)) {
                    $s = self::abjad("نون", $tablo - 1, 1);
                } elseif (in_array($tablo, [3, 9, 14, 19, 24, 29, 34], true)) {
                    $s = self::bastet($choosen, 1, -1 - ($tablo - 2), 1, "ARABIC");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "س") {
                if (in_array($tablo, [1, 4, 12, 15], true)) {
                    $s = 60;
                } elseif (in_array($tablo, [7, 10], true)) {
                    $s = 300;
                } elseif (in_array($tablo, [17, 20, 32, 35], true)) {
                    $s = 30;
                } elseif (in_array($tablo, [22, 25], true)) {
                    $s = 600;
                } elseif (in_array($tablo, [27, 30], true)) {
                    $s = 800;
                } elseif (in_array($tablo, [0, 6, 11, 16, 21, 26, 31], true)) {
                    $s = self::asgar($choosen, $tablo + 1);
                } elseif (in_array($tablo, [2, 8, 13, 18, 23, 28, 33], true)) {
                    $s = self::abjad("سين", $tablo - 1, 1);
                } elseif (in_array($tablo, [3, 9, 14, 19, 24, 29, 34], true)) {
                    $s = self::bastet($choosen, 1, -1 - ($tablo - 2), 1, "ARABIC");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ع") {
                if (in_array($tablo, [1, 4, 7, 10], true)) {
                    $s = 70;
                } elseif (in_array($tablo, [12, 15], true)) {
                    $s = 30;
                } elseif (in_array($tablo, [17, 20, 32, 35], true)) {
                    $s = 90;
                } elseif (in_array($tablo, [22, 25], true)) {
                    $s = 200;
                } elseif (in_array($tablo, [27, 30], true)) {
                    $s = 80;
                } elseif (in_array($tablo, [0, 6, 11, 16, 21, 26, 31], true)) {
                    $s = self::asgar($choosen, $tablo + 1);
                } elseif (in_array($tablo, [2, 8, 13, 18, 23, 28, 33], true)) {
                    $s = self::abjad("عين", $tablo - 1, 1);
                } elseif (in_array($tablo, [3, 9, 14, 19, 24, 29, 34], true)) {
                    $s = self::bastet($choosen, 1, -1 - ($tablo - 2), 1, "ARABIC");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ف") {
                if (in_array($tablo, [1, 4, 7, 10], true)) {
                    $s = 80;
                } elseif (in_array($tablo, [12, 15], true)) {
                    $s = 40;
                } elseif (in_array($tablo, [17, 20, 32, 35], true)) {
                    $s = 200;
                } elseif (in_array($tablo, [22, 25], true)) {
                    $s = 400;
                } elseif (in_array($tablo, [27, 30], true)) {
                    $s = 300;
                } elseif (in_array($tablo, [0, 6, 11, 16, 21, 26, 31], true)) {
                    $s = self::asgar($choosen, $tablo + 1);
                } elseif (in_array($tablo, [2, 8, 13, 18, 23, 28, 33], true)) {
                    $s = self::abjad("فا", $tablo - 1, 1);
                } elseif (in_array($tablo, [3, 9, 14, 19, 24, 29, 34], true)) {
                    $s = self::bastet($choosen, 1, -1 - ($tablo - 2), 1, "ARABIC");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ص") {
                if (in_array($tablo, [1, 4, 22, 25], true)) {
                    $s = 90;
                } elseif (in_array($tablo, [7, 10, 27, 30], true)) {
                    $s = 60;
                } elseif (in_array($tablo, [12, 15], true)) {
                    $s = 400;
                } elseif (in_array($tablo, [17, 20, 32, 35], true)) {
                    $s = 50;
                } elseif (in_array($tablo, [0, 6, 11, 16, 21, 26, 31], true)) {
                    $s = self::asgar($choosen, $tablo + 1);
                } elseif (in_array($tablo, [2, 8, 13, 18, 23, 28, 33], true)) {
                    $s = self::abjad("صاد", $tablo - 1, 1);
                } elseif (in_array($tablo, [3, 9, 14, 19, 24, 29, 34], true)) {
                    $s = self::bastet($choosen, 1, -1 - ($tablo - 2), 1, "ARABIC");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ق") {
                if (in_array($tablo, [1, 4, 7, 10], true)) {
                    $s = 100;
                } elseif (in_array($tablo, [12, 15], true)) {
                    $s = 50;
                } elseif (in_array($tablo, [17, 20, 32, 35], true)) {
                    $s = 300;
                } elseif (in_array($tablo, [22, 25], true)) {
                    $s = 500;
                } elseif (in_array($tablo, [27, 30], true)) {
                    $s = 400;
                } elseif (in_array($tablo, [0, 6, 11, 16, 21, 26, 31], true)) {
                    $s = self::asgar($choosen, $tablo + 1);
                } elseif (in_array($tablo, [2, 8, 13, 18, 23, 28, 33], true)) {
                    $s = self::abjad("قاف", $tablo - 1, 1);
                } elseif (in_array($tablo, [3, 9, 14, 19, 24, 29, 34], true)) {
                    $s = self::bastet($choosen, 1, -1 - ($tablo - 2), 1, "ARABIC");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ر") {
                if (in_array($tablo, [1, 4, 7, 10], true)) {
                    $s = 200;
                } elseif (in_array($tablo, [12, 15], true)) {
                    $s = 8;
                } elseif (in_array($tablo, [17, 20, 22, 25, 32, 35], true)) {
                    $s = 10;
                } elseif (in_array($tablo, [27, 30], true)) {
                    $s = 500;
                } elseif (in_array($tablo, [0, 6, 11, 16, 21, 26, 31], true)) {
                    $s = self::asgar($choosen, $tablo + 1);
                } elseif (in_array($tablo, [2, 8, 13, 18, 23, 28, 33], true)) {
                    $s = self::abjad("را", $tablo - 1, 1);
                } elseif (in_array($tablo, [3, 9, 14, 19, 24, 29, 34], true)) {
                    $s = self::bastet($choosen, 1, -1 - ($tablo - 2), 1, "ARABIC");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ش") {
                if (in_array($tablo, [1, 4, 12, 15], true)) {
                    $s = 300;
                } elseif (in_array($tablo, [7, 10], true)) {
                    $s = 1000;
                } elseif (in_array($tablo, [17, 20, 32, 35], true)) {
                    $s = 40;
                } elseif (in_array($tablo, [22, 25], true)) {
                    $s = 700;
                } elseif (in_array($tablo, [27, 30], true)) {
                    $s = 900;
                } elseif (in_array($tablo, [0, 6, 11, 16, 21, 26, 31], true)) {
                    $s = self::asgar($choosen, $tablo + 1);
                } elseif (in_array($tablo, [2, 8, 13, 18, 23, 28, 33], true)) {
                    $s = self::abjad("شين", $tablo - 1, 1);
                } elseif (in_array($tablo, [3, 9, 14, 19, 24, 29, 34], true)) {
                    $s = self::bastet($choosen, 1, -1 - ($tablo - 2), 1, "ARABIC");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ت") {
                if (in_array($tablo, [1, 4, 7, 10], true)) {
                    $s = 400;
                } elseif (in_array($tablo, [12, 15], true)) {
                    $s = 10;
                } elseif (in_array($tablo, [17, 20, 22, 25, 27, 30, 32, 35], true)) {
                    $s = 3;
                } elseif (in_array($tablo, [0, 6, 11, 16, 21, 26, 31], true)) {
                    $s = self::asgar($choosen, $tablo + 1);
                } elseif (in_array($tablo, [2, 8, 13, 18, 23, 28, 33], true)) {
                    $s = self::abjad("تا", $tablo - 1, 1);
                } elseif (in_array($tablo, [3, 9, 14, 19, 24, 29, 34], true)) {
                    $s = self::bastet($choosen, 1, -1 - ($tablo - 2), 1, "ARABIC");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ث") {
                if (in_array($tablo, [1, 4, 7, 10], true)) {
                    $s = 500;
                } elseif (in_array($tablo, [12, 15], true)) {
                    $s = 700;
                } elseif (in_array($tablo, [17, 20, 22, 25, 27, 30, 32, 35], true)) {
                    $s = 4;
                } elseif (in_array($tablo, [0, 6, 11, 16, 21, 26, 31], true)) {
                    $s = self::asgar($choosen, $tablo + 1);
                } elseif (in_array($tablo, [2, 8, 13, 18, 23, 28, 33], true)) {
                    $s = self::abjad("ثا", $tablo - 1, 1);
                } elseif (in_array($tablo, [3, 9, 14, 19, 24, 29, 34], true)) {
                    $s = self::bastet($choosen, 1, -1 - ($tablo - 2), 1, "ARABIC");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "خ") {
                if (in_array($tablo, [1, 4, 7, 10], true)) {
                    $s = 600;
                } elseif (in_array($tablo, [12, 15], true)) {
                    $s = 200;
                } elseif (in_array($tablo, [17, 20, 22, 25, 27, 30, 32, 35], true)) {
                    $s = 7;
                } elseif (in_array($tablo, [0, 6, 11, 16, 21, 26, 31], true)) {
                    $s = self::asgar($choosen, $tablo + 1);
                } elseif (in_array($tablo, [2, 8, 13, 18, 23, 28, 33], true)) {
                    $s = self::abjad("خا", $tablo - 1, 1);
                } elseif (in_array($tablo, [3, 9, 14, 19, 24, 29, 34], true)) {
                    $s = self::bastet($choosen, 1, -1 - ($tablo - 2), 1, "ARABIC");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ذ") {
                if (in_array($tablo, [1, 4, 7, 10], true)) {
                    $s = 700;
                } elseif (in_array($tablo, [12, 15], true)) {
                    $s = 80;
                } elseif (in_array($tablo, [17, 20, 22, 25, 27, 30, 32, 35], true)) {
                    $s = 9;
                } elseif (in_array($tablo, [0, 6, 11, 16, 21, 26, 31], true)) {
                    $s = self::asgar($choosen, $tablo + 1);
                } elseif (in_array($tablo, [2, 8, 13, 18, 23, 28, 33], true)) {
                    $s = self::abjad("ذال", $tablo - 1, 1);
                } elseif (in_array($tablo, [3, 9, 14, 19, 24, 29, 34], true)) {
                    $s = self::bastet($choosen, 1, -1 - ($tablo - 2), 1, "ARABIC");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ض") {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 800;
                } elseif (in_array($tablo, [7, 10], true)) {
                    $s = 90;
                } elseif (in_array($tablo, [12, 15], true)) {
                    $s = 500;
                } elseif (in_array($tablo, [17, 20, 32, 35], true)) {
                    $s = 60;
                } elseif (in_array($tablo, [22, 25], true)) {
                    $s = 100;
                } elseif (in_array($tablo, [27, 30], true)) {
                    $s = 70;
                } elseif (in_array($tablo, [0, 6, 11, 16, 21, 26, 31], true)) {
                    $s = self::asgar($choosen, $tablo + 1);
                } elseif (in_array($tablo, [2, 8, 13, 18, 23, 28, 33], true)) {
                    $s = self::abjad("ضاد", $tablo - 1, 1);
                } elseif (in_array($tablo, [3, 9, 14, 19, 24, 29, 34], true)) {
                    $s = self::bastet($choosen, 1, -1 - ($tablo - 2), 1, "ARABIC");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ظ") {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 900;
                } elseif (in_array($tablo, [7, 10], true)) {
                    $s = 800;
                } elseif (in_array($tablo, [12, 15], true)) {
                    $s = 1000;
                } elseif (in_array($tablo, [17, 20, 32, 35], true)) {
                    $s = 80;
                } elseif (in_array($tablo, [22, 25], true)) {
                    $s = 40;
                } elseif (in_array($tablo, [27, 30], true)) {
                    $s = 200;
                } elseif (in_array($tablo, [0, 6, 11, 16, 21, 26, 31], true)) {
                    $s = self::asgar($choosen, $tablo + 1);
                } elseif (in_array($tablo, [2, 8, 13, 18, 23, 28, 33], true)) {
                    $s = self::abjad("ظا", $tablo - 1, 1);
                } elseif (in_array($tablo, [3, 9, 14, 19, 24, 29, 34], true)) {
                    $s = self::bastet($choosen, 1, -1 - ($tablo - 2), 1, "ARABIC");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "غ") {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 1000;
                } elseif (in_array($tablo, [7, 10, 12, 15], true)) {
                    $s = 900;
                } elseif (in_array($tablo, [17, 20, 32, 35], true)) {
                    $s = 100;
                } elseif (in_array($tablo, [22, 25], true)) {
                    $s = 300;
                } elseif (in_array($tablo, [27, 30], true)) {
                    $s = 90;
                } elseif (in_array($tablo, [0, 6, 11, 16, 21, 26, 31], true)) {
                    $s = self::asgar($choosen, $tablo + 1);
                } elseif (in_array($tablo, [2, 8, 13, 18, 23, 28, 33], true)) {
                    $s = self::abjad("غين", $tablo - 1, 1);
                } elseif (in_array($tablo, [3, 9, 14, 19, 24, 29, 34], true)) {
                    $s = self::bastet($choosen, 1, -1 - ($tablo - 2), 1, "ARABIC");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "א") {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 1;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("אלף", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "HEBREW");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ב") {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 2;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("בית", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "HEBREW");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ג") {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 3;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("גימל", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "HEBREW");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ד") {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 4;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("דלת", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "HEBREW");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ה") {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 5;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("הא", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "HEBREW");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ו") {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 6;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("וו", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "HEBREW");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ז") {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 7;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("זין", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "HEBREW");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ח") {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 8;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("חית", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "HEBREW");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ט") {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 9;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("טיח", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "HEBREW");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "י") {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 10;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("יוד", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "HEBREW");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "כ") {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 20;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("כף", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "HEBREW");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ל") {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 30;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("למד", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "HEBREW");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "מ") {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 40;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("מם", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "HEBREW");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "נ") {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 50;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("נון", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "HEBREW");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ס") {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 60;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("סמך", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "HEBREW");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ע") {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 70;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("עין", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "HEBREW");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "פ") {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 80;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("פא", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "HEBREW");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "צ") {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 90;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("צדי", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "HEBREW");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ק") {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 100;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("קוף", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "HEBREW");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ר") {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 200;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("ריש", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "HEBREW");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ש") {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 300;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("שין", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "HEBREW");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ת") {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 400;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("תו", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "HEBREW");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ך") {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 500;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("ךף", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "HEBREW");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ם") {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 600;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("םם", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "HEBREW");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ן") {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 700;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("וןן", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "HEBREW");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ף") {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 800;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("ףא", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "HEBREW");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif ($choosen == "ץ") {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 900;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("ץדי", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "HEBREW");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["A", "a"], true)) {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 1;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("aa", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "TURKCE");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["B", "b"], true)) {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 2;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("be", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "TURKCE");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["C", "c", "Ç", "ç"], true)) {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 3;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("ce", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "TURKCE");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["D", "d"], true)) {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 4;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("de", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "TURKCE");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["E", "e"], true)) {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 5;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("ee", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "TURKCE");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["F", "f"], true)) {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 6;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("fe", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "TURKCE");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["G", "g"], true)) {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 7;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("ge", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "TURKCE");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["Ğ", "ğ"], true)) {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 8;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("yumuşakge", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "TURKCE");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["H", "h"], true)) {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 9;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("he", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "TURKCE");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["I", "ı"], true)) {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 10;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("ıı", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "TURKCE");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["İ", "i"], true)) {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 20;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("ii", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "TURKCE");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["J", "j"], true)) {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 30;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("je", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "TURKCE");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["K", "k"], true)) {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 40;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("ke", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "TURKCE");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["L", "l"], true)) {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 50;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("le", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "TURKCE");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["M", "m"], true)) {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 60;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("me", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "TURKCE");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["N", "n"], true)) {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 70;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("ne", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "TURKCE");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["O", "o"], true)) {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 80;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("oo", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "TURKCE");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["Ö", "ö"], true)) {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 90;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("öö", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "TURKCE");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["P", "p"], true)) {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 100;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("p", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "TURKCE");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["R", "r"], true)) {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 200;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("re", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "TURKCE");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["S", "s"], true)) {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 300;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("se", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "TURKCE");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["Ş", "ş"], true)) {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 400;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("şe", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "TURKCE");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["T", "t"], true)) {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 500;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("te", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "TURKCE");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["U", "u"], true)) {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 600;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("uu", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "TURKCE");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["Ü", "ü"], true)) {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 700;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("üü", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "TURKCE");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["V", "v"], true)) {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 800;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("ve", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "TURKCE");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["Y", "y"], true)) {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 900;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("ye", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "TURKCE");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } elseif (in_array($choosen, ["Z", "z"], true)) {
                if (in_array($tablo, [1, 4], true)) {
                    $s = 1000;
                } elseif ($tablo == 0) {
                    $s = self::asgar($choosen, 1);
                } elseif ($tablo == 2) {
                    $s = self::abjad("ze", 1, 1);
                } elseif ($tablo == 3) {
                    $s = self::bastet($choosen, 1, -2, 1, "TURKCE");
                } elseif ($tablo == 5) {
                    $s = 1;
                } else {
                    $err = 1;
                }
            } else {
                $s = 0;
                $N += 1;
                if ($choosen == "ّ") {
                    if ($shadda == 2) {
                        $C = 1;
                        while (self::saf($chars[$T - $C], "") == "") {
                            $C += 1;
                        }
                        $SH += 1;
                        $s = self::abjad($chars[$T - $C], $tablo, 1);
                    } elseif ($shadda == 1) {
                        $s = 0;
                    } else {
                        $err = 3;
                    }
                    $hrk += 1;
                } elseif ($choosen == "ٰ") {
                    $C = 1;
                    while (
                        self::saf($chars[$T - $C], "") == "" ||
                        $chars[$T - $C] == "ـ"
                    ) {
                        if (
                            $chars[$T - $C] == "ـ" ||
                            self::saf($chars[$T - $C], "") == $chars[$T - $C]
                        ) {
                            $s = self::abjad("ا", $tablo, 1);
                        } else {
                            $C += 1;
                        }
                    }
                } elseif ($choosen == " ") {
                    $space += 1;
                } elseif (in_array($choosen, ["َ", "ِ", "ً", "ٍ", "ُ", "ْ", "ٌ", "ـ"], true)) {
                    $hrk += 1;
                } elseif (in_array($choosen, ["\n", "\r"], true)) {
                    $newline += 0.5;
                } else {
                    $err = 2;
                    $nitem .= $choosen;
                }
            }
            $T += 1;
            if ($detail == 1) {
                if (self::saf($choosen, 0) == "ا") {
                    $SN .= "[" . "ا" . "=" . strval($s) . "]";
                } elseif (self::saf($choosen, 0) == $choosen) {
                    $SN .= "[" . $choosen . "=" . strval($s) . "]";
                }
            } else {
                $SM += $s;
            }
        }
        if (in_array($tablo, [4, 10, 15, 20, 25, 30, 35], true)) {
            if ($detail == 1) {
                $SN .= "[+" . strval(count($chars) - $N + $SH) . " harf]";
            } else {
                $SM += count($chars) - $N + $SH;
            }
        }
        if ($err == 0) {
            if ($detail == 1) {
                $abjadsum = $SN;
            } else {
                $abjadsum = $SM;
            }
        } elseif ($err == 1) {
            $abjadsum = "Tablo Kodu?";
        } elseif ($err == 2) {
            $abjadsum = strval($N - ($space + $hrk)) . " Tanımlanmayan:" . strval($nitem) . " ||" . strval($space) . " boşluk||" . strval($hrk) . " harake";
        } elseif ($err == 3) {
            $abjadsum = "Şedde Seçeneği?";
        }
        return $abjadsum;
    }

    /**
     * Original wordbyword() function.
     */
    public static function wordbyword($metin, $tablo = 1, $shadda = 1, $detail = 0)
    {
        $content = "";
        $word = "";
        $metin .= " ";
        $chars = self::chars($metin);
        foreach ($chars as $counter) {
            $word .= $counter;
            if (in_array($counter, [" ", "\n"], true)) {
                $calculation = "(" . strval(self::abjad($word, $tablo, $shadda, $detail)) . ")" . $counter;
                if ($calculation != "(0)" . $counter) {
                    $content .= $word . self::altayaz($calculation);
                }
                $word = "";
                $calculation = "";
            }
        }
        return $content;
    }

    /**
     * Helper: check if value is integer-like.
     */
    private static function is_integer_like($value)
    {
        if ($value === null) {
            return false;
        }
        return is_int($value) || (is_string($value) && ctype_digit($value));
    }

    /**
     * Original bastet() function.
     */
    public static function bastet($metin, $mt, $tablo = 1, $shadda = 1, $language = "ARABIC", $detail = 0)
    {
        $err = 0;
        if (self::is_integer_like($metin)) {
            $baster = intval($metin);
        } elseif (in_array($tablo, range(0, 16 - 1), true)) {
            $baster = self::abjad($metin, $tablo, $shadda);
        } elseif (in_array($tablo, range(-16, 0 - 1), true)) {
            $invertablo = -1 * $tablo - 1;
            $baster = self::abjad($metin, $invertablo, $shadda);
        }
        for ($hm = 1; $hm < $mt + 1; $hm++) {
            $ns = "";
            $ns = self::nutket($baster, strtoupper($language));
            $baster = 0;
            if (in_array($tablo, range(0, 16 - 1), true)) {
                $baster = self::abjad($ns, $tablo, 1) + self::abjad($ns, 5, 1);
            } elseif (in_array($tablo, range(-16, 0 - 1), true)) {
                $baster = self::abjad($ns, $invertablo, 1);
            } else {
                $baster = "Tablo Kodu?";
            }
        }
        if ($err == 0) {
            if ($detail == 1) {
                $baster = $ns;
            }
        } elseif ($err == 1) {
            $baster = "Dil?";
        }
        return $baster;
    }

    /**
     * Original unsur() function.
     */
    public static function unsur($metin, $otabiat, $otype, $shadda = 1, $guide = 0)
    {
        $T = 0;
        $selected = "";
        $chars = self::chars($metin);
        foreach ($chars as $selectable) {
            if ($selectable == "ّ") {
                if ($shadda == 2) {
                    $C = 1;
                    while (self::saf($chars[$T - $C], 0) == "") {
                        $C += 1;
                    }
                    $selectable = $chars[$T - $C];
                }
            }
            if (in_array($selectable, [
                "ا", "ب", "ج", "س", "ص", "ر", "خ", "ه", "ز", "ح", "ط", "ي", "ی", "ل", "ة", "ث", "د", "ك", "ع", "ف", "ق", "ش", "ض", "و", "م", "ن", "ت", "ذ", "ظ", "غ"
            ], true)) {
                $selected .= $selectable;
            } elseif (in_array($selectable, ["أ", "إ", "آ", "ء", "ى"], true)) {
                $selected .= "ا";
            } elseif ($selectable == "ؤ") {
                $selected .= "و" . "ا";
            } elseif ($selectable == "ۀ") {
                $selected .= "ه" . "ي";
            } elseif ($selectable == "ئ") {
                $selected .= "ي" . "ا";
            } elseif (in_array($selectable, [
                "א", "ב", "ג", "ד", "ה", "ו", "ז", "ח", "ט", "י", "כ", "ל", "מ", "נ", "ס", "ע", "פ", "צ", "ק", "ר", "ש", "ת", "ם", "ן", "ף", "ץ", "ך"
            ], true)) {
                $selected .= $selectable;
            } elseif (in_array(strtoupper($selectable), [
                "A", "B", "C", "Ç", "D", "E", "F", "G", "Ğ", "H", "I", "İ", "J", "K", "L", "M", "N", "O", "Ö", "P", "R", "S", "Ş", "T", "U", "Ü", "V", "Y", "Z"
            ], true)) {
                $selected .= strtoupper($selectable);
            }
            $T += 1;
        }
        $metin = $selected;
        $liste = "";
        $adet = 0;
        $chars2 = self::chars($metin);
        if (in_array($guide, ["TURKCE", 0], true)) {
            if (in_array($otype, ["fire", "ateş", 0], true)) {
                foreach ($chars2 as $counter) {
                    if (in_array($counter, ["A", "D", "Ğ", "J", "N", "R", "U", "Z"], true)) {
                        $liste .= $counter . " ";
                        $adet += 1;
                    }
                }
            } elseif (in_array($otype, ["air", "hava", 1], true)) {
                foreach ($chars2 as $counter) {
                    if (in_array($counter, ["B", "E", "H", "K", "O", "S", "Ü"], true)) {
                        $liste .= $counter . " ";
                        $adet += 1;
                    }
                }
            } elseif (in_array($otype, ["water", "su", 2], true)) {
                foreach ($chars2 as $counter) {
                    if (in_array($counter, ["C", "F", "I", "L", "Ö", "Ş", "V"], true)) {
                        $liste .= $counter . " ";
                        $adet += 1;
                    }
                }
            } elseif (in_array($otype, ["earth", "toprak", 3], true)) {
                foreach ($chars2 as $counter) {
                    if (in_array($counter, ["Ç", "G", "İ", "M", "P", "T", "Y"], true)) {
                        $liste .= $counter . " ";
                        $adet += 1;
                    }
                }
            }
        } elseif (in_array($guide, ["HEBREW", 4], true)) {
            if (in_array($otype, ["fire", "ateş", 0], true)) {
                foreach ($chars2 as $counter) {
                    if (in_array($counter, ["א", "ה", "ט", "מ", "פ", "ש", "ף"], true)) {
                        $liste .= $counter . " ";
                        $adet += 1;
                    }
                }
            } elseif (in_array($otype, ["air", "hava", 1], true)) {
                foreach ($chars2 as $counter) {
                    if (in_array($counter, ["ב", "ו", "י", "נ", "צ", "ת", "ץ"], true)) {
                        $liste .= $counter . " ";
                        $adet += 1;
                    }
                }
            } elseif (in_array($otype, ["water", "su", 2], true)) {
                foreach ($chars2 as $counter) {
                    if (in_array($counter, ["ג", "ז", "כ", "ס", "ק", "ם", "ך"], true)) {
                        $liste .= $counter . " ";
                        $adet += 1;
                    }
                }
            } elseif (in_array($otype, ["earth", "toprak", 3], true)) {
                foreach ($chars2 as $counter) {
                    if (in_array($counter, ["ד", "ח", "ל", "ע", "ר", "ן"], true)) {
                        $liste .= $counter . " ";
                        $adet += 1;
                    }
                }
            }
        } elseif (in_array($guide, ["ARABI", 1], true)) {
            if (in_array($otype, ["fire", "ateş", 0], true)) {
                foreach ($chars2 as $counter) {
                    if (in_array($counter, ["ا", "ه", "ط", "م", "ف", "ش", "ذ"], true)) {
                        $liste .= $counter . " ";
                        $adet += 1;
                    }
                }
            } elseif (in_array($otype, ["air", "hava", 1], true)) {
                foreach ($chars2 as $counter) {
                    if (in_array($counter, ["د", "ح", "ل", "ع", "ر", "خ", "غ"], true)) {
                        $liste .= $counter . " ";
                        $adet += 1;
                    }
                }
            } elseif (in_array($otype, ["water", "su", 2], true)) {
                foreach ($chars2 as $counter) {
                    if (in_array($counter, ["ب", "و", "ن", "ي", "ی", "ص", "ت", "ض"], true)) {
                        $liste .= $counter . " ";
                        $adet += 1;
                    }
                }
            } elseif (in_array($otype, ["earth", "toprak", 3], true)) {
                foreach ($chars2 as $counter) {
                    if (in_array($counter, ["ج", "ز", "ك", "س", "ق", "ث", "ظ"], true)) {
                        $liste .= $counter . " ";
                        $adet += 1;
                    }
                }
            }
        } elseif (in_array($guide, ["BUNI", 2], true)) {
            if (in_array($otype, ["fire", "ateş", 0], true)) {
                foreach ($chars2 as $counter) {
                    if (in_array($counter, ["ا", "ه", "ط", "م", "ف", "ش", "ذ"], true)) {
                        $liste .= $counter . " ";
                        $adet += 1;
                    }
                }
            } elseif (in_array($otype, ["air", "hava", 1], true)) {
                foreach ($chars2 as $counter) {
                    if (in_array($counter, ["ب", "و", "ن", "ي", "ی", "ص", "ت", "ض"], true)) {
                        $liste .= $counter . " ";
                        $adet += 1;
                    }
                }
            } elseif (in_array($otype, ["water", "su", 2], true)) {
                foreach ($chars2 as $counter) {
                    if (in_array($counter, ["ד", "ح", "ل", "ע", "ר", "خ", "غ"], true)) {
                        $liste .= $counter . " ";
                        $adet += 1;
                    }
                }
            } elseif (in_array($otype, ["earth", "toprak", 3], true)) {
                foreach ($chars2 as $counter) {
                    if (in_array($counter, ["ج", "ز", "ك", "س", "ق", "ث", "ظ"], true)) {
                        $liste .= $counter . " ";
                        $adet += 1;
                    }
                }
            }
        } elseif (in_array($guide, ["HUSEYNI", 3], true)) {
            if (in_array($otype, ["fire", "ateş", 0], true)) {
                foreach ($chars2 as $counter) {
                    if (in_array($counter, ["ا", "ه", "ط", "م", "ف", "ش", "ذ"], true)) {
                        $liste .= $counter . " ";
                        $adet += 1;
                    }
                }
            } elseif (in_array($otype, ["air", "hava", 1], true)) {
                foreach ($chars2 as $counter) {
                    if (in_array($counter, ["ج", "ز", "ك", "س", "ق", "ث", "ظ"], true)) {
                        $liste .= $counter . " ";
                        $adet += 1;
                    }
                }
            } elseif (in_array($otype, ["water", "su", 2], true)) {
                foreach ($chars2 as $counter) {
                    if (in_array($counter, ["ד", "ح", "ל", "ע", "ר", "خ", "غ"], true)) {
                        $liste .= $counter . " ";
                        $adet += 1;
                    }
                }
            } elseif (in_array($otype, ["earth", "toprak", 3], true)) {
                foreach ($chars2 as $counter) {
                    if (in_array($counter, ["ب", "و", "ي", "ی", "ن", "ص", "ت", "ض"], true)) {
                        $liste .= $counter . " ";
                        $adet += 1;
                    }
                }
            }
        } elseif (in_array($otype, ["fire", "ateş", 0], true)) {
            foreach ($chars2 as $counter) {
                if (in_array($counter, ["ا", "ب", "ج", "س", "ص", "ر", "خ"], true)) {
                    $liste .= $counter . " ";
                    $adet += 1;
                }
            }
        } elseif (in_array($otype, ["air", "hava", 1], true)) {
            foreach ($chars2 as $counter) {
                if (in_array($counter, ["ه", "ز", "ح", "ط", "ي", "ل", "ة", "ث", "ی"], true)) {
                    $liste .= $counter . " ";
                    $adet += 1;
                }
            }
        } elseif (in_array($otype, ["water", "su", 2], true)) {
            foreach ($chars2 as $counter) {
                if (in_array($counter, ["د", "ك", "ع", "ف", "ق", "ش", "ض"], true)) {
                    $liste .= $counter . " ";
                    $adet += 1;
                }
            }
        } elseif (in_array($otype, ["earth", "toprak", 3], true)) {
            foreach ($chars2 as $counter) {
                if (in_array($counter, ["و", "م", "ن", "ت", "ذ", "ظ", "غ"], true)) {
                    $liste .= $counter . " ";
                    $adet += 1;
                }
            }
        }
        if (in_array($otabiat, ["liste", "list", 1], true)) {
            return $liste;
        } elseif (in_array($otabiat, ["adet", "amount", 0], true)) {
            return $adet;
        }
        return "";
    }

    /**
     * Original saf() function.
     */
    public static function saf($metin, $ayrac = " ", $shadda = 1)
    {
        $T = 0;
        $result = "";
        if ($ayrac == 0) {
            $irun = "";
        } else {
            $irun = $ayrac;
        }
        $chars = self::chars($metin);
        foreach ($chars as $selectable) {
            if ($selectable == " ") {
                if ($ayrac == "") {
                    $s = $selectable;
                } elseif ($ayrac == 0) {
                    $s = "";
                } else {
                    $s = $irun;
                }
            }
            if ($selectable == "ّ" && $shadda == 2) {
                $C = 1;
                while (self::saf($chars[$T - $C], "") == "") {
                    $C += 1;
                }
                $selectable = $chars[$T - $C];
            }
            if (in_array($selectable, [
                "ا", "ب", "ج", "س", "ص", "ر", "خ", "ه", "ز", "ح", "ط", "ي", "ی", "ل", "ة", "ث", "د", "ك", "ع", "ف", "ق", "ش", "ض", "و", "م", "ن", "ت", "ذ", "ظ", "غ"
            ], true)) {
                $s = $selectable . $irun;
            } elseif (in_array($selectable, ["أ", "إ", "آ", "ء", "ى"], true)) {
                $s = $selectable . $irun;
            } elseif ($selectable == "ؤ") {
                $s = $selectable . $irun;
            } elseif ($selectable == "ۀ") {
                $s = $selectable . $irun;
            } elseif ($selectable == "ئ") {
                $s = $selectable . $irun;
            } elseif (in_array($selectable, [
                "א", "ב", "ג", "ד", "ה", "ו", "ז", "ח", "ט", "י", "כ", "ל", "מ", "נ", "ס", "ע", "פ", "צ", "ק", "ר", "ש", "ת", "ם", "ן", "ף", "ץ", "ך"
            ], true)) {
                $s = $selectable;
            } elseif (in_array($selectable, [
                "A", "B", "C", "Ç", "D", "E", "F", "G", "Ğ", "H", "I", "İ", "J", "K", "L", "M", "N", "O", "Ö", "P", "R", "S", "Ş", "T", "U", "Ü", "V", "Y", "Z"
            ], true)) {
                $s = $selectable;
            } elseif (in_array($selectable, [
                "a", "b", "c", "ç", "d", "e", "f", "g", "ğ", "h", "ı", "i", "j", "k", "l", "m", "n", "o", "ö", "p", "r", "s", "ş", "t", "u", "ü", "v", "y", "z"
            ], true)) {
                $s = $selectable;
            } else {
                $s = "";
            }
            $T += 1;
            $result .= $s;
        }
        return $result;
    }

    /**
     * Original teksir() function.
     */
    public static function teksir($metin, $ayrac = " ", $shadda = 1)
    {
        if ($shadda == 2) {
            $newmetin = self::saf($metin, 0, 2);
        } else {
            $newmetin = self::saf($metin, 0);
        }
        $sonucu = "";
        $lengthdouble = 0;
        $result = self::saf($newmetin, $ayrac) . "\n";
        $iksir = $newmetin;
        $len = mb_strlen($newmetin);
        for ($produce = 1; $produce < $len; $produce++) {
            if ($len % 2 == 0) {
                $lengthdouble = 1;
            }
            $iksir = "";
            for ($counter = 1; $counter < 1 + floor($len / 2); $counter++) {
                $inverse = $len - $counter;
                $iksir .= mb_substr($newmetin, $inverse, 1);
                $iksir .= mb_substr($newmetin, $counter - 1, 1);
            }
            if ($lengthdouble != 1) {
                $iksir .= mb_substr($newmetin, floor($len / 2), 1);
            }
            $sonucu = $result . self::saf($iksir, $ayrac) . "\n";
            $result = $sonucu;
            $newmetin = self::saf($iksir, 0);
            $len = mb_strlen($newmetin);
        }
        return $sonucu;
    }

    /**
     * Original numbers2arab() function.
     */
    public static function numbers2arab($metin)
    {
        $na = "";
        $chars = self::chars($metin);
        foreach ($chars as $choosen) {
            if ($choosen == "0") {
                $na .= "٠";
            } elseif ($choosen == "1") {
                $na .= "١";
            } elseif ($choosen == "2") {
                $na .= "٢";
            } elseif ($choosen == "3") {
                $na .= "٣";
            } elseif ($choosen == "4") {
                $na .= "٤";
            } elseif ($choosen == "5") {
                $na .= "٥";
            } elseif ($choosen == "6") {
                $na .= "٦";
            } elseif ($choosen == "7") {
                $na .= "٧";
            } elseif ($choosen == "8") {
                $na .= "٨";
            } elseif ($choosen == "9") {
                $na .= "٩";
            } elseif ($choosen == " ") {
                $na .= " ";
            } else {
                $na .= $choosen;
            }
        }
        return $na;
    }

    /**
     * Original tesbih() function.
     */
    public static function tesbih($zkr, $minimum, $boncuk, $bolum)
    {
        if ($zkr < $minimum) {
            $zkr *= $zkr;
        }
        $turn = floor($zkr / $boncuk);
        $zero = $zkr - $turn * $boncuk;
        $part = floor($zero / $bolum);
        $once = $zero - $part * $bolum;
        $result = "";
        if ($turn > 0) {
            $result = "[" . $turn . " turn]";
        }
        if ($part > 0) {
            $result .= "[" . $part . "x" . $bolum . "]";
        }
        if ($once > 0) {
            $result .= "[and " . $once . "]";
        }
        return $result;
    }

    /**
     * Original altayaz() function.
     */
    public static function altayaz($girdi)
    {
        $ss = "";
        $chars = self::chars($girdi);
        foreach ($chars as $counter) {
            if ($counter == "0") {
                $ss .= "₀";
            } elseif ($counter == "1") {
                $ss .= "₁";
            } elseif ($counter == "2") {
                $ss .= "₂";
            } elseif ($counter == "3") {
                $ss .= "₃";
            } elseif ($counter == "4") {
                $ss .= "₄";
            } elseif ($counter == "5") {
                $ss .= "₅";
            } elseif ($counter == "6") {
                $ss .= "₆";
            } elseif ($counter == "7") {
                $ss .= "₇";
            } elseif ($counter == "8") {
                $ss .= "₈";
            } elseif ($counter == "9") {
                $ss .= "₉";
            } elseif ($counter == "+") {
                $ss .= "₊";
            } elseif ($counter == "-") {
                $ss .= "₋";
            } elseif ($counter == "=") {
                $ss .= "₌";
            } elseif (in_array($counter, ["(", "["], true)) {
                $ss .= "₍";
            } elseif (in_array($counter, [")", "]"], true)) {
                $ss .= "₎";
            } else {
                $ss .= $counter;
            }
        }
        return $ss;
    }

    /**
     * Original rakamtopla() function.
     */
    public static function rakamtopla($valuez, $amount)
    {
        if ($amount == 0) {
            $hepsi = (string)$valuez;
            while (mb_strlen((string)$valuez) > 1) {
                $newsum = 0;
                $digits = self::chars((string)$valuez);
                foreach ($digits as $choosen) {
                    $newsum += intval($choosen);
                }
                $valuez = $newsum;
            }
            $hepsi .= " ► " . $valuez;
            return $hepsi;
        } else {
            while (mb_strlen((string)$valuez) > $amount) {
                $newsum = 0;
                $digits = self::chars((string)$valuez);
                foreach ($digits as $choosen) {
                    $newsum += intval($choosen);
                }
                $valuez = $newsum;
            }
            return $valuez;
        }
    }

    /**
     * Original newline() function.
     */
    public static function newline($amount)
    {
        $nl = "";
        for ($rows = 0; $rows < $amount; $rows++) {
            $nl .= "\n";
        }
        return $nl;
    }

    /**
     * Original asgar() function.
     */
    public static function asgar($harf, $level = 1)
    {
        $c = self::abjad($harf, $level, 1);
        if ($c > 12) {
            return $c - 12 * floor($c / 12);
        } else {
            return $c;
        }
    }

    /**
     * Original nutket() function.
     */
    public static function nutket($mynumber, $language = "ARABIC")
    {
        $temp = "";
        $spell = "";
        $count = 0;
        $lang = strtoupper($language);
        if ($lang == "ARABIC") {
            if ($mynumber == 0 && $count == 0) {
                return "صفر";
            }
            $mynumber = (string)$mynumber;
            $PlaceOnes = ["", "ألف", "مليون", "مليار", "تريليون"];
            $PlaceTwos = ["", "ألفان", "مليونان", "ملياران", "تريليونان"];
            $PlaceAppent = ["", "ألفاً", "مليوناً", "ملياراً", "تريليوناً"];
            $PlacePlural = ["", "آلاف", "ملايين", "مليارات", "تريليونات"];
            while ($mynumber != "") {
                $EventHappenned = 0;
                if ($count > 0 && floatval(substr($mynumber, -3)) == 1) {
                    $temp = "";
                    if (strlen($spell) > 0) {
                        $spell = $PlaceOnes[$count] . " و " . $spell;
                    } else {
                        $spell = $PlaceOnes[$count] . " " . $spell;
                    }
                } elseif ($count > 0 && floatval(substr($mynumber, -3)) == 2) {
                    $temp = "";
                    if (strlen($spell) > 0) {
                        $spell = $PlaceTwos[$count] . " و " . $spell;
                    } else {
                        $spell = $PlaceTwos[$count] . " " . $spell;
                    }
                } else {
                    $temp = self::GetHundreds(substr($mynumber, -3), $lang, $count, $spell);
                }
                if ($temp != "") {
                    if ($count > 0) {
                        if (strlen($spell) > 0) {
                            $spell = " و " . $spell;
                        }
                        if (floatval(substr($mynumber, -3)) != 2) {
                            if (floor(floatval(substr($mynumber, -3)) / 100) != 1) {
                                if (floatval(substr($mynumber, -3)) >= 3 && floatval(substr($mynumber, -3)) <= 10) {
                                    $spell = " " . $PlacePlural[$count] . $spell;
                                    $EventHappenned = 1;
                                }
                            }
                        }
                    }
                    if ($EventHappenned == 0) {
                        if (strlen($spell) > 0) {
                            $spell = " " . $PlaceAppent[$count] . $spell;
                        } else {
                            $spell = " " . $PlaceOnes[$count] . $spell;
                        }
                    } else {
                        $EventHappenned = 0;
                    }
                    $spell = $temp . $spell;
                    $temp = "";
                }
                if (strlen($mynumber) > 3) {
                    $mynumber = substr($mynumber, 0, strlen($mynumber) - 3);
                } else {
                    $mynumber = "";
                }
                $count += 1;
            }
        } elseif ($lang == "HEBREW") {
            if ($mynumber == 0 && $count == 0) {
                return "אֶפֶס";
            }
            $mynumber = (string)$mynumber;
            $PlaceOnes = ["", "אלף", "מיליון", "מיליארד", "טריליון"];
            $PlaceTwos = ["", "אלפיים ", "שני מיליון ", "שני מיליארד ", "שני טריליון "];
            $PlaceAppent = ["", "אלפא", "מיליון", "מיליארד", "טריליון"];
            $PlacePlural = ["", "אלפים", "מיליונים", "מיליארדים", "טריליונים"];
            while ($mynumber != "") {
                $EventHappenned = 0;
                if ($count > 0 && floatval(substr($mynumber, -3)) == 1) {
                    $temp = "";
                    if (strlen($spell) > 0) {
                        $spell = $PlaceOnes[$count] . " ו " . $spell;
                    } else {
                        $spell = $PlaceOnes[$count] . " " . $spell;
                    }
                } elseif ($count > 0 && floatval(substr($mynumber, -3)) == 2) {
                    $temp = "";
                    if (strlen($spell) > 0) {
                        $spell = $PlaceTwos[$count] . " ו " . $spell;
                    } else {
                        $spell = $PlaceTwos[$count] . " " . $spell;
                    }
                } else {
                    $temp = self::GetHundreds(substr($mynumber, -3), $lang, $count, $spell);
                }
                if ($temp != "") {
                    if ($count > 0) {
                        if (strlen($spell) > 0) {
                            $spell = " ו " . $spell;
                        }
                        if (floatval(substr($mynumber, -3)) != 2) {
                            if (floor(floatval(substr($mynumber, -3)) / 100) != 1) {
                                if (floatval(substr($mynumber, -3)) >= 3 && floatval(substr($mynumber, -3)) <= 10) {
                                    $spell = " " . $PlacePlural[$count] . $spell;
                                    $EventHappenned = 1;
                                }
                            }
                        }
                    }
                    if ($EventHappenned == 0) {
                        if (strlen($spell) > 0) {
                            $spell = " " . $PlaceAppent[$count] . $spell;
                        } else {
                            $spell = " " . $PlaceOnes[$count] . $spell;
                        }
                    } else {
                        $EventHappenned = 0;
                    }
                    $spell = $temp . $spell;
                    $temp = "";
                }
                if (strlen($mynumber) > 3) {
                    $mynumber = substr($mynumber, 0, strlen($mynumber) - 3);
                } else {
                    $mynumber = "";
                }
                $count += 1;
            }
        } elseif ($lang == "TURKCE") {
            if ($mynumber == 0 && $count == 0) {
                return "sıfır";
            }
            $Place = ["", "bin ", "milyon ", "milyar ", "trilyon "];
            $mynumber = (string)$mynumber;
            while ($mynumber != "") {
                if ($count == 1 && floatval(substr($mynumber, -3)) == 1) {
                    $temp = "";
                    $spell = $Place[$count] . $spell;
                } else {
                    $temp = self::GetHundreds(substr($mynumber, -3), $lang);
                }
                if ($temp != "") {
                    $spell = $temp . " " . $Place[$count] . $spell;
                    $temp = "";
                }
                if (strlen($mynumber) > 3) {
                    $mynumber = substr($mynumber, 0, strlen($mynumber) - 3);
                } else {
                    $mynumber = "";
                }
                $count += 1;
            }
        }
        return trim($spell);
    }

    /**
     * Original GetHundreds() function.
     */
    private static function GetHundreds($mynumber, $language = "ARABIC", $count = 0, $spell = "")
    {
        $result = "";
        $mynumber = substr("000" . $mynumber, -3);
        $lang = strtoupper($language);
        if ($lang == "ARABIC") {
            if (floatval(substr($mynumber, 0, 1)) > 0) {
                if (floatval(substr($mynumber, -2)) == 0 && floatval(substr($mynumber, 1, 2)) == 2) {
                    if ($count == 0) {
                        $result = "مئتان ";
                    } else {
                        $result = "مئتا ";
                    }
                } elseif (floatval(substr($mynumber, 0, 1)) == 1) {
                    $result = "مائة ";
                } elseif (floatval(substr($mynumber, 0, 1)) == 2) {
                    $result = "مئتان ";
                } elseif (floatval(substr($mynumber, 0, 1)) == 3) {
                    $result = "ثلاثمائة ";
                } elseif (floatval(substr($mynumber, 0, 1)) == 4) {
                    $result = "أربعمائة ";
                } elseif (floatval(substr($mynumber, 0, 1)) == 5) {
                    $result = "خمسمائة ";
                } elseif (floatval(substr($mynumber, 0, 1)) == 6) {
                    $result = "ستمائة ";
                } elseif (floatval(substr($mynumber, 0, 1)) == 7) {
                    $result = "سبعمائة ";
                } elseif (floatval(substr($mynumber, 0, 1)) == 8) {
                    $result = "ثمانمائة ";
                } elseif (floatval(substr($mynumber, 0, 1)) == 9) {
                    $result = "تسعمائة ";
                }
            }
            if (strlen($result) > 0 && floatval(substr($mynumber, -2)) != 0) {
                $result .= " و ";
            }
            if (substr($mynumber, 1, 2) != "0") {
                $result .= strval(self::GetTens(substr($mynumber, -2), $lang, $count, floatval(substr($mynumber, 0, 1)), $result . $spell));
            } else {
                $result .= strval(self::GetDigit(substr($mynumber, 2, 3), $lang, $count, $result . $spell));
            }
        } elseif ($lang == "HEBREW") {
            if (floatval(substr($mynumber, 0, 1)) > 0) {
                if (floatval(substr($mynumber, 0, 1)) == 1) {
                    $result = "מאה ";
                } elseif (floatval(substr($mynumber, 0, 1)) == 2) {
                    $result = "מאתיים ";
                } elseif (floatval(substr($mynumber, 0, 1)) == 3) {
                    $result = "שלוש מאות ";
                } elseif (floatval(substr($mynumber, 0, 1)) == 4) {
                    $result = "ארבע מאות ";
                } elseif (floatval(substr($mynumber, 0, 1)) == 5) {
                    $result = "חמש מאות ";
                } elseif (floatval(substr($mynumber, 0, 1)) == 6) {
                    $result = "שש מאות ";
                } elseif (floatval(substr($mynumber, 0, 1)) == 7) {
                    $result = "שבע מאות ";
                } elseif (floatval(substr($mynumber, 0, 1)) == 8) {
                    $result = "שמונה מאות ";
                } elseif (floatval(substr($mynumber, 0, 1)) == 9) {
                    $result = "תשע מאות ";
                }
            }
            if (strlen($result) > 0 && floatval(substr($mynumber, -2)) != 0) {
                $result .= " ו ";
            }
            if (substr($mynumber, 1, 2) != "0") {
                $result .= strval(self::GetTens(substr($mynumber, -2), $lang, $count, floatval(substr($mynumber, 0, 1)), $result . $spell));
            } else {
                $result .= strval(self::GetDigit(substr($mynumber, 2, 3), $lang, $count, $result . $spell));
            }
        } elseif ($lang == "TURKCE") {
            if (substr($mynumber, 0, 1) != "0") {
                if (floatval(substr($mynumber, 0, 1)) > 1) {
                    $result = self::GetDigit(substr($mynumber, 0, 1), $lang) . " yüz ";
                } else {
                    $result = "yüz ";
                }
            }
            if (substr($mynumber, 1, 2) != "0") {
                $result .= strval(self::GetTens(substr($mynumber, -2), $lang, $count, floatval(substr($mynumber, 0, 1)), $result . $spell));
            } else {
                $result .= strval(self::GetDigit(substr($mynumber, 2, 3), $lang, $count, $result . $spell));
            }
        }
        return $result;
    }

    /**
     * Original GetTens() function.
     */
    private static function GetTens($tenstext, $language = "ARABIC", $count = 0, $hundreds = 0, $spell = "")
    {
        $result = "";
        $lang = strtoupper($language);
        if ($lang == "ARABIC") {
            $PlaceOnes = ["", "ألف ", "مليون ", "مليار ", "تريليون "];
            $PlaceTwos = ["", "ألفان ", "مليونان ", "ملياران ", "تريليونان "];
            if (floatval(substr($tenstext, 0, 1)) == 1) {
                if (floatval($tenstext) == 10) {
                    $result = "عشرة";
                } elseif (floatval($tenstext) == 11) {
                    $result = "إحدى عشرة";
                } elseif (floatval($tenstext) == 12) {
                    $result = "اثنتا عشرة";
                } elseif (floatval($tenstext) == 13) {
                    $result = "ثلاث عشرة";
                } elseif (floatval($tenstext) == 14) {
                    $result = "أربع عشرة";
                } elseif (floatval($tenstext) == 15) {
                    $result = "خمس عشرة";
                } elseif (floatval($tenstext) == 16) {
                    $result = "ست عشرة";
                } elseif (floatval($tenstext) == 17) {
                    $result = "سبع عشرة";
                } elseif (floatval($tenstext) == 18) {
                    $result = "ثماني عشرة";
                } elseif (floatval($tenstext) == 19) {
                    $result = "تسع عشرة";
                }
            } else {
                if (floatval($tenstext) == 2 && $hundreds == 0 && $count > 0) {
                    $result = $PlaceTwos[$count] . $result;
                } elseif (floatval($tenstext) == 2 && $count > 1) {
                    $result = $PlaceOnes[$count] . $result;
                } elseif (floatval($tenstext) == 1 || floatval($tenstext) == 2) {
                    if ($count == 1 && $hundreds == 0 && floatval($tenstext) == 0) {
                        $result = $result . "";
                    }
                }
                if (floatval($tenstext) > 0) {
                    if (floatval(substr($tenstext, 0, 1)) > 1) {
                        $result .= strval(self::GetTensStatus(floatval(substr($tenstext, 0, 1)), $lang));
                    }
                    if (strlen($result) > 0 && floatval(substr($tenstext, -1)) != 0) {
                        $result .= "و ";
                    }
                    $result .= strval(self::GetDigit(substr($tenstext, -1), $lang));
                } else {
                    if ((strlen($spell) > 0 && floatval(substr($tenstext, 0, 1)) != 0) || (strlen($result) > 0 && floatval(substr($tenstext, 0, 1)) != 0)) {
                        $result .= "و ";
                    }
                    $result .= strval(self::GetTensStatus(floatval(substr($tenstext, 0, 1)), $lang));
                }
            }
        } elseif ($lang == "HEBREW") {
            $PlaceOnes = ["", "אלפים ", "מיליון ", "מיליארד ", "טריליון "];
            $PlaceTwos = ["", "אלפיים ", "שני מיליון ", "שני מיליארד ", "שני טריליון "];
            if (floatval(substr($tenstext, 0, 1)) == 1) {
                if (floatval($tenstext) == 10) {
                    $result = "עשר ";
                } elseif (floatval($tenstext) == 11) {
                    $result = "אחת עשרה ";
                } elseif (floatval($tenstext) == 12) {
                    $result = "שתים עשרה ";
                } elseif (floatval($tenstext) == 13) {
                    $result = "שלוש עשרה ";
                } elseif (floatval($tenstext) == 14) {
                    $result = "ארבע עשרה ";
                } elseif (floatval($tenstext) == 15) {
                    $result = "חמש עשרה ";
                } elseif (floatval($tenstext) == 16) {
                    $result = "שש עשרה ";
                } elseif (floatval($tenstext) == 17) {
                    $result = "שבע עשרה ";
                } elseif (floatval($tenstext) == 18) {
                    $result = "שמונה עשרה ";
                } elseif (floatval($tenstext) == 19) {
                    $result = "תשע עשרה ";
                }
            } else {
                if (floatval($tenstext) == 2 && $hundreds == 0 && $count > 0) {
                    $result = $PlaceTwos[$count] . $result;
                } elseif (floatval($tenstext) == 2 && $count > 1) {
                    $result = $PlaceOnes[$count] . $result;
                } elseif (floatval($tenstext) == 1 || floatval($tenstext) == 2) {
                    if ($count == 1 && $hundreds == 0 && floatval($tenstext) == 0) {
                        $result = $result . "";
                    }
                }
                if (floatval($tenstext) > 0) {
                    if (floatval(substr($tenstext, 0, 1)) > 1) {
                        $result .= strval(self::GetTensStatus(floatval(substr($tenstext, 0, 1)), $lang));
                    }
                    if (strlen($result) > 0 && floatval(substr($tenstext, -1)) != 0) {
                        $result .= "ו ";
                    }
                    $result .= strval(self::GetDigit(substr($tenstext, -1), $lang));
                } else {
                    if ((strlen($spell) > 0 && floatval(substr($tenstext, 0, 1)) != 0) || (strlen($result) > 0 && floatval(substr($tenstext, 0, 1)) != 0)) {
                        $result .= "ו ";
                    }
                    $result .= strval(self::GetTensStatus(floatval(substr($tenstext, 0, 1)), $lang));
                }
            }
        } elseif ($lang == "TURKCE") {
            if (floatval(substr($tenstext, 0, 1)) == 1) {
                $result = "on ";
            } elseif (floatval(substr($tenstext, 0, 1)) == 2) {
                $result = "yirmi ";
            } elseif (floatval(substr($tenstext, 0, 1)) == 3) {
                $result = "otuz ";
            } elseif (floatval(substr($tenstext, 0, 1)) == 4) {
                $result = "kırk ";
            } elseif (floatval(substr($tenstext, 0, 1)) == 5) {
                $result = "elli ";
            } elseif (floatval(substr($tenstext, 0, 1)) == 6) {
                $result = "altmış ";
            } elseif (floatval(substr($tenstext, 0, 1)) == 7) {
                $result = "yetmiş ";
            } elseif (floatval(substr($tenstext, 0, 1)) == 8) {
                $result = "seksen ";
            } elseif (floatval(substr($tenstext, 0, 1)) == 9) {
                $result = "doksan ";
            }
            $result .= self::GetDigit(substr($tenstext, -1), $lang);
        }
        return $result;
    }

    /**
     * Original GetTensStatus() function.
     */
    private static function GetTensStatus($tens, $language = "ARABIC")
    {
        $lang = strtoupper($language);
        if ($lang == "ARABIC") {
            if ($tens == 2) {
                return "عشرين ";
            } elseif ($tens == 3) {
                return "ثلاثين ";
            } elseif ($tens == 4) {
                return "أربعين ";
            } elseif ($tens == 5) {
                return "خمسين ";
            } elseif ($tens == 6) {
                return "ستين ";
            } elseif ($tens == 7) {
                return "سبعين ";
            } elseif ($tens == 8) {
                return "ثمانين ";
            } elseif ($tens == 9) {
                return "تسعين ";
            }
        } elseif ($lang == "HEBREW") {
            if ($tens == 2) {
                return "עשרים ";
            } elseif ($tens == 3) {
                return "שלושים ";
            } elseif ($tens == 4) {
                return "ארבעים ";
            } elseif ($tens == 5) {
                return "חמישים ";
            } elseif ($tens == 6) {
                return "שישים ";
            } elseif ($tens == 7) {
                return "שבעים ";
            } elseif ($tens == 8) {
                return "שמונים ";
            } elseif ($tens == 9) {
                return "תשעים ";
            }
        }
        return "";
    }

    /**
     * Original GetDigit() function.
     */
    private static function GetDigit($digit, $language = "ARABIC")
    {
        $lang = strtoupper($language);
        if ($lang == "ARABIC") {
            if (floatval($digit) == 1) {
                return "احد";
            } elseif (floatval($digit) == 2) {
                return "اثنان";
            } elseif (floatval($digit) == 3) {
                return "ثلاثة";
            } elseif (floatval($digit) == 4) {
                return "أربعة";
            } elseif (floatval($digit) == 5) {
                return "خمسة";
            } elseif (floatval($digit) == 6) {
                return "ستة";
            } elseif (floatval($digit) == 7) {
                return "سبعة";
            } elseif (floatval($digit) == 8) {
                return "ثمانية";
            } elseif (floatval($digit) == 9) {
                return "تسعة";
            } else {
                return "";
            }
        } elseif ($lang == "HEBREW") {
            if (floatval($digit) == 1) {
                return "אחת";
            } elseif (floatval($digit) == 2) {
                return "שניים";
            } elseif (floatval($digit) == 3) {
                return "שלושה";
            } elseif (floatval($digit) == 4) {
                return "ארבעה";
            } elseif (floatval($digit) == 5) {
                return "חמש";
            } elseif (floatval($digit) == 6) {
                return "שישה";
            } elseif (floatval($digit) == 7) {
                return "שבע";
            } elseif (floatval($digit) == 8) {
                return "שמונה";
            } elseif (floatval($digit) == 9) {
                return "תשע";
            } else {
                return "";
            }
        } elseif ($lang == "TURKCE") {
            if (floatval($digit) == 1) {
                return "bir";
            } elseif (floatval($digit) == 2) {
                return "iki";
            } elseif (floatval($digit) == 3) {
                return "üç";
            } elseif (floatval($digit) == 4) {
                return "dört";
            } elseif (floatval($digit) == 5) {
                return "beş";
            } elseif (floatval($digit) == 6) {
                return "altı";
            } elseif (floatval($digit) == 7) {
                return "yedi";
            } elseif (floatval($digit) == 8) {
                return "sekiz";
            } elseif (floatval($digit) == 9) {
                return "dokuz";
            } else {
                return "";
            }
        }
        return "";
    }

    /**
     * Original huddam() function.
     */
    public static function huddam($num, $htype = "ulvi", $method = 1)
    {
        $h = "";
        $gh = "";
        $eacher = "";
        $mode = "";
        $counts = 1;
        $hpart = [""];
        $htype = strtoupper($htype);
        if (in_array($method, [2, 8, 13, 18, 23, 28, 33], true)) {
            $method -= 1;
            $mode = "eacher";
        }
        if (!in_array($method, [7, 12, 17, 22, 27, 32], true)) {
            $method = 1;
        }
        if ($mode != "eacher") {
            $mode = "regular";
        }
        if (in_array($htype, ["ULVI", "ULVİ"], true)) {
            $suffix = self::abjad("ئيل", $method, 1);
        } elseif (in_array($htype, ["SUFLI", "SUFLİ"], true)) {
            $suffix = self::abjad("يوش", $method, 1);
        } elseif (in_array($htype, ["ŞER", "SER"], true)) {
            $suffix = self::abjad("طيش", $method, 1);
        } else {
            $suffix = self::abjad($htype, $method, 1);
        }
        while ($suffix >= $num) {
            $num += 361;
        }
        $preffix = strval($num - $suffix);
        if (strlen($preffix) > 3) {
            for ($departs = strlen($preffix); $departs > strlen($preffix) - floor(strlen($preffix) / 3) * 3; $departs -= 3) {
                $hpart[$counts] = substr($preffix, $departs - 3, 3);
                $counts += 1;
            }
            $rest = strlen($preffix) - ($counts - 1) * 3;
            if ($rest > 0) {
                $hpart[$counts] = substr($preffix, 0, $rest);
            } else {
                $counts -= 1;
            }
        } else {
            $hpart[1] = $preffix;
        }
        for ($counter = 1; $counter <= $counts; $counter++) {
            $eacher = "";
            $partStr = (string)$hpart[$counter];
            for ($counting = 0; $counting < strlen($partStr); $counting++) {
                $choosen = $partStr[$counting];
                $turn = 4 - strlen($partStr) + $counting;
                if ($turn == 3) {
                    if (intval($choosen) == 1) {
                        if (1 < strlen($partStr)) {
                            $h = "ا";
                        } elseif ($counts == 1) {
                            $h = "ا";
                        }
                    } elseif (intval($choosen) == 2) {
                        if ($method == 12) {
                            $h = "ل";
                        } else {
                            $h = "ب";
                        }
                    } elseif (intval($choosen) == 3) {
                        if ($method == 12) {
                            $h = "ن";
                        } elseif (in_array($method, [17, 22, 27, 32], true)) {
                            $h = "ت";
                        } else {
                            $h = "ج";
                        }
                    } elseif (intval($choosen) == 4) {
                        if ($method == 12) {
                            $h = "م";
                        } elseif (in_array($method, [17, 22, 27, 32], true)) {
                            $h = "ث";
                        } else {
                            $h = "د";
                        }
                    } elseif (intval($choosen) == 5) {
                        if ($method == 12) {
                            $h = "و";
                        } elseif (in_array($method, [17, 22, 27, 32], true)) {
                            $h = "ج";
                        } else {
                            $h = "ه";
                        }
                    } elseif (intval($choosen) == 6) {
                        if ($method == 12) {
                            $h = "ي";
                        } elseif (in_array($method, [17, 22, 27, 32], true)) {
                            $h = "ح";
                        } else {
                            $h = "و";
                        }
                    } elseif (intval($choosen) == 7) {
                        if ($method == 12) {
                            $h = "ه";
                        } elseif (in_array($method, [17, 22, 27, 32], true)) {
                            $h = "خ";
                        } else {
                            $h = "ز";
                        }
                    } elseif (intval($choosen) == 8) {
                        if ($method == 12) {
                            $h = "ر";
                        } elseif (in_array($method, [17, 22, 27, 32], true)) {
                            $h = "د";
                        } else {
                            $h = "ح";
                        }
                    } elseif (intval($choosen) == 9) {
                        if ($method == 12) {
                            $h = "ب";
                        } elseif (in_array($method, [17, 22, 27, 32], true)) {
                            $h = "ذ";
                        } else {
                            $h = "ط";
                        }
                    } elseif (intval($choosen) == 0) {
                        if (in_array($method, [1, 7, 12, 17, 22, 27, 32], true)) {
                            $h = "";
                        }
                    } else {
                        $h = "";
                    }
                } elseif ($turn == 2) {
                    if (intval($choosen) == 1) {
                        if ($method == 12) {
                            $h = "ت";
                        } elseif (in_array($method, [17, 22, 32], true)) {
                            $h = "ر";
                        } elseif ($method == 27) {
                            $h = "ك";
                        } else {
                            $h = "ي";
                        }
                    } elseif (intval($choosen) == 2) {
                        if (in_array($method, [17, 22, 32], true)) {
                            $h = "ز";
                        } elseif ($method == 27) {
                            $h = "ل";
                        } else {
                            $h = "ك";
                        }
                    } elseif (intval($choosen) == 3) {
                        if ($method == 12) {
                            $h = "ع";
                        } elseif (in_array($method, [17, 32], true)) {
                            $h = "س";
                        } elseif ($method == 22) {
                            $h = "ط";
                        } elseif ($method == 27) {
                            $h = "م";
                        } else {
                            $h = "ل";
                        }
                    } elseif (intval($choosen) == 4) {
                        if ($method == 12) {
                            $h = "ف";
                        } elseif (in_array($method, [17, 32], true)) {
                            $h = "ش";
                        } elseif ($method == 22) {
                            $h = "ظ";
                        } elseif ($method == 27) {
                            $h = "و";
                        } else {
                            $h = "م";
                        }
                    } elseif (intval($choosen) == 5) {
                        if ($method == 12) {
                            $h = "ق";
                        } elseif (in_array($method, [17, 32], true)) {
                            $h = "ص";
                        } elseif ($method == 22) {
                            $h = "ك";
                        } else {
                            $h = "ن";
                        }
                    } elseif (intval($choosen) == 6) {
                        if (in_array($method, [7, 27], true)) {
                            $h = "ص";
                        } elseif (in_array($method, [17, 32], true)) {
                            $h = "ض";
                        } elseif ($method == 22) {
                            $h = "ل";
                        } else {
                            $h = "س";
                        }
                    } elseif (intval($choosen) == 7) {
                        if ($method == 12) {
                            $h = "د";
                        } elseif (in_array($method, [17, 32], true)) {
                            $h = "ط";
                        } elseif ($method == 22) {
                            $h = "م";
                        } elseif ($method == 27) {
                            $h = "ض";
                        } else {
                            $h = "ع";
                        }
                    } elseif (intval($choosen) == 8) {
                        if ($method == 12) {
                            $h = "ذ";
                        } elseif (in_array($method, [17, 32], true)) {
                            $h = "ظ";
                        } elseif ($method == 22) {
                            $h = "ن";
                        } elseif ($method == 27) {
                            $h = "ع";
                        } else {
                            $h = "ف";
                        }
                    } elseif (intval($choosen) == 9) {
                        if ($method == 7) {
                            $h = "ض";
                        } elseif ($method == 12) {
                            $h = "ح";
                        } elseif (in_array($method, [17, 32], true)) {
                            $h = "ع";
                        } elseif ($method == 27) {
                            $h = "غ";
                        } else {
                            $h = "ص";
                        }
                    } elseif (intval($choosen) == 0) {
                        if (in_array($method, [1, 7, 12, 17, 22, 27, 32], true)) {
                            $h = "";
                        }
                    } else {
                        $h = "";
                    }
                } elseif ($turn == 1) {
                    if (intval($choosen) == 1) {
                        if ($method == 12) {
                            $h = "ج";
                        } elseif (in_array($method, [17, 32], true)) {
                            $h = "غ";
                        } elseif ($method == 22) {
                            $h = "ض";
                        } elseif ($method == 27) {
                            $h = "ط";
                        } else {
                            $h = "ق";
                        }
                    } elseif (intval($choosen) == 2) {
                        if ($method == 12) {
                            $h = "خ";
                        } elseif (in_array($method, [17, 32], true)) {
                            $h = "ف";
                        } elseif ($method == 22) {
                            $h = "ع";
                        } elseif ($method == 27) {
                            $h = "ظ";
                        } else {
                            $h = "ر";
                        }
                    } elseif (intval($choosen) == 3) {
                        if ($method == 7) {
                            $h = "س";
                        } elseif (in_array($method, [17, 32], true)) {
                            $h = "ق";
                        } elseif ($method == 22) {
                            $h = "غ";
                        } elseif ($method == 27) {
                            $h = "ف";
                        } else {
                            $h = "ش";
                        }
                    } elseif (intval($choosen) == 4) {
                        if ($method == 12) {
                            $h = "ص";
                        } elseif (in_array($method, [17, 32], true)) {
                            $h = "ك";
                        } elseif ($method == 22) {
                            $h = "ف";
                        } elseif ($method == 27) {
                            $h = "ق";
                        } else {
                            $h = "ت";
                        }
                    } elseif (intval($choosen) == 5) {
                        if ($method == 12) {
                            $h = "ض";
                        } elseif (in_array($method, [17, 32], true)) {
                            $h = "ل";
                        } elseif ($method == 22) {
                            $h = "ق";
                        } elseif ($method == 27) {
                            $h = "ر";
                        } else {
                            $h = "ث";
                        }
                    } elseif (intval($choosen) == 6) {
                        if (in_array($method, [12, 27], true)) {
                            $h = "ز";
                        } elseif (in_array($method, [17, 32], true)) {
                            $h = "م";
                        } elseif ($method == 22) {
                            $h = "س";
                        } else {
                            $h = "خ";
                        }
                    } elseif (intval($choosen) == 7) {
                        if ($method == 12) {
                            $h = "ث";
                        } elseif (in_array($method, [17, 32], true)) {
                            $h = "ن";
                        } elseif ($method == 22) {
                            $h = "ش";
                        } elseif ($method == 27) {
                            $h = "ه";
                        } else {
                            $h = "ذ";
                        }
                    } elseif (intval($choosen) == 8) {
                        if ($method == 7) {
                            $h = "ظ";
                        } elseif ($method == 12) {
                            $h = "ط";
                        } elseif (in_array($method, [17, 22], true)) {
                            $h = "ه";
                        } elseif ($method == 27) {
                            $h = "س";
                        } elseif ($method == 32) {
                            $h = "و";
                        } else {
                            $h = "ض";
                        }
                    } elseif (intval($choosen) == 9) {
                        if (in_array($method, [7, 12], true)) {
                            $h = "غ";
                        } elseif (in_array($method, [17, 22], true)) {
                            $h = "و";
                        } elseif ($method == 27) {
                            $h = "ش";
                        } elseif ($method == 32) {
                            $h = "ه";
                        } else {
                            $h = "ظ";
                        }
                    } else {
                        $h = "";
                    }
                }
                if ($h !== null && $h != "") {
                    $gh .= $h;
                    $h = "";
                }
            }
            if ($hpart[$counter] !== null) {
                for ($counted = 1; $counted < $counter; $counted++) {
                    if ($method == 7) {
                        $eacher .= "ش";
                    } elseif ($method == 12) {
                        $eacher .= "ظ";
                    } elseif (in_array($method, [17, 22, 27, 32], true)) {
                        $eacher .= "ي";
                    } else {
                        $eacher .= "غ";
                    }
                }
            }
            if ($mode == "eacher") {
                $gh .= $eacher;
                $eacher = "";
            }
        }
        if ($mode == "regular") {
            $gh .= $eacher;
            $eacher = "";
        }
        if (in_array($method, [1, 7, 12, 17, 22, 27, 32], true)) {
            if (in_array($htype, ["ULVI", "ULVİ"], true)) {
                $gh .= "ئيل";
            } elseif (in_array($htype, ["SUFLI", "SUFLİ"], true)) {
                $gh .= "يوش";
            } elseif (in_array($htype, ["ŞER", "SER"], true)) {
                $gh .= "طيش";
            } else {
                $gh .= $htype;
            }
        } else {
            $gh = $htype;
        }
        return $gh;
    }

    /**
     * Original numerolog() function.
     */
    public static function numerolog($metin, $tablo = "tr", $outas = "tam", $shadda = 1)
    {
        $SM = 0;
        $T = 0;
        $s = 0;
        $n = 0;
        $sesli = 0;
        $sessiz = 0;
        $err = 0;
        $hrk = 0;
        $seslit = 0;
        $sessizt = 0;
        $nesoohc = "";
        $nitem = "";
        $D = 0;
        $space = 0;
        $newline = 0;
        $tablo = strtolower($tablo);
        $metin = strtoupper($metin);
        $chars = self::chars($metin);
        if ($tablo == "date") {
            $s = floatval(strval($metin->year) + strval($metin->month) + strval($metin->day));
        } else {
            foreach ($chars as $choosen) {
                $sesli = 0;
                $sessiz = 0;
                if ($choosen == "A") {
                    if ($tablo == "modern") {
                        $s = 1;
                        $sesli = 1;
                    } elseif (in_array($tablo, ["tr", "en"], true)) {
                        $s = 1;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "B") {
                    if ($tablo == "modern") {
                        $s = 2;
                        $sessiz = 2;
                    } elseif (in_array($tablo, ["tr", "en"], true)) {
                        $s = 2;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "C") {
                    if ($tablo == "modern") {
                        $s = 3;
                        $sessiz = 3;
                    } elseif (in_array($tablo, ["tr", "en"], true)) {
                        $s = 3;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "Ç") {
                    if ($tablo == "modern") {
                        $s = 3;
                        $sessiz = 3;
                    } elseif ($tablo == "tr") {
                        $s = 4;
                    } elseif ($tablo == "en") {
                        $s = 3;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "D") {
                    if ($tablo == "modern") {
                        $s = 4;
                        $sessiz = 4;
                    } elseif ($tablo == "tr") {
                        $s = 5;
                    } elseif ($tablo == "en") {
                        $s = 4;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "E") {
                    if ($tablo == "modern") {
                        $s = 5;
                        $sesli = 5;
                    } elseif ($tablo == "tr") {
                        $s = 6;
                    } elseif ($tablo == "en") {
                        $s = 5;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "F") {
                    if ($tablo == "modern") {
                        $s = 6;
                        $sessiz = 6;
                    } elseif ($tablo == "tr") {
                        $s = 7;
                    } elseif ($tablo == "en") {
                        $s = 6;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "G") {
                    if ($tablo == "modern") {
                        $s = 7;
                        $sessiz = 7;
                    } elseif ($tablo == "tr") {
                        $s = 8;
                    } elseif ($tablo == "en") {
                        $s = 7;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "Ğ") {
                    if ($tablo == "modern") {
                        $s = 7;
                        $sessiz = 7;
                    } elseif ($tablo == "tr") {
                        $s = 9;
                    } elseif ($tablo == "en") {
                        $s = 7;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "H") {
                    if ($tablo == "modern") {
                        $s = 8;
                        $sessiz = 8;
                    } elseif ($tablo == "tr") {
                        $s = 10;
                    } elseif ($tablo == "en") {
                        $s = 8;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "I") {
                    if ($tablo == "modern") {
                        $s = 9;
                        $sesli = 9;
                    } elseif ($tablo == "tr") {
                        $s = 11;
                    } elseif ($tablo == "en") {
                        $s = 9;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "İ") {
                    if ($tablo == "modern") {
                        $s = 9;
                        $sesli = 9;
                    } elseif ($tablo == "tr") {
                        $s = 12;
                    } elseif ($tablo == "en") {
                        $s = 9;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "J") {
                    if ($tablo == "modern") {
                        $s = 1;
                        $sessiz = 1;
                    } elseif ($tablo == "tr") {
                        $s = 13;
                    } elseif ($tablo == "en") {
                        $s = 10;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "K") {
                    if ($tablo == "modern") {
                        $s = 2;
                        $sessiz = 2;
                    } elseif ($tablo == "tr") {
                        $s = 14;
                    } elseif ($tablo == "en") {
                        $s = 11;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "L") {
                    if ($tablo == "modern") {
                        $s = 3;
                        $sessiz = 3;
                    } elseif ($tablo == "tr") {
                        $s = 15;
                    } elseif ($tablo == "en") {
                        $s = 12;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "M") {
                    if ($tablo == "modern") {
                        $s = 4;
                        $sessiz = 4;
                    } elseif ($tablo == "tr") {
                        $s = 16;
                    } elseif ($tablo == "en") {
                        $s = 13;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "N") {
                    if ($tablo == "modern") {
                        $s = 5;
                        $sessiz = 5;
                    } elseif ($tablo == "tr") {
                        $s = 17;
                    } elseif ($tablo == "en") {
                        $s = 14;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "O") {
                    if ($tablo == "modern") {
                        $s = 6;
                        $sesli = 6;
                    } elseif ($tablo == "tr") {
                        $s = 18;
                    } elseif ($tablo == "en") {
                        $s = 15;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "Ö") {
                    if ($tablo == "modern") {
                        $s = 6;
                        $sesli = 6;
                    } elseif ($tablo == "tr") {
                        $s = 19;
                    } elseif ($tablo == "en") {
                        $s = 15;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "P") {
                    if ($tablo == "modern") {
                        $s = 7;
                        $sessiz = 7;
                    } elseif ($tablo == "tr") {
                        $s = 20;
                    } elseif ($tablo == "en") {
                        $s = 16;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "Q") {
                    if ($tablo == "modern") {
                        $s = 8;
                        $sessiz = 8;
                    } elseif ($tablo == "tr") {
                        $s = 0;
                    } elseif ($tablo == "en") {
                        $s = 17;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "R") {
                    if ($tablo == "modern") {
                        $s = 9;
                        $sessiz = 9;
                    } elseif ($tablo == "tr") {
                        $s = 21;
                    } elseif ($tablo == "en") {
                        $s = 18;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "S") {
                    if ($tablo == "modern") {
                        $s = 1;
                        $sessiz = 1;
                    } elseif ($tablo == "tr") {
                        $s = 22;
                    } elseif ($tablo == "en") {
                        $s = 19;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "Ş") {
                    if ($tablo == "modern") {
                        $s = 1;
                        $sessiz = 1;
                    } elseif ($tablo == "tr") {
                        $s = 23;
                    } elseif ($tablo == "en") {
                        $s = 19;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "T") {
                    if ($tablo == "modern") {
                        $s = 2;
                        $sessiz = 2;
                    } elseif ($tablo == "tr") {
                        $s = 24;
                    } elseif ($tablo == "en") {
                        $s = 20;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "U") {
                    if ($tablo == "modern") {
                        $s = 3;
                        $sesli = 3;
                    } elseif ($tablo == "tr") {
                        $s = 25;
                    } elseif ($tablo == "en") {
                        $s = 21;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "Ü") {
                    if ($tablo == "modern") {
                        $s = 3;
                        $sesli = 3;
                    } elseif ($tablo == "tr") {
                        $s = 26;
                    } elseif ($tablo == "en") {
                        $s = 21;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "V") {
                    if ($tablo == "modern") {
                        $s = 4;
                        $sessiz = 4;
                    } elseif ($tablo == "tr") {
                        $s = 27;
                    } elseif ($tablo == "en") {
                        $s = 22;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "W") {
                    if ($tablo == "modern") {
                        $s = 5;
                        $sessiz = 5;
                    } elseif ($tablo == "tr") {
                        $s = 0;
                    } elseif ($tablo == "en") {
                        $s = 23;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "X") {
                    if ($tablo == "modern") {
                        $s = 6;
                        $sessiz = 6;
                    } elseif ($tablo == "tr") {
                        $s = 0;
                    } elseif ($tablo == "en") {
                        $s = 24;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "Y") {
                    if ($tablo == "modern") {
                        $s = 7;
                        $sessiz = 7;
                    } elseif ($tablo == "tr") {
                        $s = 28;
                    } elseif ($tablo == "en") {
                        $s = 25;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "Z") {
                    if ($tablo == "modern") {
                        $s = 8;
                        $sessiz = 8;
                    } elseif ($tablo == "tr") {
                        $s = 29;
                    } elseif ($tablo == "en") {
                        $s = 26;
                    } else {
                        $err = 1;
                    }
                } elseif (in_array($choosen, ["ا", "أ", "إ", "آ", "ء", "ى", "ئ"], true)) {
                    if (in_array($tablo, ["arb(ebced)", "arb(mebced)", "arb(hica)", "arb(mhica)", "osman"], true)) {
                        $s = 1;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "ب") {
                    if (in_array($tablo, ["arb(ebced)", "arb(mebced)", "arb(hica)", "arb(mhica)", "osman"], true)) {
                        $s = 2;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "ﭖ") {
                    if (in_array($tablo, ["osman"], true)) {
                        $s = 3;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "ت") {
                    if (in_array($tablo, ["arb(ebced)", "arb(mebced)"], true)) {
                        $s = 22;
                    } elseif (in_array($tablo, ["arb(hica)", "arb(mhica)"], true)) {
                        $s = 3;
                    } elseif (in_array($tablo, ["osman"], true)) {
                        $s = 4;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "ث") {
                    if (in_array($tablo, ["arb(ebced)", "arb(mebced)"], true)) {
                        $s = 23;
                    } elseif (in_array($tablo, ["arb(hica)", "arb(mhica)"], true)) {
                        $s = 4;
                    } elseif (in_array($tablo, ["osman"], true)) {
                        $s = 5;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "ج") {
                    if (in_array($tablo, ["arb(ebced)", "arb(mebced)"], true)) {
                        $s = 3;
                    } elseif (in_array($tablo, ["arb(hica)", "arb(mhica)"], true)) {
                        $s = 5;
                    } elseif (in_array($tablo, ["osman"], true)) {
                        $s = 6;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "ﭺ") {
                    if (in_array($tablo, ["osman"], true)) {
                        $s = 7;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "ح") {
                    if (in_array($tablo, ["arb(ebced)", "arb(mebced)"], true)) {
                        $s = 8;
                    } elseif (in_array($tablo, ["arb(hica)", "arb(mhica)"], true)) {
                        $s = 6;
                    } elseif (in_array($tablo, ["osman"], true)) {
                        $s = 8;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "خ") {
                    if (in_array($tablo, ["arb(ebced)", "arb(mebced)"], true)) {
                        $s = 24;
                    } elseif (in_array($tablo, ["arb(hica)", "arb(mhica)"], true)) {
                        $s = 7;
                    } elseif (in_array($tablo, ["osman"], true)) {
                        $s = 9;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "د") {
                    if (in_array($tablo, ["arb(ebced)", "arb(mebced)"], true)) {
                        $s = 4;
                    } elseif (in_array($tablo, ["arb(hica)", "arb(mhica)"], true)) {
                        $s = 8;
                    } elseif (in_array($tablo, ["osman"], true)) {
                        $s = 10;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "ذ") {
                    if (in_array($tablo, ["arb(ebced)", "arb(mebced)"], true)) {
                        $s = 25;
                    } elseif (in_array($tablo, ["arb(hica)", "arb(mhica)"], true)) {
                        $s = 9;
                    } elseif (in_array($tablo, ["osman"], true)) {
                        $s = 11;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "ر") {
                    if (in_array($tablo, ["arb(ebced)", "arb(mebced)"], true)) {
                        $s = 20;
                    } elseif (in_array($tablo, ["arb(hica)", "arb(mhica)"], true)) {
                        $s = 10;
                    } elseif (in_array($tablo, ["osman"], true)) {
                        $s = 12;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "ز") {
                    if (in_array($tablo, ["arb(ebced)", "arb(mebced)"], true)) {
                        $s = 7;
                    } elseif (in_array($tablo, ["arb(hica)", "arb(mhica)"], true)) {
                        $s = 11;
                    } elseif (in_array($tablo, ["osman"], true)) {
                        $s = 13;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "ﮊ") {
                    if (in_array($tablo, ["osman"], true)) {
                        $s = 14;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "س") {
                    if ($tablo == "arb(ebced)") {
                        $s = 15;
                    } elseif ($tablo == "arb(mebced)") {
                        $s = 21;
                    } elseif ($tablo == "arb(hica)") {
                        $s = 12;
                    } elseif ($tablo == "arb(mhica)") {
                        $s = 24;
                    } elseif ($tablo == "osman") {
                        $s = 15;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "ش") {
                    if ($tablo == "arb(ebced)") {
                        $s = 21;
                    } elseif ($tablo == "arb(mebced)") {
                        $s = 28;
                    } elseif ($tablo == "arb(hica)") {
                        $s = 13;
                    } elseif ($tablo == "arb(mhica)") {
                        $s = 25;
                    } elseif ($tablo == "osman") {
                        $s = 16;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "ص") {
                    if ($tablo == "arb(ebced)") {
                        $s = 18;
                    } elseif ($tablo == "arb(mebced)") {
                        $s = 15;
                    } elseif ($tablo == "arb(hica)") {
                        $s = 14;
                    } elseif ($tablo == "arb(mhica)") {
                        $s = 18;
                    } elseif ($tablo == "osman") {
                        $s = 17;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "ض") {
                    if ($tablo == "arb(ebced)") {
                        $s = 26;
                    } elseif ($tablo == "arb(mebced)") {
                        $s = 18;
                    } elseif ($tablo == "arb(hica)") {
                        $s = 15;
                    } elseif ($tablo == "arb(mhica)") {
                        $s = 19;
                    } elseif ($tablo == "osman") {
                        $s = 18;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "ط") {
                    if (in_array($tablo, ["arb(ebced)", "arb(mebced)"], true)) {
                        $s = 9;
                    } elseif ($tablo == "arb(hica)") {
                        $s = 16;
                    } elseif ($tablo == "arb(mhica)") {
                        $s = 12;
                    } elseif ($tablo == "osman") {
                        $s = 19;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "ظ") {
                    if ($tablo == "arb(ebced)") {
                        $s = 27;
                    } elseif ($tablo == "arb(mebced)") {
                        $s = 26;
                    } elseif ($tablo == "arb(hica)") {
                        $s = 17;
                    } elseif ($tablo == "arb(mhica)") {
                        $s = 13;
                    } elseif ($tablo == "osman") {
                        $s = 20;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "ع") {
                    if (in_array($tablo, ["arb(ebced)", "arb(mebced)"], true)) {
                        $s = 16;
                    } elseif ($tablo == "arb(hica)") {
                        $s = 18;
                    } elseif ($tablo == "arb(mhica)") {
                        $s = 20;
                    } elseif ($tablo == "osman") {
                        $s = 21;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "غ") {
                    if ($tablo == "arb(ebced)") {
                        $s = 28;
                    } elseif ($tablo == "arb(mebced)") {
                        $s = 17;
                    } elseif ($tablo == "arb(hica)") {
                        $s = 19;
                    } elseif ($tablo == "arb(mhica)") {
                        $s = 21;
                    } elseif ($tablo == "osman") {
                        $s = 22;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "ف") {
                    if (in_array($tablo, ["arb(ebced)", "arb(mebced)"], true)) {
                        $s = 17;
                    } elseif ($tablo == "arb(hica)") {
                        $s = 20;
                    } elseif ($tablo == "arb(mhica)") {
                        $s = 22;
                    } elseif ($tablo == "osman") {
                        $s = 23;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "ق") {
                    if (in_array($tablo, ["arb(ebced)", "arb(mebced)"], true)) {
                        $s = 19;
                    } elseif ($tablo == "arb(hica)") {
                        $s = 21;
                    } elseif ($tablo == "arb(mhica)") {
                        $s = 23;
                    } elseif ($tablo == "osman") {
                        $s = 24;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "ك") {
                    if (in_array($tablo, ["arb(ebced)", "arb(mebced)"], true)) {
                        $s = 11;
                    } elseif ($tablo == "arb(hica)") {
                        $s = 22;
                    } elseif ($tablo == "arb(mhica)") {
                        $s = 14;
                    } elseif ($tablo == "osman") {
                        $s = 25;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "ﮒ") {
                    if (in_array($tablo, ["osman"], true)) {
                        $s = 26;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "ﯓ") {
                    if (in_array($tablo, ["osman"], true)) {
                        $s = 27;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "ل") {
                    if (in_array($tablo, ["arb(ebced)", "arb(mebced)"], true)) {
                        $s = 12;
                    } elseif ($tablo == "arb(hica)") {
                        $s = 23;
                    } elseif ($tablo == "arb(mhica)") {
                        $s = 15;
                    } elseif ($tablo == "osman") {
                        $s = 28;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "م") {
                    if (in_array($tablo, ["arb(ebced)", "arb(mebced)"], true)) {
                        $s = 13;
                    } elseif ($tablo == "arb(hica)") {
                        $s = 24;
                    } elseif ($tablo == "arb(mhica)") {
                        $s = 16;
                    } elseif ($tablo == "osman") {
                        $s = 29;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "ن") {
                    if (in_array($tablo, ["arb(ebced)", "arb(mebced)"], true)) {
                        $s = 14;
                    } elseif ($tablo == "arb(hica)") {
                        $s = 25;
                    } elseif ($tablo == "arb(mhica)") {
                        $s = 17;
                    } elseif ($tablo == "osman") {
                        $s = 30;
                    } else {
                        $err = 1;
                    }
                } elseif (in_array($choosen, ["و", "ؤ"], true)) {
                    if (in_array($tablo, ["arb(ebced)", "arb(mebced)"], true)) {
                        $s = 6;
                    } elseif (in_array($tablo, ["arb(hica)", "arb(mhica)"], true)) {
                        $s = 27;
                    } elseif (in_array($tablo, ["osman"], true)) {
                        $s = 31;
                    } else {
                        $err = 1;
                    }
                } elseif (in_array($choosen, ["ه", "ة"], true)) {
                    if (in_array($tablo, ["arb(ebced)", "arb(mebced)"], true)) {
                        $s = 5;
                    } elseif (in_array($tablo, ["arb(hica)", "arb(mhica)"], true)) {
                        $s = 26;
                    } elseif (in_array($tablo, ["osman"], true)) {
                        $s = 32;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "ﻻ") {
                    if (in_array($tablo, ["osman"], true)) {
                        $s = 33;
                    } else {
                        $err = 1;
                    }
                } elseif ($choosen == "ي") {
                    if (in_array($tablo, ["arb(ebced)", "arb(mebced)"], true)) {
                        $s = 10;
                    } elseif (in_array($tablo, ["arb(hica)", "arb(mhica)"], true)) {
                        $s = 28;
                    } elseif (in_array($tablo, ["osman"], true)) {
                        $s = 34;
                    } else {
                        $err = 1;
                    }
                } else {
                    $n += 1;
                    if (in_array($choosen, ["ّ"], true)) {
                        if ($shadda == 1) {
                            $s = 0;
                        } elseif ($shadda == 2) {
                            $C = 1;
                            $s = 0;
                            while ($s == 0) {
                                $C += 1;
                                $s = self::numerolog($chars[$T - $C], $tablo, $outas, 1);
                            }
                        } else {
                            $err = 3;
                        }
                        $hrk += 1;
                    } elseif (in_array($choosen, ["ٰ"], true)) {
                        $C = 1;
                        $s = 0;
                        while ($s == 0) {
                            $C += 1;
                            if ($chars[$T - $C] == "ـ") {
                                $s = self::numerolog("ا", $tablo, $outas, 1);
                            }
                        }
                    } elseif (in_array($choosen, [" "], true)) {
                        $space += 1;
                        $s = 0;
                    } elseif (in_array($choosen, ["\n", "\r"], true)) {
                        $newline += 0.5;
                    } elseif (in_array($choosen, ["َ", "ِ", "ً", "ٍ", "ُ", "ْ", "ٌ", "ـ"], true)) {
                        $hrk += 1;
                        $s = 0;
                    } else {
                        $nitem .= $choosen;
                        $err = 2;
                    }
                }
                if ($err == 1) {
                    $nesoohc .= $choosen;
                    $D += 1;
                } else {
                    $SM += $s;
                    $seslit += $sesli;
                    $sessizt += $sessiz;
                }
                $T += 1;
            }
        }
        if ($err == 0) {
            if ($outas == "sesli") {
                return self::rakamtopla($seslit, 1);
            } elseif ($outas == "sessiz") {
                return self::rakamtopla($sessizt, 1);
            } elseif ($outas == "tam") {
                return $SM;
            } elseif ($outas == "hepsi") {
                return self::rakamtopla($SM, 0);
            } elseif (is_numeric($outas) && floatval($outas) > 0) {
                return self::rakamtopla($SM, floatval($outas));
            } else {
                return "Çıktı türü?";
            }
        } elseif ($err == 1) {
            return $nesoohc . " (" . $D . " karakter '" . $tablo . "' için tanımsız)";
        } elseif ($err == 2) {
            return $nitem . " (" . strval($n - $space + $hrk) . " karakter yöntemlerde tanımsız)";
        } elseif ($err == 3) {
            return "Şedde Ayarı?";
        }
        return "";
    }
}

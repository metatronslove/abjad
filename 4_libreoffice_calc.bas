Function ABJAD(Optional metin As String, Optional tablo As Variant, Optional shadda As Variant, Optional detail As Variant) As Variant
    Dim SM, S, N    As Double : SM = 0 : N = 0 : S = 0
    Dim SH, counter, err, space, hrk As Integer : SH = 0 : err = 0 : space = 0 : hrk = 0
    Dim SN, choosen, nitem As String : nitem = "" : SN = ""
    For counter = 1 To LEN(metin)
        choosen = MID(metin, counter, 1)
        Select Case choosen
        Case "ا", "أ", "إ", "آ", "ء", "ى"
            Select Case tablo
            Case 1, 4, 5, 7, 10, 12, 15 : S = 1
            Case 0, 6, 11 : S = CDbl(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CDbl(ABJAD("الف", tablo - 1, 1))
            Case 3, 9, 14 : S = CDbl(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case Else : err = 1
            End Select
        Case "ؤ"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 7
            Case 12, 15 : S = 6
            Case 0, 6, 11 : S = CDbl(ASGAR("و", tablo + 1)) + CDbl(ASGAR("ا", tablo + 1))
            Case 2, 8, 13 : S = CDbl(ABJAD("الف", tablo - 1, 1)) + CDbl(ABJAD("واو", tablo - 1, 1))
            Case 3, 9, 14 : S = CDbl(BASTET("و", 1, -1 - (tablo - 2), 1, "ARABIC")) + CDbl(BASTET("ا", 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ئ"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 11
            Case 12, 15 : S = 7
            Case 0, 6, 11 : S = CDbl(ASGAR("ي", tablo + 1)) + CDbl(ASGAR("ا", tablo + 1))
            Case 2, 8, 13 : S = CDbl(ABJAD("الف", tablo - 1, 1)) + CDbl(ABJAD("يا", tablo - 1, 1))
            Case 3, 9, 14 : S = CDbl(BASTET("ي", 1, -1 - (tablo - 2), 1, "ARABIC")) + CDbl(BASTET("ا", 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ۀ"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 15
            Case 12, 15 : S = 13
            Case 0, 6, 11 : S = CDbl(ASGAR("ي", tablo + 1)) + CDbl(ASGAR("ه", tablo + 1))
            Case 2, 8, 13 : S = CDbl(ABJAD("يا", tablo - 1, 1)) + CDbl(ABJAD("ها", tablo - 1, 1))
            Case 3, 9, 14 : S = CDbl(BASTET("ي", 1, -1 - (tablo - 2), 1, "ARABIC")) + CDbl(BASTET("ه", 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ب", "ﭖ"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 2
            Case 12, 15 : S = 9
            Case 0, 6, 11 : S = CDbl(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CDbl(ABJAD("با", tablo - 1, 1))
            Case 3, 9, 14 : S = CDbl(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ج", "ﭺ"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 3
            Case 12, 15 : S = 100
            Case 0, 6, 11 : S = CDbl(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CDbl(ABJAD("جيم", tablo - 1, 1))
            Case 3, 9, 14 : S = CDbl(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "د"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 4
            Case 12, 15 : S = 70
            Case 0, 6, 11 : S = CDbl(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CDbl(ABJAD("دال", tablo - 1, 1))
            Case 3, 9, 14 : S = CDbl(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ه", "ة"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 5
            Case 12, 15 : S = 7
            Case 0, 6, 11 : S = CDbl(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CDbl(ABJAD("ها", tablo - 1, 1))
            Case 3, 9, 14 : S = CDbl(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "و"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 6
            Case 12, 15 : S = 5
            Case 0, 6, 11 : S = CDbl(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CDbl(ABJAD("واو", tablo - 1, 1))
            Case 3, 9, 14 : S = CDbl(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ز", "ﮊ"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 7
            Case 12, 15 : S = 600
            Case 0, 6, 11 : S = CDbl(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CDbl(ABJAD("زا", tablo - 1, 1))
            Case 3, 9, 14 : S = CDbl(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ح"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 8
            Case 12, 15 : S = 90
            Case 0, 6, 11 : S = CDbl(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CDbl(ABJAD("حا", tablo - 1, 1))
            Case 3, 9, 14 : S = CDbl(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ط"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 9
            Case 12, 15 : S = 800
            Case 0, 6, 11 : S = CDbl(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CDbl(ABJAD("طا", tablo - 1, 1))
            Case 3, 9, 14 : S = CDbl(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ی", "ي"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 10
            Case 12, 15 : S = 6
            Case 0, 6, 11 : S = CDbl(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CDbl(ABJAD("يا", tablo - 1, 1))
            Case 3, 9, 14 : S = CDbl(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ك", "ﮒ", "ک"
            Select Case tablo
            Case 1, 4, 7, 10, 12, 15 : S = 20
            Case 0, 6, 11 : S = CDbl(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CDbl(ABJAD("كاف", tablo - 1, 1))
            Case 3, 9, 14 : S = CDbl(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ل"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 30
            Case 12, 15 : S = 2
            Case 0, 6, 11 : S = CDbl(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CDbl(ABJAD("لام", tablo - 1, 1))
            Case 3, 9, 14 : S = CDbl(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ﻻ"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 31
            Case 12, 15 : S = 3
            Case 0, 6, 11 : S = CDbl(ASGAR("ا", tablo + 1)) + CDbl(ASGAR("ل", tablo + 1))
            Case 2, 8, 13 : S = CDbl(ABJAD("لام الف", tablo - 1, 1))
            Case 3, 9, 14 : S = CDbl(BASTET("لا", 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 2
            Case Else : err = 1
            End Select
        Case "م"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 40
            Case 12, 15 : S = 4
            Case 0, 6, 11 : S = CDbl(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CDbl(ABJAD("ميم", tablo - 1, 1))
            Case 3, 9, 14 : S = CDbl(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ن", "ﯓ"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 50
            Case 12, 15 : S = 3
            Case 0, 6, 11 : S = CDbl(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CDbl(ABJAD("نون", tablo - 1, 1))
            Case 3, 9, 14 : S = CDbl(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "س"
            Select Case tablo
            Case 1, 4, 12, 15 : S = 60
            Case 7, 10 : S = 300
            Case 0, 6, 11 : S = CDbl(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CDbl(ABJAD("سين", tablo - 1, 1))
            Case 3, 9, 14 : S = CDbl(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ع"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 70
            Case 12, 15 : S = 30
            Case 0, 6, 11 : S = CDbl(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CDbl(ABJAD("عين", tablo - 1, 1))
            Case 3, 9, 14 : S = CDbl(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ف"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 80
            Case 12, 15 : S = 40
            Case 0, 6, 11 : S = CDbl(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CDbl(ABJAD("فا", tablo - 1, 1))
            Case 3, 9, 14 : S = CDbl(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ص"
            Select Case tablo
            Case 1, 4 : S = 90
            Case 7, 10 : S = 60
            Case 12, 15 : S = 400
            Case 0, 6, 11 : S = CDbl(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CDbl(ABJAD("صاد", tablo - 1, 1))
            Case 3, 9, 14 : S = CDbl(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ق"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 100
            Case 12, 15 : S = 50
            Case 0, 6, 11 : S = CDbl(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CDbl(ABJAD("قاف", tablo - 1, 1))
            Case 3, 9, 14 : S = CDbl(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ر"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 200
            Case 12, 15 : S = 80
            Case 0, 6, 11 : S = CDbl(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CDbl(ABJAD("را", tablo - 1, 1))
            Case 3, 9, 14 : S = CDbl(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ش"
            Select Case tablo
            Case 1, 4, 12, 15 : S = 300
            Case 7, 10 : S = 1000
            Case 0, 6, 11 : S = CDbl(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CDbl(ABJAD("شين", tablo - 1, 1))
            Case 3, 9, 14 : S = CDbl(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ت"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 400
            Case 12, 15 : S = 10
            Case 0, 6, 11 : S = CDbl(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CDbl(ABJAD("تا", tablo - 1, 1))
            Case 3, 9, 14 : S = CDbl(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ث"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 500
            Case 12, 15 : S = 700
            Case 0, 6, 11 : S = CDbl(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CDbl(ABJAD("ثا", tablo - 1, 1))
            Case 3, 9, 14 : S = CDbl(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "خ"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 600
            Case 12, 15 : S = 200
            Case 0, 6, 11 : S = CDbl(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CDbl(ABJAD("خا", tablo - 1, 1))
            Case 3, 9, 14 : S = CDbl(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ذ"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 700
            Case 12, 15 : S = 80
            Case 0, 6, 11 : S = CDbl(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CDbl(ABJAD("ذال", tablo - 1, 1))
            Case 3, 9, 14 : S = CDbl(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ض"
            Select Case tablo
            Case 1, 4 : S = 800
            Case 7, 10 : S = 90
            Case 12, 15 : S = 500
            Case 0, 6, 11 : S = CDbl(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CDbl(ABJAD("ضاد", tablo - 1, 1))
            Case 3, 9, 14 : S = CDbl(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ظ"
            Select Case tablo
            Case 1, 4 : S = 900
            Case 7, 10 : S = 800
            Case 12, 15 : S = 1000
            Case 0, 6, 11 : S = CDbl(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CDbl(ABJAD("ظا", tablo - 1, 1))
            Case 3, 9, 14 : S = CDbl(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "غ"
            Select Case tablo
            Case 1, 4 : S = 1000
            Case 7, 10, 12, 15 : S = 900
            Case 0, 6, 11 : S = CDbl(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CDbl(ABJAD("غين", tablo - 1, 1))
            Case 3, 9, 14 : S = CDbl(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "א"
            Select Case tablo
            Case 1, 4 : S = 1
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("אלף", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ב"
            Select Case tablo
            Case 1, 4 : S = 2
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("בית", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ג"
            Select Case tablo
            Case 1, 4 : S = 3
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("גימל", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ד"
            Select Case tablo
            Case 1, 4 : S = 4
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("דלת", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ה"
            Select Case tablo
            Case 1, 4 : S = 5
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("הא", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ו"
            Select Case tablo
            Case 1, 4 : S = 6
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("וו", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ז"
            Select Case tablo
            Case 1, 4 : S = 7
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("זין", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ח"
            Select Case tablo
            Case 1, 4 : S = 8
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("חית", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ט"
            Select Case tablo
            Case 1, 4 : S = 9
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("טיח", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "י"
            Select Case tablo
            Case 1, 4 : S = 10
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("יוד", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "כ"
            Select Case tablo
            Case 1, 4 : S = 20
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("כף", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ל"
            Select Case tablo
            Case 1, 4 : S = 30
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("למד", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "מ"
            Select Case tablo
            Case 1, 4 : S = 40
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("מם", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "נ"
            Select Case tablo
            Case 1, 4 : S = 50
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("נון", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ס"
            Select Case tablo
            Case 1, 4 : S = 60
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("סמך", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ע"
            Select Case tablo
            Case 1, 4 : S = 70
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("עין", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "פ"
            Select Case tablo
            Case 1, 4 : S = 80
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("פא", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "צ"
            Select Case tablo
            Case 1, 4 : S = 90
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("צדי", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ק"
            Select Case tablo
            Case 1, 4 : S = 100
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("קוף", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ר"
            Select Case tablo
            Case 1, 4 : S = 200
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("ריש", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ש"
            Select Case tablo
            Case 1, 4 : S = 300
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("שין", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ת"
            Select Case tablo
            Case 1, 4 : S = 400
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("תו", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ך"
            Select Case tablo
            Case 1, 4 : S = 500
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("ךף", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ם"
            Select Case tablo
            Case 1, 4 : S = 600
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("םם", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ן"
            Select Case tablo
            Case 1, 4 : S = 700
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("וןן", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ף"
            Select Case tablo
            Case 1, 4 : S = 800
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("ףא", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ץ"
            Select Case tablo
            Case 1, 4 : S = 900
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("ץדי", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "A", "a"
            Select Case tablo
            Case 1, 4 : S = 1
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("aa", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "B", "b"
            Select Case tablo
            Case 1, 4 : S = 2
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("be", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "C", "c", "Ç", "ç"
            Select Case tablo
            Case 1, 4 : S = 3
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("ce", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "D", "d"
            Select Case tablo
            Case 1, 4 : S = 4
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("de", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "E", "e"
            Select Case tablo
            Case 1, 4 : S = 5
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("ee", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "F", "f"
            Select Case tablo
            Case 1, 4 : S = 6
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("fe", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "G", "g"
            Select Case tablo
            Case 1, 4 : S = 7
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("ge", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "Ğ", "ğ"
            Select Case tablo
            Case 1, 4 : S = 8
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("yumuşakge", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "H", "h"
            Select Case tablo
            Case 1, 4 : S = 9
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("He", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "I", "ı"
            Select Case tablo
            Case 1, 4 : S = 10
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("ıı", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "İ", "i"
            Select Case tablo
            Case 1, 4 : S = 20
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("ii", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "J", "j"
            Select Case tablo
            Case 1, 4 : S = 30
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("je", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "K", "k"
            Select Case tablo
            Case 1, 4 : S = 40
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("ke", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "L", "l"
            Select Case tablo
            Case 1, 4 : S = 50
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("le", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "M", "m"
            Select Case tablo
            Case 1, 4 : S = 60
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("me", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "N", "n"
            Select Case tablo
            Case 1, 4 : S = 70
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("ne", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "O", "o"
            Select Case tablo
            Case 1, 4 : S = 80
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("oo", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "Ö", "ö"
            Select Case tablo
            Case 1, 4 : S = 90
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("öö", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "P", "p"
            Select Case tablo
            Case 1, 4 : S = 100
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("pe", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "R", "r"
            Select Case tablo
            Case 1, 4 : S = 200
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("re", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "S", "s"
            Select Case tablo
            Case 1, 4 : S = 300
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("se", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "Ş", "ş"
            Select Case tablo
            Case 1, 4 : S = 400
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("şe", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "T", "t"
            Select Case tablo
            Case 1, 4 : S = 500
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("te", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "U", "u"
            Select Case tablo
            Case 1, 4 : S = 600
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("uu", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "Ü", "ü"
            Select Case tablo
            Case 1, 4 : S = 700
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("üü", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "V", "v"
            Select Case tablo
            Case 1, 4 : S = 800
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("ve", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "Y", "y"
            Select Case tablo
            Case 1, 4 : S = 900
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("ye", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "Z", "z"
            Select Case tablo
            Case 1, 4 : S = 1000
            Case 0 : S = CDbl(ASGAR(choosen, 1))
            Case 2 : S = CDbl(ABJAD("ze", 1, 1))
            Case 3 : S = CDbl(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case Else
            S = 0 : N = N + 1
            Select Case choosen
            Case "ّ"
                Select Case shadda
                Case 1 : S = 0
                Case 2
                    C = 1
                    Do
                        choosen = MID(metin, counter - C, 1)
                        S = CDbl(ABJAD(choosen, tablo, 1))
                        C = C + 1
                    Loop Until SAF(choosen, "") <> ""
                    SH = SH + 1
                Case Else : err = 3
                End Select
                hrk = hrk + 1
            Case "ٰ"
                C = 1
                Do
                    choosen = MID(metin, counter - C, 1)
                    If choosen = "ـ" Then S = CDbl(ABJAD("ا", tablo, 1))
                    C = C + 1
                Loop Until SAF(choosen, "") <> "" Or choosen = "ـ"
            Case " " : space = space + 1
            Case Chr(10)
            Case Chr(13)
            Case "َ", "ِ", "ً", "ٍ", "ُ", "ْ", "ٌ", "ـ" : hrk = hrk + 1
            Case Else : nitem = nitem + choosen : err = 2
            End Select
        End Select
        Select Case detail
        Case 1
            Select Case SAF(choosen, "")
            Case " "
            Case "ا" : SN = SN & "[" & "ا" & "=" & S & "]"
            Case choosen : SN = SN & "[" & choosen & "=" & S & "]"
            End Select
        Case Else : SM = SM + S
        End Select
    Next
    Select Case tablo
    Case 4, 10, 15
        Select Case detail
        Case 1 : SN = SN & "[+" & ((LEN(metin) - N) + SH) & " harf]"
        Case Else : SM = SM + ((LEN(metin) - N) + SH)
        End Select
    Case Else
    End Select
    Select Case err
    Case 0
        Select Case detail
        Case 1 : ABJAD = SN
        Case Else : ABJAD = SM
        End Select
    Case 1 : ABJAD = "Tablo Kodu?"
    Case 2 : ABJAD = N - (space + hrk) & " Tanımsız:" & nitem & "||" & space & " boşluk||" & hrk & " hareke"
    Case 3 : ABJAD = "Şedde Ayarı?"
    End Select
    ReDim S, SM, N
End Function
Function WORDBYWORD(Optional klmmetin As String, Optional tablo As Variant, Optional shadda As Variant, Optional detail As Variant) As String
    'Bu fonksiyonu kullandığınız hücreler için metin Kaydır seçeneğini etkinleştirirseniz daha düzgün çalışıyor, parametreleri ABJAD() fonksiyonuyla aynı'
    Dim content, word As String
    content = ""
    word = ""
    klmmetin = klmmetin & " "
    For counter = 1 To LEN(klmmetin)
        klmchoosen = MID(klmmetin, counter, 1)
        word = word + klmchoosen
        Select Case klmchoosen
        Case " ", Chr(10)
            calculation =  "("  & ABJAD(word, tablo, shadda, detail) & ")" & klmchoosen
            content = content & word & ALTAYAZ(calculation)
            word = ""
            calculation = ""
        Case Else
        End Select
    Next
    ReDim word, calculation, content
    WORDBYWORD = content
End Function
Function BASTET(Optional metin As String, Optional MT As Variant, Optional tablo As Variant, Optional shadda As Variant, Optional language As Variant, Optional  detail As Variant) As Variant
    Dim HM, invertablo, err As Integer : err = 0
    Dim Baster, NS As String
    Select Case CStr(CDbl(metin))
    Case metin
        Baster = metin
    Case Else
        Select Case tablo
        Case 0 To 15 : Baster = ABJAD(metin, tablo, shadda)
        Case -16 To -1 : invertablo = (-1 * tablo) - 1 : Baster = ABJAD(metin, invertablo, shadda)
        End Select
    End Select
    For HM = 1 To MT
        NS = ""
        NS = NUTKET(Baster, UCase(language))
        Baster = 0
        Select Case tablo
        Case 0 To 15 : Baster = CDbl(ABJAD(NS, tablo, 1)) + CDbl(ABJAD(NS, 5, 1))
        Case -16 To -1 : invertablo = (-1 * tablo) - 1 : Baster = CDbl(ABJAD(NS, invertablo, 1))
        Case Else : Baster = "Tablo Kodu?"
        End Select
    Next HM
    Select Case err
    Case 0
        Select Case detail
        Case 1 : BASTET =  NS
        Case Else : BASTET = Baster
        End Select
    Case 1 : BASTET = "Dil Tanımı?"
    Case Else
    End Select
End Function
Function UNSUR(Optional metin, Optional otabiat As Variant, Optional otype As Variant, Optional shadda As Integer, Optional guide As Variant) As String
    Dim counter, adet As Integer
    Dim choosen, liste As String
    For counter = 1 To LEN(metin)
        choosen = MID(metin, counter, 1)
        If shadda = 2 Then
            C = 1
            If choosen = "ّ" Then
                Do
                    choosen = MID(metin, counter - C, 1)
                    C = C + 1
                Loop Until SAF(choosen, "") <> ""
            Else
            End If
        End If
        Select Case UCase(choosen)
        Case "ا", "ب", "ج", "س", "ص", "ر", "خ", "ه", "ز", "ح", "ط", "ي", "ی", "ل", "ة", "ث", "د", "ك", "ع", "ف", "ق", "ش", "ض", "و", "م", "ن", "ت", "ذ", "ظ", "غ" : selected = selected & choosen
        Case "أ", "إ", "آ", "ء", "ى" : selected = selected & "ا"
        Case "ؤ" : selected = selected & "و" & "ا"
        Case "ۀ" : selected = selected & "ه" & "ي"
        Case "ئ" : selected = selected & "ي" & "ا"
        Case "א", "ב", "ג", "ד", "ה", "ו", "ז", "ח", "ט", "י", "כ", "ל", "מ", "נ", "ס", "ע", "פ", "צ", "ק", "ר", "ש", "ת", "ם", "ן", "ף", "ץ", "ך" : selected = selected & choosen
        Case "A", "B", "C", "Ç", "D", "E", "F", "G", "Ğ", "H", "I", "İ", "J", "K", "L", "M", "N", "O", "Ö", "P", "R", "S", "Ş", "T", "U", "Ü", "V", "Y", "Z" : selected = selected & UCase(choosen)
        End Select
    Next counter
    Select Case guide
    Case "TURKCE", 0
        Select Case otype
        Case "fire", "ateş", 0
            For counter = 1 To LEN(selected)
                choosen = MID(selected, counter, 1)
                Select Case choosen
                Case "A", "D", "Ğ", "J", "N", "R", "U", "Z"
                    liste = liste & choosen & " "
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "air", "hava", 1
            For counter = 1 To LEN(selected)
                choosen = MID(selected, counter, 1)
                Select Case choosen
                Case "B", "E", "H", "K", "O", "S", "Ü"
                    liste = liste & choosen & " "
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "water", "su", 2
            For counter = 1 To LEN(selected)
                choosen = MID(selected, counter, 1)
                Select Case choosen
                Case "C", "F", "I", "L", "Ö", "Ş", "V"
                    liste = liste & choosen & " "
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "earth", "toprak", 3
            For counter = 1 To LEN(selected)
                choosen = MID(selected, counter, 1)
                Select Case choosen
                Case "Ç", "G", "İ", "M", "P", "T", "Y"
                    liste = liste & choosen & " "
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        End Select
    Case "ARABI", 1
        Select Case otype
        Case "fire", "ateş", 0
            For counter = 1 To LEN(selected)
                choosen = MID(selected, counter, 1)
                Select Case choosen
                Case "ا", "ه", "ط", "م", "ف", "ش", "ذ"
                    liste = liste & choosen & " "
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "air", "hava", 1
            For counter = 1 To LEN(selected)
                choosen = MID(selected, counter, 1)
                Select Case choosen
                Case "د", "ح", "ل", "ع", "ر", "خ", "غ"
                    liste = liste & choosen & " "
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "water", "su", 2
            For counter = 1 To LEN(selected)
                choosen = MID(selected, counter, 1)
                Select Case choosen
                Case "ب", "و", "ن", "ي", "ی", "ص", "ت", "ض"
                    liste = liste & choosen & " "
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "earth", "toprak", 3
            For counter = 1 To LEN(selected)
                choosen = MID(selected, counter, 1)
                Select Case choosen
                Case "ج", "ز", "ك", "س", "ق", "ث", "ظ"
                    liste = liste & choosen & " "
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        End Select
    Case "BUNI", 2
        Select Case otype
        Case "fire", "ateş", 0
            For counter = 1 To LEN(selected)
                choosen = MID(selected, counter, 1)
                Select Case choosen
                Case "ا", "ه", "ط", "م", "ف", "ش", "ذ"
                    liste = liste & choosen & " "
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "air", "hava", 1
            For counter = 1 To LEN(selected)
                choosen = MID(selected, counter, 1)
                Select Case choosen
                Case "ب", "و", "ن", "ي", "ی", "ص", "ت", "ض"
                    liste = liste & choosen & " "
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "water", "su", 2
            For counter = 1 To LEN(selected)
                choosen = MID(selected, counter, 1)
                Select Case choosen
                Case "د", "ح", "ل", "ع", "ر", "خ", "غ"
                    liste = liste & choosen & " "
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "earth", "toprak", 3
            For counter = 1 To LEN(selected)
                choosen = MID(selected, counter, 1)
                Select Case choosen
                Case "ج", "ز", "ك", "س", "ق", "ث", "ظ"
                    liste = liste & choosen & " "
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        End Select
    Case "HUSEYNI", 3
        Select Case otype
        Case "fire", "ateş", 0
            For counter = 1 To LEN(selected)
                choosen = MID(selected, counter, 1)
                Select Case choosen
                Case "ا", "ه", "ط", "م", "ف", "ش", "ذ"
                    liste = liste & choosen & " "
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "air", "hava", 1
            For counter = 1 To LEN(selected)
                choosen = MID(selected, counter, 1)
                Select Case choosen
                Case "ج", "ز", "ك", "س", "ق", "ث", "ظ"
                    liste = liste & choosen & " "
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "water", "su", 2
            For counter = 1 To LEN(selected)
                choosen = MID(selected, counter, 1)
                Select Case choosen
                Case "د", "ح", "ل", "ع", "ر", "خ", "غ"
                    liste = liste & choosen & " "
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "earth", "toprak", 3
            For counter = 1 To LEN(selected)
                choosen = MID(selected, counter, 1)
                Select Case choosen
                Case "ب", "و", "ي", "ی", "ن", "ص", "ت", "ض"
                    liste = liste & choosen & " "
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        End Select
    Case "HEBREW", 4
        Select Case otype
        Case "fire", "ateş", 0
            For counter = 1 To LEN(selected)
                choosen = MID(selected, counter, 1)
                Select Case choosen
                Case "א", "ה", "ט", "מ", "פ", "ש", "ף"
                    liste = liste & choosen & " "
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "air", "hava", 1
            For counter = 1 To LEN(selected)
                choosen = MID(selected, counter, 1)
                Select Case choosen
                Case "ב", "ו", "י", "נ", "צ", "ת", "ץ"
                    liste = liste & choosen & " "
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "water", "su", 2
            For counter = 1 To LEN(selected)
                choosen = MID(selected, counter, 1)
                Select Case choosen
                Case "ג", "ז", "כ", "ס", "ק", "ם", "ך"
                    liste = liste & choosen & " "
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "earth", "toprak", 3
            For counter = 1 To LEN(selected)
                choosen = MID(selected, counter, 1)
                Select Case choosen
                Case "ד", "ח", "ל", "ע", "ר", "ן"
                    liste = liste & choosen & " "
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        End Select
    Case Else
        Select Case otype
        Case "fire", "ateş", 0
            For counter = 1 To LEN(selected)
                choosen = MID(selected, counter, 1)
                Select Case choosen
                Case "ا", "ب", "ج", "س", "ص", "ر", "خ"
                    liste = liste & choosen & " "
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "air", "hava", 1
            For counter = 1 To LEN(selected)
                choosen = MID(selected, counter, 1)
                Select Case choosen
                Case "ه", "ز", "ح", "ط", "ي", "ل", "ة", "ث", "ی"
                    liste = liste & choosen & " "
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "water", "su", 2
            For counter = 1 To LEN(selected)
                choosen = MID(selected, counter, 1)
                Select Case choosen
                Case "د", "ك", "ع", "ف", "ق", "ش", "ض"
                    liste = liste & choosen & " "
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "earth", "toprak", 3
            For counter = 1 To LEN(selected)
                choosen = MID(selected, counter, 1)
                Select Case choosen
                Case "و", "م", "ن", "ت", "ذ", "ظ", "غ"
                    liste = liste & choosen & " "
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        End Select
    End Select
    Select Case otabiat
    Case "liste", "list", 1 : UNSUR = liste
    Case "adet", "amount", 0 : UNSUR = adet
    End Select
End Function
Function SAY(Optional metin As String, Optional met As String, Optional stype As Variant, Optional fastmode As Variant) As Double
    Dim CA, counter As Integer
    Dim choosen     As String
    If fastmode <> 1 Then metin = SAF(metin, "") : met = SAF(met, "")
    CA = LEN(metin) - LEN(met) + 1 : SAY = 0
    For counter = 1 To CA
        choosen = MID(metin, counter, LEN(met))
        Select Case stype
        Case 0
            If choosen = met Then SAY = SAY + 1
        Case 1
            If counter = CA And choosen = met Then
                If MID(metin, counter - 1, 1) = " " Then  SAY = SAY + 1
            ElseIf counter < CA Then
                If MID(metin, counter + LEN(met), 1) = " " And choosen = met Then
                    If counter = 1 Then
                        SAY = SAY + 1
                    ElseIf MID(metin, counter - 1, 1) = " " Then
                        SAY = SAY + 1
                    Else
                    End If
                Else
                End If
            Else
            End If
        Case 2
            If counter > 2 Then If choosen = met And MID(metin, counter - 2, 2) = "ال" Then SAY = SAY + 1
        Case 3
            If counter = CA And counter > 2  Then
                If choosen = met And MID(metin, counter - 2, 2) = "ال" Then SAY = SAY + 1
            ElseIf counter < CA And counter > 3 Then
                If MID(metin, counter + LEN(met), 1) = " " Then
                    If MID(metin, counter - 3, 3) = "ال " And choosen = met Then SAY = SAY + 1
                Else
                End If
            Else
            End If
        End Select
    Next
End Function
Function SAF(Optional metin As String, Optional ayrac As Variant, Optional shadda As Integer) As String
    Dim counter     As Integer
    Dim choosen, S, irun As String : SAF = ""
    Select Case ayrac
    Case 0 : irun = ""
    Case Else : irun = ayrac
    End Select
    For counter = 1 To LEN(metin)
        choosen = MID(metin, counter, 1) : S = ""
        Select Case shadda
        Case 2
            C = 1
            If choosen = "ّ" Then
                Do
                    choosen = MID(metin, counter - C, 1)
                    C = C + 1
                Loop Until SAF(choosen, "") <> ""
            Else
            End If
        Case Else
        End Select
        Select Case UCase(choosen)
        Case "ا", "ء", "ى", "ب", "ج", "د", "ه", "و", "ؤ", "ز" : S = choosen & irun
        Case "ح", "ط", "ي", "ك", "ل", "م", "ن", "س", "ع", "ف" : S = choosen & irun
        Case "ص", "ق", "ر", "ش", "ت", "ض", "ة", "ث", "خ", "ذ" : S = choosen & irun
        Case "ض", "ظ", "غ", "ئ" : S = choosen & irun
        Case "أ", "إ", "آ", "ىٰ" : S = "ا" & irun
        Case "ک" : S = "ک" & irun
        Case "ﮒ" : S = "ﮒ" & irun
        Case "ی" : S = "ی" & irun
        Case "ۀ" : S = "ۀ" & irun
        Case "א", "ב", "ג", "ד", "ה", "ו", "ז", "ח", "ט", "י" : S = choosen & irun
        Case "ל", "ס", "ע", "ק", "ר", "ש", "ת" : S = choosen & irun
        Case "כ", "ך" ,"מ", "ם" , "נ", "ן" ,"פ", "ף", "צ", "ץ" : S = choosen & irun
        Case "A", "B", "C", "Ç", "D", "E", "F", "G", "Ğ": S = choosen & irun
        Case "H", "I", "İ", "J", "K", "L", "M", "N", "O": S = choosen & irun
        Case "Ö", "P", "R", "S", "Ş", "T", "U", "Ü", "V": S = choosen & irun
        Case "Y", "Z" : S = choosen & irun
        Case " "
            Select Case ayrac
            Case "" : S = choosen
            Case 0 : S = ""
            Case Else : S = irun
            End Select
        Case Else : S = ""
        End Select
        SAF = SAF & S
        ReDim choosen, S
    Next counter
End Function
Function TEKSIR(Optional metin As String, Optional ayrac As String, Optional shadda As Integer) As String
    Dim counter, produce, inverse, LengthDouble As Integer : LengthDouble = 0
    Dim newmetin, IKSIR, turn, result, Nothing As String
    Select Case shadda
    Case 2 : newmetin = SAF(metin, 0, 2)
    Case Else : newmetin = SAF(metin, 0)
    End Select
    result = SAF(newmetin, ayrac) & Chr(10) & Chr(13)
    IKSIR = newmetin
    For produce = 1 To LEN(newmetin) -1
        If LEN(newmetin) / 2 = DUZLE(LEN(newmetin) / 2) Then LengthDouble = 1
        IKSIR = ""
        For counter = 1 To DUZLE(LEN(newmetin) / 2)
            inverse = LEN(newmetin) + 1 - counter
            IKSIR = IKSIR & MID(newmetin, inverse, 1)
            IKSIR = IKSIR & MID(newmetin, counter, 1)
        Next counter
        If LengthDouble <> 1 Then IKSIR = IKSIR & MID(newmetin, DUZLE(LEN(newmetin) / 2) + 1, 1)
        TEKSIR = result & SAF(IKSIR, ayrac) & Chr(10) & Chr(13)
        result = TEKSIR
        newmetin = SAF(IKSIR, 0)
        ReDim IKSIR, result, inverse, newmetin
    Next produce
End Function
Function NUMBERS2ARAB(Optional metin As String) As String
    Dim counter     As Integer
    Dim choosen, NA As String : NA = "" : NUMBERS2ARAB = ""
    For counter = 1 To LEN(metin)
        choosen = MID(metin, counter, 1)
        Select Case choosen
        Case "1" : NA = NA & "١"
        Case "2" : NA = NA & "٢"
        Case "3" : NA = NA & "٣"
        Case "4" : NA = NA & "٤"
        Case "5" : NA = NA & "٥"
        Case "6" : NA = NA & "٦"
        Case "7" : NA = NA & "٧"
        Case "8" : NA = NA & "٨"
        Case "9" : NA = NA & "٩"
        Case "0" : NA = NA & "٠"
        Case " " : NA = NA & " "
        Case Else : NA = NA & choosen
        End Select
    Next
    NUMBERS2ARAB = NA
    ReDim NUMBERS2ARAB, NA
End Function
Function HUDDAM(Optional num As Double, Optional htype As Variant, Optional method As Variant) As String
    Dim hpart(19), rest, counts, counting, counted, counter, part, preffixdepart As Integer : counts = 1
    Dim suffix, preffix As Double
    Dim GH, H       As String : GH = ""
    Select Case method
    Case 7
    Case 12
    Case Else : method = 1
    End Select
    Select Case UCase(htype)
    Case "ULVI" : suffix = CDbl(ABJAD("ئيل", method, 1))
    Case "SUFLI" : suffix = CDbl(ABJAD("يوش", method, 1))
    Case "ŞER" : suffix = CDbl(ABJAD("طيش", method, 1))
    Case Else : suffix = CDbl(ABJAD(htype, method, 1))
    End Select
    If suffix > num Then
        Do
            num = num + 361
        Loop Until suffix < num
    Else
    End If
    preffix = CStr(num - suffix)
    preffixdepart = DUZLE(LEN(preffix) / 3) * 3
    If LEN(preffix) > 3 Then
        For departs = LEN(preffix) To (LEN(preffix) - preffixdepart) + 1 Step - 3
            hpart(counts) = MID(preffix, departs - 2, 3)
            counts = counts + 1
        Next
        rest = LEN(preffix) - ((counts - 1) * 3)
        If rest > 0 Then
            hpart(counts) = MID(preffix, 1, rest)
        Else
            counts = counts - 1
        End If
    Else
        hpart(1) = preffix
    End If
    For counter = counts To 1 Step - 1
        For counting = 1 To LEN(hpart(counter))
            choosen = MID(hpart(counter), counting, 1)
            turn = 3 - LEN(hpart(counter)) + counting
            Select Case turn
            Case 3
                Select Case CInt(choosen)
                Case 1
                    If 1 < LEN(hpart(counter)) Then
                        H = "ا"
                    ElseIf counts = 1 Then
                        H = "ا"
                    Else
                    End If
                Case 2
                    Select Case method
                    Case 12 : H = "ل"
                    Case Else : H = "ب"
                    End Select
                Case 3
                    Select Case method
                    Case 12 : H = "ن"
                    Case Else : H = "ج"
                    End Select
                Case 4
                    Select Case method
                    Case 12 : H = "م"
                    Case Else : H = "د"
                    End Select
                Case 5
                    Select Case method
                    Case 12 : H = "و"
                    Case Else : H = "ه"
                    End Select
                Case 6
                    Select Case method
                    Case 12 : H = "ي"
                    Case Else : H = "و"
                    End Select
                Case 7
                    Select Case method
                    Case 12 : H = "ه"
                    Case Else : H = "ز"
                    End Select
                Case 8
                    Select Case method
                    Case 12 : H = "ر"
                    Case Else : H = "ح"
                    End Select
                Case 9
                    Select Case method
                    Case 12 : H = "ب"
                    Case Else : H = "ط"
                    End Select
                End Select
            Case 2
                Select Case CInt(choosen)
                Case 1
                    Select Case method
                    Case 12 : H = "ت"
                    Case Else : H = "ي"
                    End Select
                Case 2 : H = "ك"
                Case 3
                    Select Case method
                    Case 12 : H = "ع"
                    Case Else : H = "ل"
                    End Select
                Case 4
                    Select Case method
                    Case 12 : H = "ف"
                    Case Else : H = "م"
                    End Select
                Case 5
                    Select Case method
                    Case 12 : H = "ق"
                    Case Else : H = "ن"
                    End Select
                Case 6
                    Select Case method
                    Case 7 : H = "ص"
                    Case Else : H = "س"
                    End Select
                Case 7
                    Select Case method
                    Case 12 : H = "د"
                    Case Else : H = "ع"
                    End Select
                Case 8
                    Select Case method
                    Case 12 : H = "ذ"
                    Case Else : H = "ف"
                    End Select
                Case 9
                    Select Case method
                    Case 7 : H = "ض"
                    Case 12 : H = "ح"
                    Case Else : H = "ص"
                    End Select
                End Select
            Case 1
                Select Case CInt(choosen)
                Case 1
                    Select Case method
                    Case 12 : H = "ج"
                    Case Else : H = "ق"
                    End Select
                Case 2
                    Select Case method
                    Case 12 : H = "خ"
                    Case Else : H = "ر"
                    End Select
                Case 3
                    Select Case method
                    Case 7 : H = "س"
                    Case Else : H = "ش"
                    End Select
                Case 4
                    Select Case method
                    Case 12 : H = "ص"
                    Case Else : H = "ت"
                    End Select
                Case 5
                    Select Case method
                    Case 12 : H = "ض"
                    Case Else : H = "ث"
                    End Select
                Case 6
                    Select Case method
                    Case 12 : H = "ز"
                    Case Else : H = "خ"
                    End Select
                Case 7
                    Select Case method
                    Case 12 : H = "ث"
                    Case Else : H = "ذ"
                    End Select
                Case 8
                    Select Case method
                    Case 7 : H = "ظ"
                    Case 12 : H = "ط"
                    Case Else : H = "ض"
                    End Select
                Case 9
                    Select Case method
                    Case 7, 12 : H = "غ"
                    Case Else : H = "ظ"
                    End Select
                End Select
            End Select
            GH = GH & H
            ReDim H
            H = ""
        Next
        If CInt(hpart(counter)) > 0 Then
            For counted = 1 To counter - 1
                Select Case method
                Case 7 : GH = GH & "ش"
                Case 12 : GH = GH & "ظ"
                Case Else : GH = GH & "غ"
                End Select
            Next
        Else
        End If
    Next
    ReDim hpart(19)
    Select Case htype
    Case "ULVI" : GH = GH & "ئيل"
    Case "SUFLI" : GH = GH & "يوش"
    Case "ŞER" : GH = GH & "طيش"
    Case Else : GH = GH & htype
    End Select
    ReDim suffix, preffix
    HUDDAM = GH
End Function
Function NUMEROLOG(Optional metin As String, Optional tablo As String, Optional outas As Variant, Optional shadda As Variant) As Variant
    Dim SM, S, C, D, N, sesli, sessiz, err, counter, space, hrk As Integer : NUMEROLOG = 0 : S = 0 : N = 0 : sesli = 0 : sessiz = 0
    Dim M, nitem, nesoohc, choosen As String : nitem = "" : err = 0 : tablo = LCase(tablo) : metin = UCase(metin)
    Select Case tablo
    Case "date"
        S = CDbl(CStr(Year(CDbl(metin))) & CStr(Month(CDbl(metin))) & CStr(Day(CDbl(metin))))
    Case Else
        For counter = 1 To LEN(metin)
            choosen = MID(metin, counter, 1)
            Select Case choosen
            Case "A"
                Select Case tablo
                Case "modern" : S = 1 : sesli = 1
                Case "tr", "en" : S = 1
                Case Else : err = 1
                End Select
            Case "B"
                Select Case tablo
                Case "modern" : S = 2 : sessiz = 2
                Case "tr", "en" : S = 2
                Case Else : err = 1
                End Select
            Case "C"
                Select Case tablo
                Case "modern" : S = 3 : sessiz = 3
                Case "tr", "en" : S = 3
                Case Else : err = 1
                End Select
            Case "Ç"
                Select Case tablo
                Case "modern" : S = 3 : sessiz = 3
                Case "tr" : S = 4
                Case "en" : S = 3
                Case Else : err = 1
                End Select
            Case "D"
                Select Case tablo
                Case "modern" : S = 4 : sessiz = 4
                Case "tr" : S = 5
                Case "en" : S = 4
                Case Else : err = 1
                End Select
            Case "E"
                Select Case tablo
                Case "modern" : S = 5 : sesli = 5
                Case "tr" : S = 6
                Case "en" : S = 5
                Case Else : err = 1
                End Select
            Case "F"
                Select Case tablo
                Case "modern" : S = 6 : sessiz = 6
                Case "tr" : S = 7
                Case "en" : S = 6
                Case Else : err = 1
                End Select
            Case "G"
                Select Case tablo
                Case "modern" : S = 7 : sessiz = 7
                Case "tr" : S = 8
                Case "en" : S = 7
                Case Else : err = 1
                End Select
            Case "Ğ"
                Select Case tablo
                Case "modern" : S = 7 : sessiz = 7
                Case "tr" : S = 9
                Case "en" : S = 7
                Case Else : err = 1
                End Select
            Case "H"
                Select Case tablo
                Case "modern" : S = 8 : sessiz = 8
                Case "tr" : S = 10
                Case "en" : S = 8
                Case Else : err = 1
                End Select
            Case "I"
                Select Case tablo
                Case "modern" : S = 9 : sesli = 9
                Case "tr" : S = 11
                Case "en" : S = 9
                Case Else : err = 1
                End Select
            Case "İ"
                Select Case tablo
                Case "modern" : S = 9 : sesli = 9
                Case "tr" : S = 12
                Case "en" : S = 9
                Case Else : err = 1
                End Select
            Case "J"
                Select Case tablo
                Case "modern" : S = 1 : sessiz = 1
                Case "tr" : S = 13
                Case "en" : S = 10
                Case Else : err = 1
                End Select
            Case "K"
                Select Case tablo
                Case "modern" : S = 2 : sessiz = 2
                Case "tr" : S = 14
                Case "en" : S = 11
                Case Else : err = 1
                End Select
            Case "L"
                Select Case tablo
                Case "modern" : S = 3 : sessiz = 3
                Case "tr" : S = 15
                Case "en" : S = 12
                Case Else : err = 1
                End Select
            Case "M"
                Select Case tablo
                Case "modern" : S = 4 : sessiz = 4
                Case "tr" : S = 16
                Case "en" : S = 13
                Case Else : err = 1
                End Select
            Case "N"
                Select Case tablo
                Case "modern" : S = 5 : sessiz = 5
                Case "tr" : S = 17
                Case "en" : S = 14
                Case Else : err = 1
                End Select
            Case "O"
                Select Case tablo
                Case "modern" : S = 6 : sesli = 6
                Case "tr" : S = 18
                Case "en" : S = 15
                Case Else : err = 1
                End Select
            Case "Ö"
                Select Case tablo
                Case "modern" : S = 6 : sesli = 6
                Case "tr" : S = 19
                Case "en" : S = 15
                Case Else : err = 1
                End Select
            Case "P"
                Select Case tablo
                Case "modern" : S = 7 : sessiz = 7
                Case "tr" : S = 20
                Case "en" : S = 16
                Case Else : err = 1
                End Select
            Case "Q"
                Select Case tablo
                Case "modern" : S = 8 : sessiz = 8
                Case "tr" : S = 0
                Case "en" : S = 17
                Case Else : err = 1
                End Select
            Case "R"
                Select Case tablo
                Case "modern" : S = 9 : sessiz = 9
                Case "tr" : S = 21
                Case "en" : S = 18
                Case Else : err = 1
                End Select
            Case "S"
                Select Case tablo
                Case "modern" : S = 1 : sessiz = 1
                Case "tr" : S = 22
                Case "en" : S = 19
                Case Else : err = 1
                End Select
            Case "Ş"
                Select Case tablo
                Case "modern" : S = 1 : sessiz = 1
                Case "tr" : S = 23
                Case "en" : S = 19
                Case Else : err = 1
                End Select
            Case "T"
                Select Case tablo
                Case "modern" : S = 2 : sessiz = 2
                Case "tr" : S = 24
                Case "en" : S = 20
                Case Else : err = 1
                End Select
            Case "U"
                Select Case tablo
                Case "modern" : S = 3 : sesli = 3
                Case "tr" : S = 25
                Case "en" : S = 21
                Case Else : err = 1
                End Select
            Case "Ü"
                Select Case tablo
                Case "modern" : S = 3 : sesli = 3
                Case "tr" : S = 26
                Case "en" : S = 21
                Case Else : err = 1
                End Select
            Case "V"
                Select Case tablo
                Case "modern" : S = 4 : sessiz = 4
                Case "tr" : S = 27
                Case "en" : S = 22
                Case Else : err = 1
                End Select
            Case "W"
                Select Case tablo
                Case "modern" : S = 5 : sessiz = 5
                Case "tr" : S = 0
                Case "en" : S = 23
                Case Else : err = 1
                End Select
            Case "X"
                Select Case tablo
                Case "modern" : S = 6 : sessiz = 6
                Case "tr" : S = 0
                Case "en" : S = 24
                Case Else : err = 1
                End Select
            Case "Y"
                Select Case tablo
                Case "modern" : S = 7 : sessiz = 7
                Case "tr" : S = 28
                Case "en" : S = 25
                Case Else : err = 1
                End Select
            Case "Z"
                Select Case tablo
                Case "modern" : S = 8 : sessiz = 8
                Case "tr" : S = 29
                Case "en" : S = 26
                End Select
            Case "ا", "أ", "إ", "آ", "ء", "ى", "ئ"
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)", "arb(hica)", "arb(mhica)", "osman" : S = 1
                Case Else : err = 1
                End Select
            Case "ب"
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)", "arb(hica)", "arb(mhica)", "osman" : S = 2
                Case Else : err = 1
                End Select
            Case "ﭖ"
                Select Case tablo
                Case "osman" : S = 3
                Case Else : err = 1
                End Select
            Case "ت"
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)" : S = 22
                Case "arb(hica)", "arb(mhica)" : S = 3
                Case "osman" : S = 4
                Case Else : err = 1
                End Select
            Case "ث"
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)" : S = 23
                Case "arb(hica)", "arb(mhica)" : S = 4
                Case "osman" : S = 5
                Case Else : err = 1
                End Select
            Case "ج"
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)" : S = 3
                Case "arb(hica)", "arb(mhica)" : S = 5
                Case "osman" : S = 6
                Case Else : err = 1
                End Select
            Case "ﭺ"
                Select Case tablo
                Case "osman" : S = 7
                Case Else : err = 1
                End Select
            Case "ح"
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)" : S = 8
                Case "arb(hica)", "arb(mhica)" : S = 6
                Case "osman" : S = 8
                Case Else : err = 1
                End Select
            Case "خ"
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)" : S = 24
                Case "arb(hica)", "arb(mhica)" : S = 7
                Case "osman" : S = 9
                Case Else : err = 1
                End Select
            Case "د"
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)" : S = 4
                Case "arb(hica)", "arb(mhica)" : S = 8
                Case "osman" : S = 10
                Case Else : err = 1
                End Select
            Case "ذ"
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)" : S = 25
                Case "arb(hica)", "arb(mhica)" : S = 9
                Case "osman" : S = 11
                Case Else : err = 1
                End Select
            Case "ر"
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)" : S = 20
                Case "arb(hica)", "arb(mhica)" : S = 10
                Case "osman" : S = 12
                Case Else : err = 1
                End Select
            Case "ز"
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)" : S = 7
                Case "arb(hica)", "arb(mhica)" : S = 11
                Case "osman" : S = 13
                Case Else : err = 1
                End Select
            Case "ﮊ"
                Select Case tablo
                Case "osman" : S = 14
                Case Else : err = 1
                End Select
            Case "س"
                Select Case tablo
                Case "arb(ebced)" : S = 15
                Case "arb(mebced)" : S = 21
                Case "arb(hica)" : S = 12
                Case "arb(mhica)" : S = 24
                Case "osman" : S = 15
                Case Else : err = 1
                End Select
            Case "ش"
                Select Case tablo
                Case "arb(ebced)" : S = 21
                Case "arb(mebced)" : S = 28
                Case "arb(hica)" : S = 13
                Case "arb(mhica)" : S = 25
                Case "osman" : S = 16
                Case Else : err = 1
                End Select
            Case "ص"
                Select Case tablo
                Case "arb(ebced)" : S = 18
                Case "arb(mebced)" : S = 15
                Case "arb(hica)" : S = 14
                Case "arb(mhica)" : S = 18
                Case "osman" : S = 17
                Case Else : err = 1
                End Select
            Case "ض"
                Select Case tablo
                Case "arb(ebced)" : S = 26
                Case "arb(mebced)" : S = 18
                Case "arb(hica)" : S = 15
                Case "arb(mhica)" : S = 19
                Case "osman" : S = 18
                Case Else : err = 1
                End Select
            Case "ط"
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)" : S = 9
                Case "arb(hica)" : S = 16
                Case "arb(mhica)" : S = 12
                Case "osman" : S = 19
                Case Else : err = 1
                End Select
            Case "ظ"
                Select Case tablo
                Case "arb(ebced)" : S = 27
                Case "arb(mebced)" : S = 26
                Case "arb(hica)" : S = 17
                Case "arb(mhica)" : S = 13
                Case "osman" : S = 20
                Case Else : err = 1
                End Select
            Case "ع"
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)" : S = 16
                Case "arb(hica)" : S = 18
                Case "arb(mhica)" : S = 20
                Case "osman" : S = 21
                Case Else : err = 1
                End Select
            Case "غ"
                Select Case tablo
                Case "arb(ebced)" : S = 28
                Case "arb(mebced)" : S = 17
                Case "arb(hica)" : S = 19
                Case "arb(mhica)" : S = 21
                Case "osman" : S = 22
                Case Else : err = 1
                End Select
            Case "ف"
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)" : S = 17
                Case "arb(hica)" : S = 20
                Case "arb(mhica)" : S = 22
                Case "osman" : S = 23
                Case Else : err = 1
                End Select
            Case "ق"
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)" : S = 19
                Case "arb(hica)" : S = 21
                Case "arb(mhica)" : S = 23
                Case "osman" : S = 24
                Case Else : err = 1
                End Select
            Case "ك"
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)" : S = 11
                Case "arb(hica)" : S = 22
                Case "arb(mhica)" : S = 14
                Case "osman" : S = 25
                Case Else : err = 1
                End Select
            Case "ﮒ"
                Select Case tablo
                Case "osman" : S = 26
                Case Else : err = 1
                End Select
            Case "ﯓ"
                Select Case tablo
                Case "osman" : S = 27
                Case Else : err = 1
                End Select
            Case "ل"
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)" : S = 12
                Case "arb(hica)" : S = 23
                Case "arb(mhica)" : S = 15
                Case "osman" : S = 28
                Case Else : err = 1
                End Select
            Case "م"
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)" : S = 13
                Case "arb(hica)" : S = 24
                Case "arb(mhica)" : S = 16
                Case "osman" : S = 29
                Case Else : err = 1
                End Select
            Case "ن"
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)" : S = 14
                Case "arb(hica)" : S = 25
                Case "arb(mhica)" : S = 17
                Case "osman" : S = 30
                Case Else : err = 1
                End Select
            Case "و", "ؤ"
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)" : S = 6
                Case "arb(hica)", "arb(mhica)" : S = 27
                Case "osman" : S = 31
                Case Else : err = 1
                End Select
            Case "ه", "ة"
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)" : S = 5
                Case "arb(hica)", "arb(mhica)" : S = 26
                Case "osman" : S = 32
                Case Else : err = 1
                End Select
            Case "ﻻ"
                Select Case tablo
                Case "osman" : S = 33
                Case Else : err = 1
                End Select
            Case "ي"
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)" : S = 10
                Case "arb(hica)", "arb(mhica)" : S = 28
                Case "osman" : S = 34
                Case Else : err = 1
                End Select
            Case Else
                N = N + 1
                Select Case choosen
                Case "ّ"
                    Select Case shadda
                    Case 1 : S = 0
                    Case 2
                        C = 1
                        Do
                            M = MID(metin, counter - C, 1)
                            S = CDbl(NUMEROLOG(M, tablo, outas, 1))
                            C = C + 1
                        Loop Until S <> 0
                    Case Else : err = 3
                    End Select
                    hrk = hrk + 1
                Case "ٰ"
                    C = 1
                    Do
                        M = MID(metin, counter - C, 1)
                        If M = "ـ" Then S = CDbl(NUMEROLOG("ا", tablo, outas, 1))
                        C = C + 1
                    Loop Until S <> 0 Or M = "ـ"
                Case " " : space = space + 1 : S = 0
                Case Chr(10)
                Case Chr(13)
                Case "َ", "ِ", "ً", "ٍ", "ُ", "ْ", "ٌ", "ـ" : hrk = hrk + 1  : S = 0
                Case Else : nitem = nitem & choosen : err = 2
                End Select
            End Select
            If err = 1 Then
                nesoohc = nesoohc & choosen : D = D + 1
            Else
                SM = SM + S
            End If
        Next counter
    End Select
    Select Case err
    Case 0
        Select Case outas
        Case "Sesli" : NUMEROLOG = RAKAMTOPLA(sesli, 1)
        Case "Sessiz" : NUMEROLOG = RAKAMTOPLA(sessiz, 1)
        Case "tam" : NUMEROLOG = SM
        Case "hepsi" : NUMEROLOG = RAKAMTOPLA(SM, 0)
        Case Else
            If CInt(outas) > 0 Then
                NUMEROLOG = RAKAMTOPLA(SM, CInt(outas))
            Else
                NUMEROLOG = "Çıktı türü?"
            End If
        End Select
    Case 1 : NUMEROLOG = nesoohc & " (" & D & " karakter        '" & tablo & "' için tanımsız)"
    Case 2 : NUMEROLOG = nitem & " (" & N  - (space + hrk) & " karakter yöntemlerde tanımsız)"
    Case 3 : NUMEROLOG = "Şedde Ayarı?"
    End Select
    ReDim metin, SM, S, sesli, sessiz, N, C, D, M, nitem, tablo, err
End Function
Function TESBIH(Optional zkr As Variant, Optional minimum As Double, Optional boncuk As Double, Optional bolum As Double) As String
    Dim outp        As String
    Dim turn, part, rest(1) As Double
    zkr = CDbl(zkr) : If zkr < minimum Then zkr = zkr * zkr
    turn = DUZLE(zkr / boncuk)
    rest(0) = (zkr - (turn * boncuk))
    part = DUZLE(rest(0) / bolum)
    rest(1) = (rest(0) - (part * bolum))
    If turn > 0 Then outp = "[" & turn & " tur]"
    If part > 0 Then outp = outp & "[" & part & "X" & bolum & "]"
    If rest(1) > 0 Then outp = outp & "[" & rest(1) & " kalan]"
    ReDim outp
    TESBIH = outp
End Function
Function ALTAYAZ(Optional girdi As Variant) As String
    Dim counter     As Integer
    Dim choosen, ss As String : ss = "" : ALTAYAZ = ""
    For counter = 1 To LEN(girdi)
        choosen = MID(girdi, counter, 1)
        Select Case choosen
        Case "1" : ss = ss & "₁"
        Case "2" : ss = ss & "₂"
        Case "3" : ss = ss & "₃"
        Case "4" : ss = ss & "₄"
        Case "5" : ss = ss & "₅"
        Case "6" : ss = ss & "₆"
        Case "7" : ss = ss & "₇"
        Case "8" : ss = ss & "₈"
        Case "9" : ss = ss & "₉"
        Case "0" : ss = ss & "₀"
        Case "+" : ss = ss & "₊"
        Case "-" : ss = ss & "₋"
        Case "=" : ss = ss & "₌"
        Case "(", "[" : ss = ss & "₍"
        Case ")", "]" : ss = ss & "₎"
        Case " " : ss = ss & " "
        Case Else : ss = ss & choosen
        End Select
    Next
    ALTAYAZ = ss
    ReDim ALTAYAZ, ss
End Function
Function RAKAMTOPLA(Optional valuez As Double, Optional d1g1tamount As Integer) As String
    Dim hepsi       As String
    Dim counter     As Integer
    Dim NewSum, choosen As Double
    If d1g1tamount = 0 Then
        hepsi = CStr(valuez)
        Do Until LEN(CStr(valuez)) = 1
            NewSum = 0
            For counter = 1 To LEN(CStr(valuez))
                choosen = CDbl(MID(CStr(valuez), counter, 1))
                NewSum = NewSum + choosen
            Next : valuez = NewSum : hepsi = hepsi & " ► " & NewSum
        Loop : ReDim hepsi : RAKAMTOPLA = hepsi
    Else
        Do Until LEN(CStr(valuez)) <= d1g1tamount
            NewSum = 0
            For counter = 1 To LEN(CStr(valuez))
                choosen = MID(CStr(valuez), counter, 1)
                NewSum = NewSum + choosen
            Next : valuez = NewSum
        Loop : ReDim d1g1tamount, valuez : RAKAMTOPLA = valuez
    End If
End Function
Function NEWLINE(Optional amount As Double) As String
    Dim rows        As Double
    Dim NL          As String : NL = ""
    For rows = 1 To amount
        NL = NL & Chr(10) & Chr(13)
    Next rows
    NEWLINE = NL
End Function
Function ASGAR(Optional harf As String, Optional level As Integer) As String
    Dim C           As Double
    C = ABJAD(harf, level, 1)
    If C > 12 Then
        ASGAR = C - (12 * DUZLE(C / 12))
    Else
        ASGAR = C
    End If
End Function
Function DUZLE(Optional numbertofloor As Double) As Double
    Dim mathfloor   As Object
    Dim P(1)        As Double
    mathfloor = CreateUnoService("com.sun.star.sheet.FunctionAccess")
    P(0) = numbertofloor
    P(1) = 0
    DUZLE = mathfloor.callFunction("ROUNDDOWN", P())
End Function
Function TUMLE(range)
    Dim row, col    As Integer
    Dim result, cell As String
    result = ""
    On Error GoTo 276
    For row = LBound(range, 1) To UBound(range, 1)
        For col = LBound(range, 2) To UBound(range, 2)
            cell = range(row, col)
            If cell <> 0 And Len(Trim(cell)) <> 0 Then
                If result <> "" Then
                    result = result & " "
                End If
                result = result & range(row, col)
            End If
        Next  	REM ** Bu satırda uyarı vermesinin sebebi fonksiyonun kullanıldığı bir aralık girilmemiş olmasıdır.
    Next
    276 If result = "" Then MsgBox "TUMLE() için girilen aralıktaki tüm hücreler zaten boş; makrolar harika çalışıyorlar"
    TUMLE = result
End Function
Function NUTKET(ByVal MyNumber, Lang)
    Dim Temp, Spell
    Dim Count
    Count = 1
    ReDim Place(9), PlaceOnes(9), PlaceTwos(9), PlaceAppent(9), PlacePlural(9) As String
    Select Case UCase(Lang)
    Case "ARABIC"
        If Val(MyNumber) = 0 And Count = 1 Then
            NUTKET = "صفر"
            Exit Function
        Else
        End If
        PlaceOnes(2) = "ألف"
        PlaceOnes(3) = "مليون"
        PlaceOnes(4) = "مليار"
        PlaceOnes(5) = "تريليون"
        PlaceTwos(2) = "ألفان"
        PlaceTwos(3) = "مليونان"
        PlaceTwos(4) = "ملياران"
        PlaceTwos(5) = "تريليونان"
        PlaceAppent(2) = "ألفاً"
        PlaceAppent(3) = "مليوناً"
        PlaceAppent(4) = "ملياراً"
        PlaceAppent(5) = "تريليوناً"
        PlacePlural(2) = "آلاف"
        PlacePlural(3) = "ملايين"
        PlacePlural(4) = "مليارات"
        PlacePlural(5) = "تريليونات"
        Do While MyNumber <> ""
            EventHappenned = 0
            If Count > 1 And CDbl(Right(MyNumber, 3)) = 1 Then
                Temp = ""
                If LEN(Spell) > 0 Then
                    Spell = PlaceOnes(Count) & " و " & Spell
                Else
                    Spell = PlaceOnes(Count) & " " & Spell
                End If
            ElseIf Count > 1 And CDbl(Right(MyNumber, 3)) = 2 Then
                Temp = ""
                If LEN(Spell) > 0 Then
                    Spell = PlaceTwos(Count) & " و " & Spell
                Else
                    Spell = PlaceTwos(Count) & " " & Spell
                End If
            Else
                Temp = GetHundreds(Right(MyNumber, 3), Lang, Count, Spell)
            End If
            If Temp <> "" Then
                If Count > 1 Then
                    If LEN(Spell) > 0 Then Spell = " و " & Spell
                    If CDbl(Right(MyNumber, 3)) <> 2 Then
                        If DUZLE(CDbl(Right(MyNumber, 3)) / 100) <> 1 Then
                            If CDbl(Right(MyNumber, 3)) >= 3 And CDbl(Right(MyNumber, 3)) <= 10 Then
                                Spell =  " " & PlacePlural(Count) & Spell
                                EventHappenned = 1
                            Else
                            End If
                        Else
                        End If
                    Else
                    End If
                Else
                End If
                If EventHappenned = 0 Then
                    If LEN(Spell) > 0 Then
                        Spell =  " " & PlaceAppent(Count) & Spell
                    Else
                        Spell =  " " & PlaceOnes(Count) & Spell
                    End If
                    EventHappenned = 0
                Else
                End If
                Spell = Temp & Spell
                Temp = ""
            Else
            End If
            If Len(MyNumber) > 3 Then
                MyNumber = Left(MyNumber, Len(MyNumber) - 3)
            Else
                MyNumber = ""
            End If
            Count = Count + 1
        Loop
    Case "HEBREW"
        If Val(MyNumber) = 0 Then
            NUTKET = "אֶפֶס"
            Exit Function
        Else
        End If
        PlaceOnes(2) = "אלף"
        PlaceOnes(3) = "מיליון"
        PlaceOnes(4) = "מיליארד"
        PlaceOnes(5) = "טריליון"
        PlaceTwos(2) = "אלפיים "
        PlaceTwos(3) = "שני מיליון "
        PlaceTwos(4) = "שני מיליארד "
        PlaceTwos(5) = "שני טריליון "
        PlaceAppent(2) = "אלפא"
        PlaceAppent(3) = "מיליון"
        PlaceAppent(4) = "מיליארד"
        PlaceAppent(5) = "טריליון"
        PlacePlural(2) = "אלפים"
        PlacePlural(3) = "מיליונים"
        PlacePlural(4) = "מיליארדים"
        PlacePlural(5) = "טריליונים"
        Do While MyNumber <> ""
            EventHappenned = 0
            If Count > 1 And CDbl(Right(MyNumber, 3)) = 1 Then
                Temp = ""
                If LEN(Spell) > 0 Then
                    Spell = PlaceOnes(Count) & " ו " & Spell
                Else
                    Spell = PlaceOnes(Count) & " " & Spell
                End If
            ElseIf Count > 1 And CDbl(Right(MyNumber, 3)) = 2 Then
                Temp = ""
                If LEN(Spell) > 0 Then
                    Spell = PlaceTwos(Count) & " ו " & Spell
                Else
                    Spell = PlaceTwos(Count) & " " & Spell
                End If
            Else
                Temp = GetHundreds(Right(MyNumber, 3), Lang, Count, Spell)
            End If
            If Temp <> "" Then
                If Count > 1 Then
                    If LEN(Spell) > 0 Then Spell = " ו " & Spell
                    If CDbl(Right(MyNumber, 3)) <> 2 Then
                        If DUZLE(CDbl(Right(MyNumber, 3)) / 100) <> 1 Then
                            If CDbl(Right(MyNumber, 3)) >= 3 And CDbl(Right(MyNumber, 3)) <= 10 Then
                                Spell =  " " & PlacePlural(Count) & Spell
                                EventHappenned = 1
                            Else
                            End If
                        Else
                        End If
                    Else
                    End If
                Else
                End If
                If EventHappenned = 0 Then
                    If LEN(Spell) > 0 Then
                        Spell =  " " & PlaceAppent(Count) & Spell
                    Else
                        Spell =  " " & PlaceOnes(Count) & Spell
                    End If
                    EventHappenned = 0
                Else
                End If
                Spell = Temp & Spell
                Temp = ""
            Else
            End If
            If Len(MyNumber) > 3 Then
                MyNumber = Left(MyNumber, Len(MyNumber) - 3)
            Else
                MyNumber = ""
            End If
            Count = Count + 1
        Loop
    Case "TURKCE"
        If Val(MyNumber) = 0 Then
            NUTKET = "sıfır"
            Exit Function
        Else
        End If
        Place(2) = "bin "
        Place(3) = "milyon "
        Place(4) = "milyar "
        Place(5) = "trilyon "
        Do While MyNumber <> ""
            If Count = 2 And CDbl(Right(MyNumber, 3)) = 1 Then
                Temp = ""
                Spell = Place(Count) & Spell
            Else
                Temp = GetHundreds(Right(MyNumber, 3), Lang)
            End If
            If Temp <> "" Then
                Spell = Temp & " " & Place(Count) & Spell
                Temp = ""
            Else
            End If
            If Len(MyNumber) > 3 Then
                MyNumber = Left(MyNumber, Len(MyNumber) - 3)
            Else
                MyNumber = ""
            End If
            Count = Count + 1
        Loop
    Case Else
    End Select
    NUTKET = Trim(Spell)
End Function
Function GetHundreds(ByVal MyNumber, Lang, Optional Count, Optional Spell)
    Dim Result As String
    MyNumber = Right("000" & MyNumber, 3)
    Select Case UCase(Lang)
    Case "ARABIC"
        If Cdbl(Mid(MyNumber, 1, 1)) > 0 Then
            If Cdbl(Right(MyNumber, 2)) = 0 And Cdbl(Mid(MyNumber, 1, 1)) = 2 Then
                If Count = 1 Then
                    Result = "مئتان "
                Else
                    Result = "مئتا "
                End If
            Else
                Select Case CDbl(Mid(MyNumber, 1, 1))
                Case 1 : Result = "مائة "
                Case 2 : Result = "مئتان "
                Case 3 : Result = "ثلاثمائة "
                Case 4 : Result = "أربعمائة "
                Case 5 : Result = "خمسمائة "
                Case 6 : Result = "ستمائة "
                Case 7 : Result = "سبعمائة "
                Case 8 : Result = "ثمانمائة "
                Case 9 : Result = "تسعمائة "
                Case Else
                End Select
            End If
        Else
        End If
        If LEN(Result) > 0  And CDbl(Right(MyNumber, 2)) <> 0 Then Result = Result & " و "
        If Mid(MyNumber, 2, 1) <> "0" Then
            Result = Result & GetTens(Right(MyNumber, 2), Lang, Count, Cdbl(Mid(MyNumber, 1, 1)), Result & Spell)
        Else
            Result = Result & GetDigit(Mid(MyNumber, 3), Lang, Count, Result & Spell)
        End If
    Case "HEBREW"
        If Cdbl(Mid(MyNumber, 1, 1)) > 0 Then
            Select Case CDbl(Mid(MyNumber, 1, 1))
            Case 1 : Result = "מאה "
            Case 2 : Result = "מאתיים "
            Case 3 : Result = "שלוש מאות "
            Case 4 : Result = "ארבע מאות "
            Case 5 : Result = "חמש מאות "
            Case 6 : Result = "שש מאות "
            Case 7 : Result = "שבע מאות "
            Case 8 : Result = "שמונה מאות "
            Case 9 : Result = "תשע מאות "
            Case Else
            End Select
        Else
        End If
        If LEN(Result) > 0  And CDbl(Right(MyNumber, 2)) <> 0 Then Result = Result & " ו "
        If Mid(MyNumber, 2, 1) <> "0" Then
            Result = Result & GetTens(Right(MyNumber, 2), Lang, Count, Cdbl(Mid(MyNumber, 1, 1)), Result & Spell)
        Else
            Result = Result & GetDigit(Mid(MyNumber, 3), Lang, Count, Result & Spell)
        End If
    Case "TURKCE"
        If Mid(MyNumber, 1, 1) <> "0" Then
            If CDbl(Mid(MyNumber, 1, 1)) > 1 Then
                Result = GetDigit(Mid(MyNumber, 1, 1), Lang) & " yüz "
            Else
                Result = "yüz "
            End If
        End If
        If Mid(MyNumber, 2, 1) <> "0" Then
            Result = Result & GetTens(Mid(MyNumber, 2), Lang)
        Else
            Result = Result & GetDigit(Mid(MyNumber, 3), Lang)
        End If
    Case Else
    End Select
    GetHundreds = Result
End Function
Function GetTens(TensText, Lang, Optional Count, Optional Hundreds, Optional Spell)
    Dim Result As String
    ReDim PlaceOnes(9), PlaceTwos(9) As String
    Result = ""
    Select Case UCase(Lang)
    Case "ARABIC"
        PlaceOnes(2) = "ألف "
        PlaceOnes(3) = "مليون "
        PlaceOnes(4) = "مليار "
        PlaceOnes(5) = "تريليون "
        PlaceTwos(2) = "ألفان "
        PlaceTwos(3) = "مليونان "
        PlaceTwos(4) = "ملياران "
        PlaceTwos(5) = "تريليونان "
        If CDbl(Left(TensText, 1)) = 1 Then
            Select Case Val(TensText)
            Case 10: Result = "عشرة"
            Case 11: Result = "إحدى عشرة"
            Case 12: Result = "اثنتا عشرة"
            Case 13: Result = "ثلاث عشرة"
            Case 14: Result = "أربع عشرة"
            Case 15: Result = "خمس عشرة"
            Case 16: Result = "ست عشرة"
            Case 17: Result = "سبع عشرة"
            Case 18: Result = "ثماني عشرة"
            Case 19: Result = "تسع عشرة"
            Case Else
            End Select
        Else
            If CDbl(Left(TensText, 1)) = 2 And Hundreds = 0 And Count > 1 Then
                Result = PlaceTwos(Count) & Result
            Else
                If CDbl(Left(TensText, 1)) = 1 And Count > 1 Then
                    Result = PlaceOnes(Count) & Result
                ElseIf CDbl(Left(TensText, 1)) = 1 Or CDbl(Left(TensText, 1)) = 2 Then
                    If Count = 1 And Hundreds = 0 And CDbl(Left(TensText, 2)) = 0 Then Result = Result & ""
                Else
                End If
            End If
            If CDbl(TensText) > 0 Then
                If CDbl(Left(TensText, 1)) > 1 Then	Result = Result & GetTensStatus(CDbl(Left(TensText, 1)), Lang)
                If LEN(Result) > 0 And CDbl(Right(TensText, 1)) <> 0 Then 	Result = Result & "و "
                Result = Result & GetDigit(Right(TensText, 1), Lang, Count)
            Else
                If LEN(Spell) > 0  And CDbl(Left(TensText, 1)) <> 0 Or LEN(Result) > 0 And CDbl(Left(TensText, 1)) <> 0 Then Result = Result & "و "
                Result = Result & GetTensStatus(CDbl(Left(TensText, 1)), Lang)
            End If
        End If
    Case "HEBREW"
        PlaceOnes(2) = "אלפים "
        PlaceOnes(3) = "מיליון "
        PlaceOnes(4) = "מיליארד "
        PlaceOnes(5) = "טריליון "
        PlaceTwos(2) = "אלפיים "
        PlaceTwos(3) = "שני מיליון "
        PlaceTwos(4) = "שני מיליארד "
        PlaceTwos(5) = "שני טריליון "
        If CDbl(Left(TensText, 1)) = 1 Then
            Select Case Val(TensText)
            Case 10: Result = "עשר "
            Case 11: Result = "אחת עשרה "
            Case 12: Result = "שתים עשרה "
            Case 13: Result = "שלוש עשרה "
            Case 14: Result = "ארבע עשרה "
            Case 15: Result = "חמש עשרה "
            Case 16: Result = "שש עשרה "
            Case 17: Result = "שבע עשרה "
            Case 18: Result = "שמונה עשרה "
            Case 19: Result = "תשע עשרה "
            Case Else
            End Select
        Else
            If CDbl(Left(TensText, 1)) = 2 And Hundreds = 0 And Count > 1 Then
                Result = PlaceTwos(Count) & Result
            Else
                If CDbl(Left(TensText, 1)) = 1 And Count > 1 Then
                    Result = PlaceOnes(Count) & Result
                ElseIf CDbl(Left(TensText, 1)) = 1 Or CDbl(Left(TensText, 1)) = 2 Then
                    If Count = 1 And Hundreds = 0 And CDbl(Left(TensText, 2)) = 0 Then Result = Result & ""
                Else
                End If
            End If
            If CDbl(TensText) > 0 Then
                If CDbl(Left(TensText, 1)) > 1 Then	Result = Result & GetTensStatus(CDbl(Left(TensText, 1)), Lang)
                If LEN(Result) > 0 And CDbl(Right(TensText, 1)) <> 0 Then 	Result = Result & "ו "
                Result = Result & GetDigit(Right(TensText, 1), Lang, Count)
            Else
                If LEN(Spell) > 0  And CDbl(Left(TensText, 1)) <> 0 Or LEN(Result) > 0 And CDbl(Left(TensText, 1)) <> 0 Then Result = Result & "ו "
                Result = Result & GetTensStatus(CDbl(Left(TensText, 1)), Lang)
            End If
        End If
    Case "TURKCE"
        Select Case Val(Left(TensText, 1))
        Case 1: Result = "on "
        Case 2: Result = "yirmi "
        Case 3: Result = "otuz "
        Case 4: Result = "kırk "
        Case 5: Result = "elli "
        Case 6: Result = "altmış "
        Case 7: Result = "yetmiş "
        Case 8: Result = "seksen "
        Case 9: Result = "doksan "
        Case Else
        End Select
        Result = Result & GetDigit(Right(TensText, 1), Lang)
    Case Else
    End Select
    GetTens = Result
End Function
Function GetTensStatus(Tens, Lang)
    Select Case UCase(Lang)
    Case "ARABIC"
        Select Case Tens
        Case 2: Result = "عشرين "
        Case 3: Result = "ثلاثين "
        Case 4: Result = "أربعين "
        Case 5: Result = "خمسين "
        Case 6: Result = "ستين "
        Case 7: Result = "سبعين "
        Case 8: Result = "ثمانين "
        Case 9: Result = "تسعين "
        Case Else
        End Select
    Case "HEBREW"
        Select Case Tens
        Case 2: Result = "עשרים "
        Case 3: Result = "שלושים "
        Case 4: Result = "ארבעים "
        Case 5: Result = "חמישים "
        Case 6: Result = "שישים "
        Case 7: Result = "שבעים "
        Case 8: Result = "שמונים "
        Case 9: Result = "תשעים "
        Case Else
        End Select
    Case Else
    End Select
    GetTensStatus = Result
End Function
Function GetDigit(Digit, Lang)
    Select Case UCase(Lang)
    Case "ARABIC"
        Select Case Val(Digit)
        Case 1: GetDigit = "احد"
        Case 2: GetDigit = "اثنان"
        Case 3: GetDigit = "ثلاثة"
        Case 4: GetDigit = "أربعة"
        Case 5: GetDigit = "خمسة"
        Case 6: GetDigit = "ستة"
        Case 7: GetDigit = "سبعة"
        Case 8: GetDigit = "ثمانية"
        Case 9: GetDigit = "تسعة"
        Case Else: GetDigit = ""
        End Select
    Case "HEBREW"
        Select Case Val(Digit)
        Case 1: GetDigit = "אחת"
        Case 2: GetDigit = "שניים"
        Case 3: GetDigit = "שלושה"
        Case 4: GetDigit = "ארבעה"
        Case 5: GetDigit = "חמש"
        Case 6: GetDigit = "שישה"
        Case 7: GetDigit = "שבע"
        Case 8: GetDigit = "שמונה"
        Case 9: GetDigit = "תשע"
        Case Else: GetDigit = ""
        End Select
    Case "TURKCE"
        Select Case Val(Digit)
        Case 1: GetDigit = "bir"
        Case 2: GetDigit = "iki"
        Case 3: GetDigit = "üç"
        Case 4: GetDigit = "dört"
        Case 5: GetDigit = "beş"
        Case 6: GetDigit = "altı"
        Case 7: GetDigit = "yedi"
        Case 8: GetDigit = "sekiz"
        Case 9: GetDigit = "dokuz"
        Case Else: GetDigit = ""
        End Select
    Case Else
    End Select
End Function
Function HEPART(Optional npotent As Double, Optional memec As Integer) As Double
    Dim result      As Double
    Dim R, kat	As Double: kat = 2
    result = 0
    On Error GoTo 726
    If DUZLE((result - 30) / 4) < 1 Then
        Do
            result = npotent * kat
            R = DUZLE((result - 30) / 4)
            kat = kat + 1
        Loop Until 1 <= R
    Else
        result = npotent
    End If
    ReDim result
    If memec = 1 Then
        HEPART = kat - 1
    Else
        HEPART = result
    End If
    726 If result = 0 Then MsgBox "HEPART() için değişken seçimlik değil; fakat, makrolar harika çalışıyorlar"
End Function
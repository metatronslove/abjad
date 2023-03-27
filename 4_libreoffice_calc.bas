Sub ABJAD(Optional metin As String, Optional tablo As Variant, Optional shadda As Variant, Optional detail As Variant) As String
    Dim SM, S, N    As Long : SM = 0 : N = 0 : S = 0
    Dim SH, counter, err, space, hrk As Integer : SH = 0 : err = 0 : space = 0 : hrk = 0
    Dim SN, choosen, nitem As String : nitem = "" : SN = ""
    For counter = 1 To LEN(metin)
        choosen = MID(metin, counter, 1)
        Select Case choosen
        Case "ا", "أ", "إ", "آ", "ء", "ى"
            Select Case tablo
            Case 1, 4, 5, 7, 10, 12, 15 : S = 1
            Case 0, 6, 11 : S = CLng(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CLng(ABJAD("الف", tablo - 1, 1))
            Case 3, 9, 14 : S = CLng(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case Else : err = 1
            End Select
        Case "ؤ"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 7
            Case 12, 15 : S = 6
            Case 0, 6, 11 : S = CLng(ASGAR("و", tablo + 1)) + CLng(ASGAR("ا", tablo + 1))
            Case 2, 8, 13 : S = CLng(ABJAD("الف", tablo - 1, 1)) + CLng(ABJAD("واو", tablo - 1, 1))
            Case 3, 9, 14 : S = CLng(BASTET("و", 1, -1 - (tablo - 2), 1, "ARABIC")) + CLng(BASTET("ا", 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ئ"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 11
            Case 12, 15 : S = 7
            Case 0, 6, 11 : S = CLng(ASGAR("ي", tablo + 1)) + CLng(ASGAR("ا", tablo + 1))
            Case 2, 8, 13 : S = CLng(ABJAD("الف", tablo - 1, 1)) + CLng(ABJAD("يا", tablo - 1, 1))
            Case 3, 9, 14 : S = CLng(BASTET("ي", 1, -1 - (tablo - 2), 1, "ARABIC")) + CLng(BASTET("ا", 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ۀ"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 15
            Case 12, 15 : S = 13
            Case 0, 6, 11 : S = CLng(ASGAR("ي", tablo + 1)) + CLng(ASGAR("ه", tablo + 1))
            Case 2, 8, 13 : S = CLng(ABJAD("يا", tablo - 1, 1)) + CLng(ABJAD("ها", tablo - 1, 1))
            Case 3, 9, 14 : S = CLng(BASTET("ي", 1, -1 - (tablo - 2), 1, "ARABIC")) + CLng(BASTET("ه", 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ب", "ﭖ"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 2
            Case 12, 15 : S = 9
            Case 0, 6, 11 : S = CLng(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CLng(ABJAD("با", tablo - 1, 1))
            Case 3, 9, 14 : S = CLng(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ج", "ﭺ"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 3
            Case 12, 15 : S = 100
            Case 0, 6, 11 : S = CLng(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CLng(ABJAD("جيم", tablo - 1, 1))
            Case 3, 9, 14 : S = CLng(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "د"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 4
            Case 12, 15 : S = 70
            Case 0, 6, 11 : S = CLng(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CLng(ABJAD("دال", tablo - 1, 1))
            Case 3, 9, 14 : S = CLng(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ه", "ة"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 5
            Case 12, 15 : S = 7
            Case 0, 6, 11 : S = CLng(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CLng(ABJAD("ها", tablo - 1, 1))
            Case 3, 9, 14 : S = CLng(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "و"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 6
            Case 12, 15 : S = 5
            Case 0, 6, 11 : S = CLng(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CLng(ABJAD("واو", tablo - 1, 1))
            Case 3, 9, 14 : S = CLng(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ز", "ﮊ"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 7
            Case 12, 15 : S = 600
            Case 0, 6, 11 : S = CLng(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CLng(ABJAD("زا", tablo - 1, 1))
            Case 3, 9, 14 : S = CLng(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ح"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 8
            Case 12, 15 : S = 90
            Case 0, 6, 11 : S = CLng(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CLng(ABJAD("حا", tablo - 1, 1))
            Case 3, 9, 14 : S = CLng(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ط"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 9
            Case 12, 15 : S = 800
            Case 0, 6, 11 : S = CLng(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CLng(ABJAD("طا", tablo - 1, 1))
            Case 3, 9, 14 : S = CLng(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ی", "ي"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 10
            Case 12, 15 : S = 6
            Case 0, 6, 11 : S = CLng(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CLng(ABJAD("يا", tablo - 1, 1))
            Case 3, 9, 14 : S = CLng(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ك", "ﮒ", "ک"
            Select Case tablo
            Case 1, 4, 7, 10, 12, 15 : S = 20
            Case 0, 6, 11 : S = CLng(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CLng(ABJAD("كاف", tablo - 1, 1))
            Case 3, 9, 14 : S = CLng(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ل"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 30
            Case 12, 15 : S = 2
            Case 0, 6, 11 : S = CLng(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CLng(ABJAD("لام", tablo - 1, 1))
            Case 3, 9, 14 : S = CLng(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ﻻ"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 31
            Case 12, 15 : S = 3
            Case 0, 6, 11 : S = CLng(ASGAR("ا", tablo + 1)) + CLng(ASGAR("ل", tablo + 1))
            Case 2, 8, 13 : S = CLng(ABJAD("لام الف", tablo - 1, 1))
            Case 3, 9, 14 : S = CLng(BASTET("لا", 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 2
            Case Else : err = 1
            End Select
        Case "م"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 40
            Case 12, 15 : S = 4
            Case 0, 6, 11 : S = CLng(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CLng(ABJAD("ميم", tablo - 1, 1))
            Case 3, 9, 14 : S = CLng(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ن", "ﯓ"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 50
            Case 12, 15 : S = 3
            Case 0, 6, 11 : S = CLng(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CLng(ABJAD("نون", tablo - 1, 1))
            Case 3, 9, 14 : S = CLng(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "س"
            Select Case tablo
            Case 1, 4, 12, 15 : S = 60
            Case 7, 10 : S = 300
            Case 0, 6, 11 : S = CLng(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CLng(ABJAD("سين", tablo - 1, 1))
            Case 3, 9, 14 : S = CLng(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ع"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 70
            Case 12, 15 : S = 30
            Case 0, 6, 11 : S = CLng(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CLng(ABJAD("عين", tablo - 1, 1))
            Case 3, 9, 14 : S = CLng(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ف"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 80
            Case 12, 15 : S = 40
            Case 0, 6, 11 : S = CLng(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CLng(ABJAD("فا", tablo - 1, 1))
            Case 3, 9, 14 : S = CLng(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ص"
            Select Case tablo
            Case 1, 4 : S = 90
            Case 7, 10 : S = 60
            Case 12, 15 : S = 400
            Case 0, 6, 11 : S = CLng(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CLng(ABJAD("صاد", tablo - 1, 1))
            Case 3, 9, 14 : S = CLng(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ق"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 100
            Case 12, 15 : S = 50
            Case 0, 6, 11 : S = CLng(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CLng(ABJAD("قاف", tablo - 1, 1))
            Case 3, 9, 14 : S = CLng(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ر"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 200
            Case 12, 15 : S = 80
            Case 0, 6, 11 : S = CLng(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CLng(ABJAD("را", tablo - 1, 1))
            Case 3, 9, 14 : S = CLng(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ش"
            Select Case tablo
            Case 1, 4, 12, 15 : S = 300
            Case 7, 10 : S = 1000
            Case 0, 6, 11 : S = CLng(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CLng(ABJAD("شين", tablo - 1, 1))
            Case 3, 9, 14 : S = CLng(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ت"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 400
            Case 12, 15 : S = 10
            Case 0, 6, 11 : S = CLng(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CLng(ABJAD("تا", tablo - 1, 1))
            Case 3, 9, 14 : S = CLng(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ث"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 500
            Case 12, 15 : S = 700
            Case 0, 6, 11 : S = CLng(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CLng(ABJAD("ثا", tablo - 1, 1))
            Case 3, 9, 14 : S = CLng(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "خ"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 600
            Case 12, 15 : S = 200
            Case 0, 6, 11 : S = CLng(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CLng(ABJAD("خا", tablo - 1, 1))
            Case 3, 9, 14 : S = CLng(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ذ"
            Select Case tablo
            Case 1, 4, 7, 10 : S = 700
            Case 12, 15 : S = 80
            Case 0, 6, 11 : S = CLng(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CLng(ABJAD("ذال", tablo - 1, 1))
            Case 3, 9, 14 : S = CLng(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ض"
            Select Case tablo
            Case 1, 4 : S = 800
            Case 7, 10 : S = 90
            Case 12, 15 : S = 500
            Case 0, 6, 11 : S = CLng(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CLng(ABJAD("ضاد", tablo - 1, 1))
            Case 3, 9, 14 : S = CLng(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ظ"
            Select Case tablo
            Case 1, 4 : S = 900
            Case 7, 10 : S = 800
            Case 12, 15 : S = 1000
            Case 0, 6, 11 : S = CLng(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CLng(ABJAD("ظا", tablo - 1, 1))
            Case 3, 9, 14 : S = CLng(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "غ"
            Select Case tablo
            Case 1, 4 : S = 1000
            Case 7, 10, 12, 15 : S = 900
            Case 0, 6, 11 : S = CLng(ASGAR(choosen, tablo + 1))
            Case 2, 8, 13 : S = CLng(ABJAD("غين", tablo - 1, 1))
            Case 3, 9, 14 : S = CLng(BASTET(choosen, 1, -1 - (tablo - 2), 1, "ARABIC"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "א"
            Select Case tablo
            Case 1, 4 : S = 1
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("אלף", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ב"
            Select Case tablo
            Case 1, 4 : S = 2
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("בית", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ג"
            Select Case tablo
            Case 1, 4 : S = 3
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("גימל", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ד"
            Select Case tablo
            Case 1, 4 : S = 4
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("דלת", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ה"
            Select Case tablo
            Case 1, 4 : S = 5
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("הא", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ו"
            Select Case tablo
            Case 1, 4 : S = 6
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("וו", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ז"
            Select Case tablo
            Case 1, 4 : S = 7
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("זין", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ח"
            Select Case tablo
            Case 1, 4 : S = 8
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("חית", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ט"
            Select Case tablo
            Case 1, 4 : S = 9
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("טיח", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "י"
            Select Case tablo
            Case 1, 4 : S = 10
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("יוד", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "כ"
            Select Case tablo
            Case 1, 4 : S = 20
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("כף", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ל"
            Select Case tablo
            Case 1, 4 : S = 30
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("למד", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "מ"
            Select Case tablo
            Case 1, 4 : S = 40
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("מם", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "נ"
            Select Case tablo
            Case 1, 4 : S = 50
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("נון", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ס"
            Select Case tablo
            Case 1, 4 : S = 60
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("סמך", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ע"
            Select Case tablo
            Case 1, 4 : S = 70
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("עין", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "פ"
            Select Case tablo
            Case 1, 4 : S = 80
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("פא", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "צ"
            Select Case tablo
            Case 1, 4 : S = 90
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("צדי", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ק"
            Select Case tablo
            Case 1, 4 : S = 100
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("קוף", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ר"
            Select Case tablo
            Case 1, 4 : S = 200
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("ריש", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ש"
            Select Case tablo
            Case 1, 4 : S = 300
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("שין", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ת"
            Select Case tablo
            Case 1, 4 : S = 400
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("תו", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ך"
            Select Case tablo
            Case 1, 4 : S = 500
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("ךף", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ם"
            Select Case tablo
            Case 1, 4 : S = 600
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("םם", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ן"
            Select Case tablo
            Case 1, 4 : S = 700
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("וןן", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ף"
            Select Case tablo
            Case 1, 4 : S = 800
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("ףא", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "ץ"
            Select Case tablo
            Case 1, 4 : S = 900
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("ץדי", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "HEBREW"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "A", "a"
            Select Case tablo
            Case 1, 4 : S = 1
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("aa", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "B", "b"
            Select Case tablo
            Case 1, 4 : S = 2
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("be", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "C", "c", "Ç", "ç"
            Select Case tablo
            Case 1, 4 : S = 3
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("ce", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "D", "d"
            Select Case tablo
            Case 1, 4 : S = 4
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("de", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "E", "e"
            Select Case tablo
            Case 1, 4 : S = 5
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("ee", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "F", "f"
            Select Case tablo
            Case 1, 4 : S = 6
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("fe", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "G", "g"
            Select Case tablo
            Case 1, 4 : S = 7
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("ge", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "Ğ", "ğ"
            Select Case tablo
            Case 1, 4 : S = 8
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("yumuşakge", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "H", "h"
            Select Case tablo
            Case 1, 4 : S = 9
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("He", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "I", "ı"
            Select Case tablo
            Case 1, 4 : S = 10
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("ıı", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "İ", "i"
            Select Case tablo
            Case 1, 4 : S = 20
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("ii", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "J", "j"
            Select Case tablo
            Case 1, 4 : S = 30
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("je", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "K", "k"
            Select Case tablo
            Case 1, 4 : S = 40
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("ke", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "L", "l"
            Select Case tablo
            Case 1, 4 : S = 50
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("le", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "M", "m"
            Select Case tablo
            Case 1, 4 : S = 60
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("me", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "N", "n"
            Select Case tablo
            Case 1, 4 : S = 70
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("ne", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "O", "o"
            Select Case tablo
            Case 1, 4 : S = 80
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("oo", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "Ö", "ö"
            Select Case tablo
            Case 1, 4 : S = 90
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("öö", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "P", "p"
            Select Case tablo
            Case 1, 4 : S = 100
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("pe", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "R", "r"
            Select Case tablo
            Case 1, 4 : S = 200
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("re", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "S", "s"
            Select Case tablo
            Case 1, 4 : S = 300
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("se", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "Ş", "ş"
            Select Case tablo
            Case 1, 4 : S = 400
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("şe", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "T", "t"
            Select Case tablo
            Case 1, 4 : S = 500
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("te", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "U", "u"
            Select Case tablo
            Case 1, 4 : S = 600
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("uu", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "Ü", "ü"
            Select Case tablo
            Case 1, 4 : S = 700
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("üü", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "V", "v"
            Select Case tablo
            Case 1, 4 : S = 800
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("ve", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "Y", "y"
            Select Case tablo
            Case 1, 4 : S = 900
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("ye", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "TURKCE"))
            Case 5 : S = 1
            Case Else : err = 1
            End Select
        Case "Z", "z"
            Select Case tablo
            Case 1, 4 : S = 1000
            Case 0 : S = CLng(ASGAR(choosen, 1))
            Case 2 : S = CLng(ABJAD("ze", 1, 1))
            Case 3 : S = CLng(BASTET(choosen, 1, -2, 1, "TURKCE"))
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
                        S = CLng(ABJAD(choosen, tablo, 1))
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
                    If choosen = "ـ" Then S = CLng(ABJAD("ا", tablo, 1))
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
End Sub
Sub WORDBYWORD(Optional klmmetin As String, Optional tablo As Variant, Optional shadda As Variant, Optional detail As Variant) As String
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
End Sub
Sub BASTET(Optional metin As String, Optional MT As Variant, Optional tablo As Variant, Optional shadda As Variant, Optional language As Variant, Optional  detail As Variant) As String
    Dim HM, invertablo, BC, Turn, err As Integer : err = 0
    Dim Baster, choosen, NS As String
    Select Case CStr(CLng(metin))
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
        For BC = 0 To LEN(Baster) - 1
            Turn = LEN(Baster) - BC : Baster = CStr(Baster) : choosen = MID(Baster, Turn, 1)
            Select Case Ucase(language)
            Case "ARABIC"
                Select Case BC
                Case 0
                    Select Case CInt(choosen)
                    Case 1 : NS = " احد" & NS
                    Case 2 : NS = " اثنان" & NS
                    Case 3 : NS = " ثلاثة" & NS
                    Case 4 : NS = " أربعة" & NS
                    Case 5 : NS = " خمسة" & NS
                    Case 6 : NS = " ستة" & NS
                    Case 7 : NS = " سبعة" & NS
                    Case 8 : NS = " ثمانية" & NS
                    Case 9 : NS = " تسعة" & NS
                    End Select
                Case 1, 4, 7
                    Select Case CInt(choosen)
                    Case 1 : NS = " عشرة" & NS
                    Case 2 : NS = " عشرين" & NS
                    Case 3 : NS = " ثلاثين" & NS
                    Case 4 : NS = " أربعين" & NS
                    Case 5 : NS = " خمسين" & NS
                    Case 6 : NS = " ستين" & NS
                    Case 7 : NS = " سبعين" & NS
                    Case 8 : NS = " ثمانين" & NS
                    Case 9 : NS = " تسعين" & NS
                    End Select
                Case 2, 5, 8
                    Select Case CInt(choosen)
                    Case 1 : NS = " مائة" & NS
                    Case 2 : NS = " مائتان" & NS
                    Case 3 : NS = " ثلثمائة" & NS
                    Case 4 : NS = " أربعمائة" & NS
                    Case 5 : NS = " خمسمائة" & NS
                    Case 6 : NS = " ستمائة" & NS
                    Case 7 : NS = " سبعمائة" & NS
                    Case 8 : NS = " ثمانمائة" & NS
                    Case 9 : NS = " تسعمائة" & NS
                    End Select
                Case 3
                    Select Case CInt(choosen)
                    Case 0 : NS = " ألأف" & NS
                    Case 1
                        If LEN(Baster) < 5 Then
                            NS = " ألف" & NS
                        Else
                            If LEN(Baster) > 6 Then
                                If CInt(MID(Baster, LEN(Baster) - 5, 2)) = 0 Then
                                    NS = " ألف" & NS
                                Else
                                    NS = " احد ألأف" & NS
                                End If
                            Else
                                NS = " احد ألأف" & NS
                            End If
                        End If
                    Case 2 : NS = " ألفان" & NS
                    Case 3 : NS = " ثلاثة آلاف" & NS
                    Case 4 : NS = " أربعة آلاف" & NS
                    Case 5 : NS = " خمسة آلاف" & NS
                    Case 6 : NS = " ستة آلاف" & NS
                    Case 7 : NS = " سبعة آلاف" & NS
                    Case 8 : NS = " ثمانية آلاف" & NS
                    Case 9 : NS = " تسعة آلاف" & NS
                    End Select
                Case 6
                    Select Case CInt(choosen)
                    Case 0, 1 : NS = " مليون" & NS
                    Case 2 : NS = " مليونان" & NS
                    Case 3 : NS = " ثلاثة مليون" & NS
                    Case 4 : NS = " أربعة مليون" & NS
                    Case 5 : NS = " خمسة مليون" & NS
                    Case 6 : NS = " ستة مليون" & NS
                    Case 7 : NS = " سبعة مليون" & NS
                    Case 8 : NS = " ثمانية مليون" & NS
                    Case 9 : NS = " تسعة مليون" & NS
                    End Select
                End Select
            Case "HEBREW"
                Select Case BC
                Case 0
                    Select Case CInt(choosen)
                    Case 1 : NS = " אחת" & NS
                    Case 2 : NS = " שתים" & NS
                    Case 3 : NS = " שלש" & NS
                    Case 4 : NS = " ארבע" & NS
                    Case 5 : NS = " חמש" & NS
                    Case 6 : NS = " שש" & NS
                    Case 7 : NS = " שבע" & NS
                    Case 8 : NS = " שמונה" & NS
                    Case 9 : NS = " תשע" & NS
                    End Select
                Case 1, 4, 7
                    Select Case CInt(choosen)
                    Case 1 : NS = " עשרת " & NS
                    Case 2 : NS = " עשרים " & NS
                    Case 3 : NS = " שלושים " & NS
                    Case 4 : NS = " ארבעים " & NS
                    Case 5 : NS = " חמישים " & NS
                    Case 6 : NS = " שישים " & NS
                    Case 7 : NS = " שבעים " & NS
                    Case 8 : NS = " שמונים " & NS
                    Case 9 : NS = " תשעים " & NS
                    End Select
                Case 2, 5, 8
                    Select Case CInt(choosen)
                    Case 1 : NS = " מאה" & NS
                    Case 2 : NS = " מָאתַיִם" & NS
                    Case 3 : NS = " שְׁלוֹשׁ מֵאוֹת" & NS
                    Case 4 : NS = " אַרְבַּע מֵאוֹת" & NS
                    Case 5 : NS = " חֲמֵשׁ מֵאוֹת" & NS
                    Case 6 : NS = " שֵׁשׁ מֵאוֹת" & NS
                    Case 7 : NS = " שְׁבַע מֵאוֹת" & NS
                    Case 8 : NS = " שְׁמוֹנֶה מֵאוֹת" & NS
                    Case 9 : NS = " תְּשַׁע מֵאוֹת" & NS
                    End Select
                Case 3
                    Select Case CInt(choosen)
                    Case 0 : NS = " אלפים" & NS
                    Case 1
                        If LEN(Baster) < 5 Then
                            NS = " אלף" & NS
                        Else
                            If LEN(Baster) > 6 Then
                                If CInt(MID(Baster, LEN(Baster) - 5, 2)) = 0 Then
                                    NS = " אלף" & NS
                                Else
                                    NS = " אחת אלפים" & NS
                                End If
                            Else
                                NS = " אחת אלפים" & NS
                            End If
                        End If
                    Case 2 : NS = " אלפיים" & NS
                    Case 3 : NS = " שלושה אלפים" & NS
                    Case 4 : NS = " ארבעת אלפים" & NS
                    Case 5 : NS = " חמשת אלפים" & NS
                    Case 6 : NS = " ששת אלפים" & NS
                    Case 7 : NS = " שבעת אלפים" & NS
                    Case 8 : NS = " שמונת אלפים" & NS
                    Case 9 : NS = " תשעת אלפים" & NS
                    End Select
                Case 6
                    Select Case CInt(choosen)
                    Case 0 : NS = " מיליון" & NS
                    Case 1 : NS = " מיליון" & NS
                    Case 2 : NS = " שני מיליון" & NS
                    Case 3 : NS = " שלושה מיליון" & NS
                    Case 4 : NS = " ארבע מיליון" & NS
                    Case 5 : NS = " חמישה מיליון" & NS
                    Case 6 : NS = " שישה מיליון" & NS
                    Case 7 : NS = " שבעה מיליון" & NS
                    Case 8 : NS = " שמונה מליון" & NS
                    Case 9 : NS = " תשעה מיליון" & NS
                    End Select
                End Select
            Case "TURKCE"
                Select Case BC
                Case 0
                    Select Case CInt(choosen)
                    Case 1 : NS = " bir" & NS
                    Case 2 : NS = " iki" & NS
                    Case 3 : NS = " üç" & NS
                    Case 4 : NS = " dört" & NS
                    Case 5 : NS = " beş" & NS
                    Case 6 : NS = " altı" & NS
                    Case 7 : NS = " yedi" & NS
                    Case 8 : NS = " sekiz" & NS
                    Case 9 : NS = " dokuz" & NS
                    End Select
                Case 1, 4, 7
                    Select Case CInt(choosen)
                    Case 1 : NS = " on" & NS
                    Case 2 : NS = " yirmi" & NS
                    Case 3 : NS = " otuz" & NS
                    Case 4 : NS = " kırk" & NS
                    Case 5 : NS = " elli" & NS
                    Case 6 : NS = " altmış" & NS
                    Case 7 : NS = " yetmiş" & NS
                    Case 8 : NS = " seksen" & NS
                    Case 9 : NS = " doksan" & NS
                    End Select
                Case 2, 5 ,8
                    Select Case CInt(choosen)
                    Case 1 : NS = " yüz" & NS
                    Case 2 : NS = " iki yüz" & NS
                    Case 3 : NS = " üç yüz" & NS
                    Case 4 : NS = " dört yüz" & NS
                    Case 5 : NS = " beş yüz" & NS
                    Case 6 : NS = " altı yüz" & NS
                    Case 7 : NS = " yedi yüz" & NS
                    Case 8 : NS = " sekiz yüz" & NS
                    Case 9 : NS = " dokuz yüz" & NS
                    End Select
                Case 3
                    Select Case CInt(choosen)
                    Case 0 : NS = " bin" & NS
                    Case 1
                        If LEN(Baster) < 5 Then
                            NS = " bin" & NS
                        Else
                            If LEN(Baster) > 6 Then
                                If CInt(MID(Baster, LEN(Baster) - 5, 2)) = 0 Then
                                    NS = " bin" & NS
                                Else
                                    NS = " bir bin" & NS
                                End If
                            Else
                                NS = " bir bin" & NS
                            End If
                        End If
                    Case 2 : NS = " iki bin" & NS
                    Case 3 : NS = " üç bin" & NS
                    Case 4 : NS = " dört bin" & NS
                    Case 5 : NS = " beş bin" & NS
                    Case 6 : NS = " altı bin" & NS
                    Case 7 : NS = " yedi bin" & NS
                    Case 8 : NS = " sekiz bin" & NS
                    Case 9 : NS = " dokuz bin" & NS
                    End Select
                Case 6
                    Select Case CInt(choosen)
                    Case 0 : NS = " milyon" & NS
                    Case 1 : NS = " bir milyon" & NS
                    Case 2 : NS = " iki milyon" & NS
                    Case 3 : NS = " üç milyon" & NS
                    Case 4 : NS = " dört milyon" & NS
                    Case 5 : NS = " beş milyon" & NS
                    Case 6 : NS = " altı milyon" & NS
                    Case 7 : NS = " yedi milyon" & NS
                    Case 8 : NS = " sekiz milyon" & NS
                    Case 9 : NS = " dokuz milyon" & NS
                    End Select
                End Select
            End Select
        Next BC
        Baster = 0
        Select Case tablo
        Case 0 To 15 : Baster = CLng(ABJAD(NS, tablo, 1)) + CLng(ABJAD(NS, 5, 1))
        Case -16 To -1 : invertablo = (-1 * tablo) - 1 : Baster = CLng(ABJAD(NS, invertablo, 1))
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
End Sub
Sub UNSUR(Optional metin, Optional otabiat As Variant, Optional otype As Variant, Optional shadda As Integer, Optional guide As Variant) As String
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
End Sub
Sub SAY(Optional metin As String, Optional met As String, Optional stype As Variant, Optional fastmode As Variant) As Integer
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
End Sub
Sub SAF(Optional metin As String, Optional ayrac As Variant, Optional shadda As Integer) As String
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
End Sub
Sub TEKSIR(Optional metin As String, Optional ayrac As String, Optional shadda As Integer) As String
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
End Sub
Sub NUMBERS2ARAB(Optional metin As String) As String
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
End Sub
Sub HUDDAM(Optional num As LONG, Optional htype As Variant, Optional method As Variant) As String
    Dim hpart(19), rest, counts, counting, counted, counter, part, preffixdepart As Integer : counts = 1
    Dim suffix, preffix As Long
    Dim GH, H       As String : GH = ""
    Select Case method
    Case 7
    Case 12
    Case Else: method = 1
    End Select
    Select Case UCase(htype)
    Case "ULVI" : suffix = CLng(ABJAD("ئيل", method, 1))
    Case "SUFLI" : suffix = CLng(ABJAD("يوش", method, 1))
    Case "ŞER" : suffix = CLng(ABJAD("طيش", method, 1))
    Case Else : suffix = CLng(ABJAD(htype, method, 1))
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
End Sub
Sub NUMEROLOG(Optional metin As String, Optional tablo As String, Optional outas As Variant, Optional shadda As Variant) As String
    Dim SM, S, C, D, N, sesli, sessiz, err, counter, space, hrk As Integer : NUMEROLOG = 0 : S = 0 : N = 0 : sesli = 0 : sessiz = 0
    Dim M, nitem, nesoohc, choosen As String : nitem = "" : err = 0 : tablo = LCase(tablo) : metin = UCase(metin)
    Select Case tablo
    Case "date"
        S = CLng(CStr(Year(CLng(metin))) & CStr(Month(CLng(metin))) & CStr(Day(CLng(metin))))
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
                            S = CLng(NUMEROLOG(M, tablo, outas, 1))
                            C = C + 1
                        Loop Until S <> 0
                    Case Else : err = 3
                    End Select
                    hrk = hrk + 1
                Case "ٰ"
                    C = 1
                    Do
                        M = MID(metin, counter - C, 1)
                        If M = "ـ" Then S = CLng(NUMEROLOG("ا", tablo, outas, 1))
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
End Sub
Sub TESBIH(Optional zkr As Variant, Optional minimum As Double, Optional boncuk As Double, Optional bolum As Double) As String
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
End Sub
Sub ALTAYAZ(Optional girdi As Variant) As String
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
End Sub
Sub RAKAMTOPLA(Optional valuez As Long, Optional d1g1tamount As Integer) As String
    Dim hepsi       As String
    Dim counter     As Integer
    Dim NewSum, choosen As Long
    If d1g1tamount = 0 Then
        hepsi = CStr(valuez)
        Do Until LEN(CStr(valuez)) = 1
            NewSum = 0
            For counter = 1 To LEN(CStr(valuez))
                choosen = CLng(MID(CStr(valuez), counter, 1))
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
End Sub
Sub NEWLINE(Optional amount As Long) As String
    Dim rows        As Long
    Dim NL          As String : NL = ""
    For rows = 1 To amount
        NL = NL & Chr(10) & Chr(13)
    Next rows
    NEWLINE = NL
End Sub
Function ASGAR(Optional harf As String, Optional level As Integer) As String
    Dim C           As Long
    C = ABJAD(harf, level, 1)
    If C > 12 Then
        ASGAR = C - (12 * DUZLE(C / 12))
    Else
        ASGAR = C
    End If
End Function
Function DUZLE(Optional numbertofloor As Double) As Long
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
Sub HEPART(Optional npotent As Long, Optional memec As Integer) As Double
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
End Sub
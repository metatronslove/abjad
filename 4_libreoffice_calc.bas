Sub abjad(Optional metin As String, Optional tablo As Variant, Optional shadda As Variant, Optional detail As Variant) As String
    Dim SM, S, N    As Long : SM = 0 : N = 0 : S = 0
    Dim SH, counter, err, space, hrk As Integer : SH = 0 : err = 0 : space = 0 : hrk = 0
    Dim SN, choosen, nitem As String : nitem = "" : SN = ""
    For counter = 1 To LEN(metin)
        choosen = MID(metin, counter, 1)
        Select Case choosen
            Case "ا", "أ", "إ", "آ", "ء", "ى"
                Select Case tablo
                    Case 0, 6, 11 : S = CLng(asgar(choosen, 1))
                    Case 1, 4, 5, 7, 10, 12, 15 : S = 1
                    Case 2 : S = CLng(abjad("الف", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "ARABIC"))
                    Case 8 : S = CLng(abjad("الف", 7, 1))
                    Case 9 : S = CLng(bastet(choosen, 1, -8, 1, "ARABIC"))
                    Case 13 : S = CLng(abjad("الف", 12, 1))
                    Case 14 : S = CLng(bastet(choosen, 1, -13, 1, "ARABIC"))
                    Case Else : err = 1
                End Select
            Case "ؤ"
                Select Case tablo
                    Case 0 : S = CLng(asgar("و", 1)) + CLng(asgar("ا", 1))
                    Case 1, 4 : S = 7
                    Case 2 : S = CLng(abjad("الف", 1, 1)) + CLng(abjad("واو", 1, 1))
                    Case 3 : S = CLng(bastet("و", 1, -2, 1, "ARABIC")) + CLng(bastet("ا", 1, -2, 1, "ARABIC"))
                    Case 5 : S = 1
                    Case 6 : S = CLng(asgar("و", 7)) + CLng(asgar("ا", 7))
                    Case 7, 10 : S = 6
                    Case 8 : S = CLng(abjad("الف", 7, 1)) + CLng(abjad("واو", 7, 1))
                    Case 9 : S = CLng(bastet("و", 1, -8, 1, "ARABIC")) + CLng(bastet("ا", 1, -8, 1, "ARABIC"))
                    Case 11 : S = CLng(asgar("و", 12)) + CLng(asgar("ا", 12))
                    Case 12, 15 : S = 6
                    Case 13 : S = CLng(abjad("الف", 12, 1)) + CLng(abjad("واو", 12, 1))
                    Case 14 : S = CLng(bastet("و", 1, -13, 1, "ARABIC")) + CLng(bastet("ا", 1, -13, 1, "ARABIC"))
                    Case Else : err = 1
                End Select
            Case "ئ"
                Select Case tablo
                    Case 0 : S = CLng(asgar("ي", 1)) + CLng(asgar("ا", 1))
                    Case 1, 4 : S = 11
                    Case 2 : S = CLng(abjad("الف", 1, 1)) + CLng(abjad("يا", 1, 1))
                    Case 3 : S = CLng(bastet("ي", 1, -2, 1, "ARABIC")) + CLng(bastet("ا", 1, -2, 1, "ARABIC"))
                    Case 5 : S = 1
                    Case 6 : S = CLng(asgar("ي", 7)) + CLng(asgar("ا", 7))
                    Case 7, 10 : S = 7
                    Case 8 : S = CLng(abjad("الف", 7, 1)) + CLng(abjad("يا", 7, 1))
                    Case 9 : S = CLng(bastet("ي", 1, -8, 1, "ARABIC")) + CLng(bastet("ا", 1, -8, 1, "ARABIC"))
                    Case 11 : S = CLng(asgar("ي", 12)) + CLng(asgar("ا", 12))
                    Case 12, 15 : S = 7
                    Case 13 : S = CLng(abjad("الف", 12, 1)) + CLng(abjad("يا", 12, 1))
                    Case 14 : S = CLng(bastet("ي", 1, -13, 1, "ARABIC")) + CLng(bastet("ا", 1, -13, 1, "ARABIC"))
                    Case Else : err = 1
                End Select
            Case "ۀ"
                Select Case tablo
                    Case 0 : S = CLng(asgar("ي", 1)) + CLng(asgar("ه", 1))
                    Case 1, 4 : S = 15
                    Case 2 : S = CLng(abjad("يا", 1, 1)) + CLng(abjad("ها", 1, 1))
                    Case 3 : S = CLng(bastet("ي", 1, -2, 1, "ARABIC")) + CLng(bastet("ه", 1, -2, 1, "ARABIC"))
                    Case 5 : S = 1
                    Case 6 : S = CLng(asgar("ي", 7)) + CLng(asgar("ه", 7))
                    Case 7, 10 : S = 13
                    Case 8 : S = CLng(abjad("يا", 7, 1)) + CLng(abjad("ها", 7, 1))
                    Case 9 : S = CLng(bastet("ي", 1, -8, 1, "ARABIC")) + CLng(bastet("ه", 1, -8, 1, "ARABIC"))
                    Case 11 : S = CLng(asgar("ي", 12)) + CLng(asgar("ه", 12))
                    Case 12, 15 : S = 13
                    Case 13 : S = CLng(abjad("يا", 12, 1)) + CLng(abjad("ها", 12, 1))
                    Case 14 : S = CLng(bastet("ي", 1, -13, 1, "ARABIC")) + CLng(bastet("ه", 1, -13, 1, "ARABIC"))
                    Case Else : err = 1
                End Select
            Case "ب", "ﭖ"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 2
                    Case 2 : S = CLng(abjad("با", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "ARABIC"))
                    Case 5 : S = 1
                    Case 6 : S = CLng(asgar(choosen, 7))
                    Case 7, 10 : S = 9
                    Case 8 : S = CLng(abjad("با", 7, 1))
                    Case 9 : S = CLng(bastet(choosen, 1, -8, 1, "ARABIC"))
                    Case 11 : S = CLng(asgar(choosen, 12))
                    Case 12, 15 : S = 9
                    Case 13 : S = CLng(abjad("با", 12, 1))
                    Case 14 : S = CLng(bastet(choosen, 1, -13, 1, "ARABIC"))
                    Case Else : err = 1
                End Select
            Case "ج", "ﭺ"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 3
                    Case 2 : S = CLng(abjad("جيم", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "ARABIC"))
                    Case 5 : S = 1
                    Case 6 : S = CLng(asgar(choosen, 7))
                    Case 7, 10 : S = 19
                    Case 8 : S = CLng(abjad("جيم", 7, 1))
                    Case 9 : S = CLng(bastet(choosen, 1, -8, 1, "ARABIC"))
                    Case 11 : S = CLng(asgar(choosen, 12))
                    Case 12, 15 : S = 100
                    Case 13 : S = CLng(abjad("جيم", 12, 1))
                    Case 14 : S = CLng(bastet(choosen, 1, -13, 1, "ARABIC"))
                    Case Else : err = 1
                End Select
            Case "د"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 4
                    Case 2 : S = CLng(abjad("دال", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "ARABIC"))
                    Case 5 : S = 1
                    Case 6 : S = CLng(asgar(choosen, 7))
                    Case 7, 10 : S = 16
                    Case 8 : S = CLng(abjad("دال", 7, 1))
                    Case 9 : S = CLng(bastet(choosen, 1, -8, 1, "ARABIC"))
                    Case 11 : S = CLng(asgar(choosen, 12))
                    Case 12, 15 : S = 70
                    Case 13 : S = CLng(abjad("دال", 12, 1))
                    Case 14 : S = CLng(bastet(choosen, 1, -13, 1, "ARABIC"))
                    Case Else : err = 1
                End Select
            Case "ه", "ة"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 5
                    Case 2 : S = CLng(abjad("ها", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "ARABIC"))
                    Case 5 : S = 1
                    Case 6 : S = CLng(asgar(choosen, 7))
                    Case 7, 10 : S = 7
                    Case 8 : S = CLng(abjad("ها", 7, 1))
                    Case 9 : S = CLng(bastet(choosen, 1, -8, 1, "ARABIC"))
                    Case 11 : S = CLng(asgar(choosen, 12))
                    Case 12, 15 : S = 7
                    Case 13 : S = CLng(abjad("ها", 12, 1))
                    Case 14 : S = CLng(bastet(choosen, 1, -13, 1, "ARABIC"))
                    Case Else : err = 1
                End Select
            Case "و"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 6
                    Case 2 : S = CLng(abjad("واو", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "ARABIC"))
                    Case 5 : S = 1
                    Case 6 : S = CLng(asgar(choosen, 7))
                    Case 7, 10 : S = 5
                    Case 8 : S = CLng(abjad("واو", 7, 1))
                    Case 9 : S = CLng(bastet(choosen, 1, -8, 1, "ARABIC"))
                    Case 11 : S = CLng(asgar(choosen, 12))
                    Case 12, 15 : S = 5
                    Case 13 : S = CLng(abjad("واو", 12, 1))
                    Case 14 : S = CLng(bastet(choosen, 1, -13, 1, "ARABIC"))
                    Case Else : err = 1
                End Select
            Case "ز", "ﮊ"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 7
                    Case 2 : S = CLng(abjad("زا", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "ARABIC"))
                    Case 5 : S = 1
                    Case 6 : S = CLng(asgar(choosen, 7))
                    Case 7, 10 : S = 25
                    Case 8 : S = CLng(abjad("زا", 7, 1))
                    Case 9 : S = CLng(bastet(choosen, 1, -8, 1, "ARABIC"))
                    Case 11 : S = CLng(asgar(choosen, 12))
                    Case 12, 15 : S = 600
                    Case 13 : S = CLng(abjad("زا", 12, 1))
                    Case 14 : S = CLng(bastet(choosen, 1, -13, 1, "ARABIC"))
                    Case Else : err = 1
                End Select
            Case "ح"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 8
                    Case 2 : S = CLng(abjad("حا", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "ARABIC"))
                    Case 5 : S = 1
                    Case 6 : S = CLng(asgar(choosen, 7))
                    Case 7, 10 : S = 18
                    Case 8 : S = CLng(abjad("حا", 7, 1))
                    Case 9 : S = CLng(bastet(choosen, 1, -8, 1, "ARABIC"))
                    Case 11 : S = CLng(asgar(choosen, 12))
                    Case 12, 15 : S = 90
                    Case 13 : S = CLng(abjad("حا", 12, 1))
                    Case 14 : S = CLng(bastet(choosen, 1, -13, 1, "ARABIC"))
                    Case Else : err = 1
                End Select
            Case "ط"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 9
                    Case 2 : S = CLng(abjad("طا", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "ARABIC"))
                    Case 5 : S = 1
                    Case 6 : S = CLng(asgar(choosen, 7))
                    Case 7, 10 : S = 26
                    Case 8 : S = CLng(abjad("طا", 7, 1))
                    Case 9 : S = CLng(bastet(choosen, 1, -8, 1, "ARABIC"))
                    Case 11 : S = CLng(asgar(choosen, 12))
                    Case 12, 15 : S = 800
                    Case 13 : S = CLng(abjad("طا", 12, 1))
                    Case 14 : S = CLng(bastet(choosen, 1, -13, 1, "ARABIC"))
                    Case Else : err = 1
                End Select
            Case "ی", "ي"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 10
                    Case 2 : S = CLng(abjad("يا", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "ARABIC"))
                    Case 5 : S = 1
                    Case 6 : S = CLng(asgar(choosen, 7))
                    Case 7, 10 : S = 6
                    Case 8 : S = CLng(abjad("يا", 7, 1))
                    Case 9 : S = CLng(bastet(choosen, 1, -8, 1, "ARABIC"))
                    Case 11 : S = CLng(asgar(choosen, 12))
                    Case 12, 15 : S = 6
                    Case 13 : S = CLng(abjad("يا", 12, 1))
                    Case 14 : S = CLng(bastet(choosen, 1, -13, 1, "ARABIC"))
                    Case Else : err = 1
                End Select
            Case "ك", "ﮒ", "ک"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 20
                    Case 2 : S = CLng(abjad("كاف", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "ARABIC"))
                    Case 5 : S = 1
                    Case 6 : S = CLng(asgar(choosen, 7))
                    Case 7, 10 : S = 11
                    Case 8 : S = CLng(abjad("كاف", 7, 1))
                    Case 9 : S = CLng(bastet(choosen, 1, -8, 1, "ARABIC"))
                    Case 11 : S = CLng(asgar(choosen, 12))
                    Case 12, 15 : S = 20
                    Case 13 : S = CLng(abjad("كاف", 12, 1))
                    Case 14 : S = CLng(bastet(choosen, 1, -13, 1, "ARABIC"))
                    Case Else : err = 1
                End Select
            Case "ل"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 30
                    Case 2 : S = CLng(abjad("لام", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "ARABIC"))
                    Case 5 : S = 1
                    Case 6 : S = CLng(asgar(choosen, 7))
                    Case 7, 10 : S = 2
                    Case 8 : S = CLng(abjad("لام", 7, 1))
                    Case 9 : S = CLng(bastet(choosen, 1, -8, 1, "ARABIC"))
                    Case 11 : S = CLng(asgar(choosen, 12))
                    Case 12, 15 : S = 2
                    Case 13 : S = CLng(abjad("لام", 12, 1))
                    Case 14 : S = CLng(bastet(choosen, 1, -13, 1, "ARABIC"))
                    Case Else : err = 1
                End Select
            Case "ﻻ"
                Select Case tablo
                    Case 0 : S = CLng(asgar("ا")) + CLng(asgar("ل"))
                    Case 1, 4 : S = 31
                    Case 2 : S = CLng(abjad("لام الف", 1, 1))
                    Case 3 : S = CLng(bastet("لا", 1, -2, 1, "ARABIC"))
                    Case 5 : S = 2
                    Case 6 : S = CLng(asgar(choosen, 7))
                    Case 7, 10 : S = 3
                    Case 8 : S = CLng(abjad("لام الف", 7, 1))
                    Case 9 : S = CLng(bastet(choosen, 1, -8, 1, "ARABIC"))
                    Case 11 : S = CLng(asgar(choosen, 12))
                    Case 12, 15 : S = 3
                    Case 13 : S = CLng(abjad("لام الف", 12, 1))
                    Case 14 : S = CLng(bastet(choosen, 1, -13, 1, "ARABIC"))
                    Case Else : err = 1
                End Select
            Case "م"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 40
                    Case 2 : S = CLng(abjad("ميم", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "ARABIC"))
                    Case 5 : S = 1
                    Case 6 : S = CLng(asgar(choosen, 7))
                    Case 7, 10 : S = 4
                    Case 8 : S = CLng(abjad("ميم", 7, 1))
                    Case 9 : S = CLng(bastet(choosen, 1, -8, 1, "ARABIC"))
                    Case 11 : S = CLng(asgar(choosen, 12))
                    Case 12, 15 : S = 4
                    Case 13 : S = CLng(abjad("ميم", 12, 1))
                    Case 14 : S = CLng(bastet(choosen, 1, -13, 1, "ARABIC"))
                    Case Else : err = 1
                End Select
            Case "ن", "ﯓ"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 50
                    Case 2 : S = CLng(abjad("نون", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "ARABIC"))
                    Case 5 : S = 1
                    Case 6 : S = CLng(asgar(choosen, 7))
                    Case 7, 10 : S = 3
                    Case 8 : S = CLng(abjad("نون", 7, 1))
                    Case 9 : S = CLng(bastet(choosen, 1, -8, 1, "ARABIC"))
                    Case 11 : S = CLng(asgar(choosen, 12))
                    Case 12, 15 : S = 3
                    Case 13 : S = CLng(abjad("نون", 12, 1))
                    Case 14 : S = CLng(bastet(choosen, 1, -13, 1, "ARABIC"))
                    Case Else : err = 1
                End Select
            Case "س"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 60
                    Case 2 : S = CLng(abjad("سين", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "ARABIC"))
                    Case 5 : S = 1
                    Case 6 : S = CLng(asgar(choosen, 7))
                    Case 7, 10 : S = 15
                    Case 8 : S = CLng(abjad("سين", 7, 1))
                    Case 9 : S = CLng(bastet(choosen, 1, -8, 1, "ARABIC"))
                    Case 11 : S = CLng(asgar(choosen, 12))
                    Case 12, 15 : S = 60
                    Case 13 : S = CLng(abjad("سين", 12, 1))
                    Case 14 : S = CLng(bastet(choosen, 1, -13, 1, "ARABIC"))
                    Case Else : err = 1
                End Select
            Case "ع"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 70
                    Case 2 : S = CLng(abjad("عين", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "ARABIC"))
                    Case 5 : S = 1
                    Case 6 : S = CLng(asgar(choosen, 7))
                    Case 7, 10 : S = 12
                    Case 8 : S = CLng(abjad("عين", 7, 1))
                    Case 9 : S = CLng(bastet(choosen, 1, -8, 1, "ARABIC"))
                    Case 11 : S = CLng(asgar(choosen, 12))
                    Case 12, 15 : S = 30
                    Case 13 : S = CLng(abjad("عين", 12, 1))
                    Case 14 : S = CLng(bastet(choosen, 1, -13, 1, "ARABIC"))
                    Case Else : err = 1
                End Select
            Case "ف"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 80
                    Case 2 : S = CLng(abjad("فا", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "ARABIC"))
                    Case 5 : S = 1
                    Case 6 : S = CLng(asgar(choosen, 7))
                    Case 7, 10 : S = 13
                    Case 8 : S = CLng(abjad("فا", 7, 1))
                    Case 9 : S = CLng(bastet(choosen, 1, -8, 1, "ARABIC"))
                    Case 11 : S = CLng(asgar(choosen, 12))
                    Case 12, 15 : S = 40
                    Case 13 : S = CLng(abjad("فا", 12, 1))
                    Case 14 : S = CLng(bastet(choosen, 1, -13, 1, "ARABIC"))
                    Case Else : err = 1
                End Select
            Case "ص"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 90
                    Case 2 : S = CLng(abjad("صاد", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "ARABIC"))
                    Case 5 : S = 1
                    Case 6 : S = CLng(asgar(choosen, 7))
                    Case 7, 10 : S = 22
                    Case 8 : S = CLng(abjad("صاد", 7, 1))
                    Case 9 : S = CLng(bastet(choosen, 1, -8, 1, "ARABIC"))
                    Case 11 : S = CLng(asgar(choosen, 12))
                    Case 12, 15 : S = 400
                    Case 13 : S = CLng(abjad("صاد", 12, 1))
                    Case 14 : S = CLng(bastet(choosen, 1, -13, 1, "ARABIC"))
                    Case Else : err = 1
                End Select
            Case "ق"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 100
                    Case 2 : S = CLng(abjad("قاف", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "ARABIC"))
                    Case 5 : S = 1
                    Case 6 : S = CLng(asgar(choosen, 7))
                    Case 7, 10 : S = 14
                    Case 8 : S = CLng(abjad("قاف", 7, 1))
                    Case 9 : S = CLng(bastet(choosen, 1, -8, 1, "ARABIC"))
                    Case 11 : S = CLng(asgar(choosen, 12))
                    Case 12, 15 : S = 50
                    Case 13 : S = CLng(abjad("قاف", 12, 1))
                    Case 14 : S = CLng(bastet(choosen, 1, -13, 1, "ARABIC"))
                    Case Else : err = 1
                End Select
            Case "ر"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 200
                    Case 2 : S = CLng(abjad("را", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "ARABIC"))
                    Case 5 : S = 1
                    Case 6 : S = CLng(asgar(choosen, 7))
                    Case 7, 10 : S = 8
                    Case 8 : S = CLng(abjad("را", 7, 1))
                    Case 9 : S = CLng(bastet(choosen, 1, -8, 1, "ARABIC"))
                    Case 11 : S = CLng(asgar(choosen, 12))
                    Case 12, 15 : S = 8
                    Case 13 : S = CLng(abjad("را", 12, 1))
                    Case 14 : S = CLng(bastet(choosen, 1, -13, 1, "ARABIC"))
                    Case Else : err = 1
                End Select
            Case "ش"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 300
                    Case 2 : S = CLng(abjad("شين", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "ARABIC"))
                    Case 5 : S = 1
                    Case 6 : S = CLng(asgar(choosen, 7))
                    Case 7, 10 : S = 21
                    Case 8 : S = CLng(abjad("شين", 7, 1))
                    Case 9 : S = CLng(bastet(choosen, 1, -8, 1, "ARABIC"))
                    Case 11 : S = CLng(asgar(choosen, 12))
                    Case 12, 15 : S = 300
                    Case 13 : S = CLng(abjad("شين", 12, 1))
                    Case 14 : S = CLng(bastet(choosen, 1, -13, 1, "ARABIC"))
                    Case Else : err = 1
                End Select
            Case "ت"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 400
                    Case 2 : S = CLng(abjad("تا", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "ARABIC"))
                    Case 5 : S = 1
                    Case 6 : S = CLng(asgar(choosen, 7))
                    Case 7, 10 : S = 10
                    Case 8 : S = CLng(abjad("تا", 7, 1))
                    Case 9 : S = CLng(bastet(choosen, 1, -8, 1, "ARABIC"))
                    Case 11 : S = CLng(asgar(choosen, 12))
                    Case 12, 15 : S = 10
                    Case 13 : S = CLng(abjad("تا", 12, 1))
                    Case 14 : S = CLng(bastet(choosen, 1, -13, 1, "ARABIC"))
                    Case Else : err = 1
                End Select
            Case "ث"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 500
                    Case 2 : S = CLng(abjad("ثا", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "ARABIC"))
                    Case 5 : S = 1
                    Case 6 : S = CLng(asgar(choosen, 7))
                    Case 7, 10 : S = 25
                    Case 8 : S = CLng(abjad("ثا", 7, 1))
                    Case 9 : S = CLng(bastet(choosen, 1, -8, 1, "ARABIC"))
                    Case 11 : S = CLng(asgar(choosen, 12))
                    Case 12, 15 : S = 700
                    Case 13 : S = CLng(abjad("ثا", 12, 1))
                    Case 14 : S = CLng(bastet(choosen, 1, -13, 1, "ARABIC"))
                    Case Else : err = 1
                End Select
            Case "خ"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 600
                    Case 2 : S = CLng(abjad("خا", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "ARABIC"))
                    Case 5 : S = 1
                    Case 6 : S = CLng(asgar(choosen, 7))
                    Case 7, 10 : S = 20
                    Case 8 : S = CLng(abjad("خا", 7, 1))
                    Case 9 : S = CLng(bastet(choosen, 1, -8, 1, "ARABIC"))
                    Case 11 : S = CLng(asgar(choosen, 12))
                    Case 12, 15 : S = 200
                    Case 13 : S = CLng(abjad("خا", 12, 1))
                    Case 14 : S = CLng(bastet(choosen, 1, -13, 1, "ARABIC"))
                    Case Else : err = 1
                End Select
            Case "ذ"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 700
                    Case 2 : S = CLng(abjad("ذال", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "ARABIC"))
                    Case 5 : S = 1
                    Case 6 : S = CLng(asgar(choosen, 7))
                    Case 7, 10 : S = 17
                    Case 8 : S = CLng(abjad("ذال", 7, 1))
                    Case 9 : S = CLng(bastet(choosen, 1, -8, 1, "ARABIC"))
                    Case 11 : S = CLng(asgar(choosen, 12))
                    Case 12, 15 : S = 80
                    Case 13 : S = CLng(abjad("ذال", 12, 1))
                    Case 14 : S = CLng(bastet(choosen, 1, -13, 1, "ARABIC"))
                    Case Else : err = 1
                End Select
            Case "ض"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 800
                    Case 2 : S = CLng(abjad("ضاد", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "ARABIC"))
                    Case 5 : S = 1
                    Case 6 : S = CLng(asgar(choosen, 7))
                    Case 7, 10 : S = 23
                    Case 8 : S = CLng(abjad("ضاد", 7, 1))
                    Case 9 : S = CLng(bastet(choosen, 1, -8, 1, "ARABIC"))
                    Case 11 : S = CLng(asgar(choosen, 12))
                    Case 12, 15 : S = 500
                    Case 13 : S = CLng(abjad("ضاد", 12, 1))
                    Case 14 : S = CLng(bastet(choosen, 1, -13, 1, "ARABIC"))
                    Case Else : err = 1
                End Select
            Case "ظ"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 900
                    Case 2 : S = CLng(abjad("ظا", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "ARABIC"))
                    Case 5 : S = 1
                    Case 6 : S = CLng(asgar(choosen, 7))
                    Case 7, 10 : S = 28
                    Case 8 : S = CLng(abjad("ظا", 7, 1))
                    Case 9 : S = CLng(bastet(choosen, 1, -8, 1, "ARABIC"))
                    Case 11 : S = CLng(asgar(choosen, 12))
                    Case 12, 15 : S = 1000
                    Case 13 : S = CLng(abjad("ظا", 12, 1))
                    Case 14 : S = CLng(bastet(choosen, 1, -13, 1, "ARABIC"))
                    Case Else : err = 1
                End Select
            Case "غ"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 1000
                    Case 2 : S = CLng(abjad("غين", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "ARABIC"))
                    Case 5 : S = 1
                    Case 6 : S = CLng(asgar(choosen, 7))
                    Case 7, 10 : S = 27
                    Case 8 : S = CLng(abjad("غين", 7, 1))
                    Case 9 : S = CLng(bastet(choosen, 1, -8, 1, "ARABIC"))
                    Case 11 : S = CLng(asgar(choosen, 12))
                    Case 12, 15 : S = 900
                    Case 13 : S = CLng(abjad("غين", 12, 1))
                    Case 14 : S = CLng(bastet(choosen, 1, -13, 1, "ARABIC"))
                    Case Else : err = 1
                End Select
            Case "א"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 1
                    Case 2 : S = CLng(abjad("אלף", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "HEBREW"))
                    Case 5 : S = 1
                    Case Else : err = 1
                End Select
            Case "ב"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 2
                    Case 2 : S = CLng(abjad("בית", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "HEBREW"))
                    Case 5 : S = 1
                    Case Else : err = 1
                End Select
            Case "ג"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 3
                    Case 2 : S = CLng(abjad("גימל", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "HEBREW"))
                    Case 5 : S = 1
                    Case Else : err = 1
                End Select
            Case "ד"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 4
                    Case 2 : S = CLng(abjad("דלת", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "HEBREW"))
                    Case 5 : S = 1
                    Case Else : err = 1
                End Select
            Case "ה"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 5
                    Case 2 : S = CLng(abjad("הא", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "HEBREW"))
                    Case 5 : S = 1
                    Case Else : err = 1
                End Select
            Case "ו"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 6
                    Case 2 : S = CLng(abjad("וו", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "HEBREW"))
                    Case 5 : S = 1
                    Case Else : err = 1
                End Select
            Case "ז"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 7
                    Case 2 : S = CLng(abjad("זין", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "HEBREW"))
                    Case 5 : S = 1
                    Case Else : err = 1
                End Select
            Case "ח"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 8
                    Case 2 : S = CLng(abjad("חית", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "HEBREW"))
                    Case 5 : S = 1
                    Case Else : err = 1
                End Select
            Case "ט"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 9
                    Case 2 : S = CLng(abjad("טיח", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "HEBREW"))
                    Case 5 : S = 1
                    Case Else : err = 1
                End Select
            Case "י"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 10
                    Case 2 : S = CLng(abjad("יוד", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "HEBREW"))
                    Case 5 : S = 1
                    Case Else : err = 1
                End Select
            Case "כ", "ך"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 20
                    Case 2 : S = CLng(abjad("כף", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "HEBREW"))
                    Case 5 : S = 1
                    Case Else : err = 1
                End Select
            Case "ל"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 30
                    Case 2 : S = CLng(abjad("למד", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "HEBREW"))
                    Case 5 : S = 1
                    Case Else : err = 1
                End Select
            Case "מ", "ם"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 40
                    Case 2 : S = CLng(abjad("מם", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "HEBREW"))
                    Case 5 : S = 1
                    Case Else : err = 1
                End Select
            Case "נ", "ן"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 50
                    Case 2 : S = CLng(abjad("נון", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "HEBREW"))
                    Case 5 : S = 1
                    Case Else : err = 1
                End Select
            Case "ס"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 60
                    Case 2 : S = CLng(abjad("סמך", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "HEBREW"))
                    Case 5 : S = 1
                    Case Else : err = 1
                End Select
            Case "ע"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 70
                    Case 2 : S = CLng(abjad("עין", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "HEBREW"))
                    Case 5 : S = 1
                    Case Else : err = 1
                End Select
            Case "פ", "ף"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 80
                    Case 2 : S = CLng(abjad("פא", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "HEBREW"))
                    Case 5 : S = 1
                    Case Else : err = 1
                End Select
            Case "צ", "ץ"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 90
                    Case 2 : S = CLng(abjad("צדיק", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "HEBREW"))
                    Case 5 : S = 1
                    Case Else : err = 1
                End Select
            Case "ק"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 100
                    Case 2 : S = CLng(abjad("קוף", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "HEBREW"))
                    Case 5 : S = 1
                    Case Else : err = 1
                End Select
            Case "ר"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 200
                    Case 2 : S = CLng(abjad("ריש", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "HEBREW"))
                    Case 5 : S = 1
                    Case Else : err = 1
                End Select
            Case "ש"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 300
                    Case 2 : S = CLng(abjad("שין", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "HEBREW"))
                    Case 5 : S = 1
                    Case Else : err = 1
                End Select
            Case "ת"
                Select Case tablo
                    Case 0 : S = CLng(asgar(choosen, 1))
                    Case 1, 4 : S = 400
                    Case 2 : S = CLng(abjad("תו", 1, 1))
                    Case 3 : S = CLng(bastet(choosen, 1, -2, 1, "HEBREW"))
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
                                    S = CLng(abjad(choosen, tablo, 1))
                                    C = C + 1
                                Loop Until saf(choosen, "") <> ""
                                SH = SH + 1
                            Case Else : err = 3
                        End Select
                        hrk = hrk + 1
                    Case "ٰ"
                        C = 1
                        Do
                            choosen = MID(metin, counter - C, 1)
                            If choosen = "ـ" Then S = CLng(abjad("ا", tablo, 1))
                            C = C + 1
                        Loop Until saf(choosen, "") <> "" Or choosen = "ـ"
                    Case " " : space = space + 1
                    Case Chr(10)
                    Case Chr(13)
                    Case "َ", "ِ", "ً", "ٍ", "ُ", "ْ", "ٌ", "ـ" : hrk = hrk + 1
                    Case Else : nitem = nitem + choosen : err = 2
                End Select
        End Select
        Select Case detail
            Case 1
                Select Case saf(choosen, "")
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
                Case 1 : abjad = SN
                Case Else : abjad = SM
            End Select
        Case 1 : abjad = "Tablo Kodu?"
        Case 2 : abjad = N - (space + hrk) & " Tanımsız:" & nitem & "||" & space & " boşluk||" & hrk & " hareke"
        Case 3 : abjad = "Şedde Ayarı?"
    End Select
    ReDim S, SM, N
End Sub
Sub bastet(Optional metin As String, Optional MT As Variant, Optional tablo As Variant, Optional shadda As Variant, Optional language As Variant) As String
    Dim HM, invertablo, BC, Turn, err As Integer : err = 0
    Dim Baster, choosen, NS As String
    Select Case CStr(CLng(metin))
        Case metin
            Baster = metin
        Case Else
            Select Case tablo
                Case 0 To 15 : Baster = abjad(metin, tablo, shadda)
                Case -16 To -1 : invertablo = (-1 * tablo) - 1 : Baster = abjad(metin, invertablo, shadda)
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
                                Case 1 : NS = NS & " احد"
                                Case 2 : NS = NS & " اثنان"
                                Case 3 : NS = NS & " ثلاثة"
                                Case 4 : NS = NS & " أربعة"
                                Case 5 : NS = NS & " خمسة"
                                Case 6 : NS = NS & " ستة"
                                Case 7 : NS = NS & " سبعة"
                                Case 8 : NS = NS & " ثمانية"
                                Case 9 : NS = NS & " تسعة"
                            End Select
                        Case 1
                            Select Case CInt(choosen)
                                Case 1 : NS = NS & " عشرة"
                                Case 2 : NS = NS & " عشرين"
                                Case 3 : NS = NS & " ثلاثين"
                                Case 4 : NS = NS & " أربعين"
                                Case 5 : NS = NS & " خمسين"
                                Case 6 : NS = NS & " ستين"
                                Case 7 : NS = NS & " سبعين"
                                Case 8 : NS = NS & " ثمانين"
                                Case 9 : NS = NS & " تسعين"
                            End Select
                        Case 2
                            Select Case CInt(choosen)
                                Case 1 : NS = NS & " مائة"
                                Case 2 : NS = NS & " مائتان"
                                Case 3 : NS = NS & " ثلثمائة"
                                Case 4 : NS = NS & " أربعمائة"
                                Case 5 : NS = NS & " خمسمائة"
                                Case 6 : NS = NS & " ستمائة"
                                Case 7 : NS = NS & " سبعمائة"
                                Case 8 : NS = NS & " ثمانمائة"
                                Case 9 : NS = NS & " تسعمائة"
                            End Select
                        Case 3
                            Select Case CInt(choosen)
                                Case 1 : NS = NS & " ألف"
                                Case 2 : NS = NS & " ألفان"
                                Case 3 : NS = NS & " ثلاثة آلاف"
                                Case 4 : NS = NS & " أربعة آلاف"
                                Case 5 : NS = NS & " خمسة آلاف"
                                Case 6 : NS = NS & " ستة آلاف"
                                Case 7 : NS = NS & " سبعة آلاف"
                                Case 8 : NS = NS & " ثمانية آلاف"
                                Case 9 : NS = NS & " تسعة آلاف"
                            End Select
                        Case 4
                            Select Case CInt(choosen)
                                Case 1 : NS = NS & " عشرة آلاف"
                                Case 2 : NS = NS & " عشرين ألفا"
                                Case 3 : NS = NS & " ثلاثون ألفا"
                                Case 4 : NS = NS & " أربعين ألفا"
                                Case 5 : NS = NS & " خمسون ألفا"
                                Case 6 : NS = NS & " ستين ألفا"
                                Case 7 : NS = NS & " سبعين ألفا"
                                Case 8 : NS = NS & " ثمانين ألفا"
                                Case 9 : NS = NS & " تسعين ألفا"
                            End Select
                        Case 5
                            Select Case CInt(choosen)
                                Case 1 : NS = NS & " مائة ألف"
                                Case 2 : NS = NS & " مائتان ألف"
                                Case 3 : NS = NS & " ثلاثمائة ألف"
                                Case 4 : NS = NS & " أربعمائة ألف"
                                Case 5 : NS = NS & " خمسمائة ألف"
                                Case 6 : NS = NS & " ستمائة ألف"
                                Case 7 : NS = NS & " سبعمائة ألف"
                                Case 8 : NS = NS & " ثمانمائة ألف"
                                Case 9 : NS = NS & " تسعمائة ألف"
                            End Select
                        Case 6
                            Select Case CInt(choosen)
                                Case 1 : NS = NS & " مليون"
                                Case 2 : NS = NS & " مليونان"
                                Case 3 : NS = NS & " ثلاثة مليون"
                                Case 4 : NS = NS & " أربعة مليون"
                                Case 5 : NS = NS & " خمسة مليون"
                                Case 6 : NS = NS & " ستة مليون"
                                Case 7 : NS = NS & " سبعة مليون"
                                Case 8 : NS = NS & " ثمانية مليون"
                                Case 9 : NS = NS & " تسعة مليون"
                            End Select
                        Case 7
                            Select Case CInt(choosen)
                                Case 1 : NS = NS & " عشرة مليون"
                                Case 2 : NS = NS & " عشرين مليون"
                                Case 3 : NS = NS & " ثلاثين مليون"
                                Case 4 : NS = NS & " أربعين مليون"
                                Case 5 : NS = NS & " خمسين مليون"
                                Case 6 : NS = NS & " ستين مليون"
                                Case 7 : NS = NS & " سبعون مليون"
                                Case 8 : NS = NS & " ثمانون مليون"
                                Case 9 : NS = NS & " تسعين مليون"
                            End Select
                    End Select
                Case "HEBREW"
                    Select Case BC
                        Case 0
                            Select Case CInt(choosen)
                                Case 1 : NS = NS & " אחת"
                                Case 2 : NS = NS & " שתים"
                                Case 3 : NS = NS & " שלש"
                                Case 4 : NS = NS & " ארבע"
                                Case 5 : NS = NS & " חמש"
                                Case 6 : NS = NS & " שש"
                                Case 7 : NS = NS & " שבע"
                                Case 8 : NS = NS & " שמונה"
                                Case 9 : NS = NS & " תשע"
                            End Select
                        Case 1
                            Select Case CInt(choosen)
                                Case 1 : NS = NS & " עשר"
                                Case 2 : NS = NS & " עשרים"
                                Case 3 : NS = NS & " שלושים"
                                Case 4 : NS = NS & " ארבעים"
                                Case 5 : NS = NS & " חמישים"
                                Case 6 : NS = NS & " ששים"
                                Case 7 : NS = NS & " שבעים"
                                Case 8 : NS = NS & " שמונים"
                                Case 9 : NS = NS & " תשעים"
                            End Select
                        Case 2
                            Select Case CInt(choosen)
                                Case 1 : NS = NS & " מאה"
                                Case 2 : NS = NS & " מָאתַיִם"
                                Case 3 : NS = NS & " שְׁלוֹשׁ מֵאוֹת"
                                Case 4 : NS = NS & " אַרְבַּע מֵאוֹת"
                                Case 5 : NS = NS & " חֲמֵשׁ מֵאוֹת"
                                Case 6 : NS = NS & " שֵׁשׁ מֵאוֹת"
                                Case 7 : NS = NS & " שְׁבַע מֵאוֹת"
                                Case 8 : NS = NS & " שְׁמוֹנֶה מֵאוֹת"
                                Case 9 : NS = NS & " תְּשַׁע מֵאוֹת"
                            End Select
                        Case 3
                            Select Case CInt(choosen)
                                Case 1 : NS = NS & " אלף"
                                Case 2 : NS = NS & " אלפיים"
                                Case 3 : NS = NS & " שלושה אלף"
                                Case 4 : NS = NS & " ארבעת אלפים"
                                Case 5 : NS = NS & " חמשת אלפים"
                                Case 6 : NS = NS & " ששת אלפים"
                                Case 7 : NS = NS & " שבעת אלפים"
                                Case 8 : NS = NS & " שמונת אלפים"
                                Case 9 : NS = NS & " תשעת אלפים"
                            End Select
                        Case 4
                            Select Case CInt(choosen)
                                Case 1 : NS = NS & " עשרת אלפים"
                                Case 2 : NS = NS & " עשרים אלף"
                                Case 3 : NS = NS & " שלושים אלף"
                                Case 4 : NS = NS & " ארבעים אלף"
                                Case 5 : NS = NS & " חמישים אלף"
                                Case 6 : NS = NS & " שישים אלף"
                                Case 7 : NS = NS & " שבעים אלף"
                                Case 8 : NS = NS & " שמונים אלף"
                                Case 9 : NS = NS & " תשעים אלף"
                            End Select
                        Case 5
                            Select Case CInt(choosen)
                                Case 1 : NS = NS & " מאה אלף"
                                Case 2 : NS = NS & " מאתיים אלף"
                                Case 3 : NS = NS & " שלוש מאות אלף"
                                Case 4 : NS = NS & " ארבע מאות אלף"
                                Case 5 : NS = NS & " חמש מאות אלף"
                                Case 6 : NS = NS & " שש מאות אלף"
                                Case 7 : NS = NS & " שבע מאות אלף"
                                Case 8 : NS = NS & " שמונה מאות אלף"
                                Case 9 : NS = NS & " תשע מאות אלף"
                            End Select
                        Case 6
                            Select Case CInt(choosen)
                                Case 1 : NS = NS & " מיליון"
                                Case 2 : NS = NS & " שני מיליון"
                                Case 3 : NS = NS & " שלושה מיליון"
                                Case 4 : NS = NS & " ארבע מיליון"
                                Case 5 : NS = NS & " חמישה מיליון"
                                Case 6 : NS = NS & " שישה מיליון"
                                Case 7 : NS = NS & " שבעה מיליון"
                                Case 8 : NS = NS & " שמונה מליון"
                                Case 9 : NS = NS & " תשעה מיליון"
                            End Select
                        Case 7
                            Select Case CInt(choosen)
                                Case 1 : NS = NS & " עשר מיליון"
                                Case 2 : NS = NS & " עשרים מיליון"
                                Case 3 : NS = NS & " שלושים מיליון"
                                Case 4 : NS = NS & " ארבעים מיליון"
                                Case 5 : NS = NS & " חמישים מיליון"
                                Case 6 : NS = NS & " שישים מיליון"
                                Case 7 : NS = NS & " שבעים מיליון"
                                Case 8 : NS = NS & " שמונים מיליון"
                                Case 9 : NS = NS & " תשעים מיליון"
                            End Select
                    End Select
            End Select
        Next BC
        Baster = 0
        Select Case tablo
            Case 0 To 15 : Baster = CLng(abjad(NS, tablo, 1)) + CLng(abjad(NS, 5, 1))
            Case -16 To -1 : invertablo = (-1 * tablo) - 1 : Baster = CLng(abjad(NS, invertablo, 1))
            Case Else : Baster = "Tablo Kodu?"
        End Select
    Next HM
    Select Case err
        Case 0 : bastet = Baster
        Case 1 : bastet = "Dil Tanımı?"
        Case Else
    End Select
End Sub
Sub unsur(Optional metin, Optional otabiat As Variant, Optional otype As Variant, Optional shadda As Integer) As String
    Dim counter, FC, AC, WC, EC, err As Integer : err = 0
    Dim choosen, FS, AI, WS, ES As String
    Select Case LCase(otabiat)
        Case "liste", "list" : otabiat = 1
        Case "adet", "amount" : otabiat = 0
    End Select
    Select Case LCase(otype)
        Case "fire", "ateş" : otype = 0
        Case "air", "hava" : otype = 1
        Case "water", "su" : otype = 2
        Case "earth", "toprak" : otype = 3
    End Select
    For counter = 1 To LEN(metin)
        choosen = MID(metin, counter, 1)
        Select Case shadda
            Case 2
                C = 1
                If choosen = "ّ" Then
                    Do
                        choosen = MID(metin, counter - C, 1)
                        C = C + 1
                    Loop Until saf(choosen, "") <> ""
                Else
                End If
            Case 1
            Case Else : err = 1
        End Select
        Select Case choosen
            Case "ا", "ء", "ب", "ج", "س", "ص", "ر", "خ"
                FC = FC + 1 : FS = FS & " " & choosen
            Case "أ", "إ", "آ"
                FC = FC + 1 : FS = FS + " " + "ا"
            Case "ى", "ه", "ز", "ح", "ط", "ي", "ل", "ة", "ث", "ی"
                AC = AC + 1 : AI = AI & " " & choosen
            Case "د", "ك", "ع", "ف", "ق", "ش", "ض"
                WC = WC + 1 : WS = WS & " " & choosen
            Case "و", "م", "ن", "ت", "ذ", "ظ", "غ"
                EC = EC + 1 : ES = ES & " " & choosen
            Case "ؤ"
                EC = EC + 1 : ES = ES & " " & "و"
                FC = FC + 1 : FS = FS + " " + "ا"
            Case "ۀ"
                AC = AC + 1 : AI = AI & " " & "ه"
                AC = AC + 1 : AI = AI & " " & "ي"
            Case "ئ"
                AC = AC + 1 : AI = AI & " " & "ي"
                FC = FC + 1 : FS = FS + " " + "ا"
        End Select
        Select Case choosen
            Case "א", "ב", "ג", "ס", "צ", "ץ", "ר"
                FC = FC + 1 : FS = FS & " " & choosen
            Case "ה", "ז", "ח", "ט", "י", "ל"
                AC = AC + 1 : AI = AI & " " & choosen
            Case "ד", "כ", "ך", "ע", "פ", "ף", "ק", "ש"
                WC = WC + 1 : WS = WS & " " & choosen
            Case "ו", "מ", "ם", "נ", "ן", "ת"
                EC = EC + 1 : ES = ES & " " & choosen
        End Select
    Next counter
    Select Case otype
        Case 0
            Select Case otabiat
                Case 1 : ounsur = FS
                Case 0 : ounsur = FC
            End Select
        Case 1
            Select Case otabiat
                Case 1 : ounsur = AI
                Case 0 : ounsur = AC
            End Select
        Case 2
            Select Case otabiat
                Case 1 : ounsur = WS
                Case 0 : ounsur = WC
            End Select
        Case 3
            Select Case otabiat
                Case 1 : ounsur = ES
                Case 0 : ounsur = EC
            End Select
    End Select
    ReDim FC, AC, WC, EC, FS, AI, WS, ES
    Select Case err
        Case 0 : unsur = ounsur
        Case 1 : unsur = "Şedde Ayarı?"
    End Select
End Sub
Sub say(Optional metin As String, Optional met As String, Optional stype As Variant, Optional fastmode As Variant) As Integer
    Dim CA, counter As Integer
    Dim choosen     As String
    If fastmode <> 1 Then metin = saf(metin, "") : met = saf(met, "")
    CA = LEN(metin) - LEN(met) + 1 : say = 0
    For counter = 1 To CA
        choosen = MID(metin, counter, LEN(met))
        Select Case stype
            Case 0
                If choosen = met Then say = say + 1
            Case 1
                If counter = CA And choosen = met Then
                    If MID(metin, counter - 1, 1) = " " Then  say = say + 1
                ElseIf counter < CA Then
                    If MID(metin, counter + LEN(met), 1) = " " And choosen = met Then
                        If counter = 1 Then
                            say = say + 1
                        ElseIf MID(metin, counter - 1, 1) = " " Then
                            say = say + 1
                        Else
                        End If
                    Else
                    End If
                Else
                End If
            Case 2
                If counter > 2 Then If choosen = met And MID(metin, counter - 2, 2) = "ال" Then say = say + 1
            Case 3
                If counter = CA And counter > 2  Then
                    If choosen = met And MID(metin, counter - 2, 2) = "ال" Then say = say + 1
                ElseIf counter < CA And counter > 3 Then
                    If MID(metin, counter + LEN(met), 1) = " " Then
                        If MID(metin, counter - 3, 3) = "ال " And choosen = met Then say = say + 1
                    Else
                    End If
                Else
                End If
        End Select
    Next
End Sub
Sub saf(Optional metin As String, Optional ayrac As Variant) As String
    Dim counter     As Integer
    Dim choosen, S, irun As String : saf = ""
    Select Case ayrac
        Case 0 : irun = ""
        Case Else : irun = ayrac
    End Select
    For counter = 1 To LEN(metin)
        ReDim choosen : choosen = MID(metin, counter, 1) : ReDim S : S = ""
        Select Case choosen
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
            Case "כ", "ך" : S = "כ" & irun
            Case "מ", "ם" : S = "מ" & irun
            Case "נ", "ן" : S = "נ" & irun
            Case "פ", "ף" : S = "פ" & irun
            Case "צ", "ץ" : S = "צ" & irun
            Case " "
                Select Case ayrac
                    Case "" : S = choosen
                    Case 0 : S = ""
                    Case Else : S = irun
                End Select
            Case Else : S = ""
        End Select
        ReDim saf : saf = saf & S
    Next counter
End Sub
Sub TEKSIR(Optional metin As String, Optional ayrac As String) As String
    Dim counter, produce, inverse, LengthDouble As Integer : LengthDouble = 0
    Dim newmetin, IKSIR, turn, result, Nothing As String
    Dim Rounder     As Object
    Dim P(1)        As Double : P(1) = 0
    Rounder = CreateUnoService("com.sun.star.sheet.FunctionAccess")
    newmetin = SAF(metin, 0)
    result = SAF(newmetin, ayrac) & Chr(10) & Chr(13)
    IKSIR = newmetin
    For produce = 1 To LEN(newmetin) -1
        P(0) = LEN(newmetin) / 2
        If LEN(newmetin) / 2 = Rounder.callFunction("ROUNDDOWN", P()) Then LengthDouble = 1
        IKSIR = ""
        For counter = 1 To Rounder.callFunction("ROUNDDOWN", P())
            inverse = LEN(newmetin) + 1 - counter
            IKSIR = IKSIR & MID(newmetin, inverse, 1)
            IKSIR = IKSIR & MID(newmetin, counter, 1)
        Next counter
        If LengthDouble <> 1 Then IKSIR = IKSIR & MID(newmetin, Rounder.callFunction("ROUNDDOWN", P()) + 1, 1)
        TEKSIR = result & SAF(IKSIR, ayrac) & Chr(10) & Chr(13)
        result = TEKSIR
        newmetin = SAF(IKSIR, 0)
        ReDim IKSIR, result, inverse, newmetin, P(1)
    Next produce
End Sub
Sub numbers2arab(Optional metin As String) As String
    Dim counter     As Integer
    Dim choosen, NA As String : NA = "" : numbers2arab = ""
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
    numbers2arab = NA
    ReDim numbers2arab, NA
End Sub
Sub huddam(Optional num As LONG, Optional htype As Variant, Optional method As Variant) As String
    Dim hpart(19), rest, counts, counting, counted, counter, part, preffixdepart As Integer : counts = 1
    Dim suffix, preffix As Long
    Dim Rounder     As Object
    Dim P(1)        As Double
    Rounder = CreateUnoService("com.sun.star.sheet.FunctionAccess")
    Dim GH, H       As String : GH = ""
    Select Case method
        Case 1
            Select Case htype
                Case "ULVI" : suffix = CLng(abjad("ئيل", 12, 1))
                Case "SUFLI" : suffix = CLng(abjad("يوش", 12, 1))
                Case "ŞER" : suffix = CLng(abjad("طيش", 12, 1))
                Case Else : suffix = CLng(abjad(htype, 12, 1))
            End Select
        Case Else
            Select Case htype
                Case "ULVI" : suffix = CLng(abjad("ئيل", 1, 1))
                Case "SUFLI" : suffix = CLng(abjad("يوش", 1, 1))
                Case "ŞER" : suffix = CLng(abjad("طيش", 1, 1))
                Case Else : suffix = CLng(abjad(htype, 1, 1))
            End Select
    End Select
    If suffix > num Then num = num + 361
    preffix = CStr(num - suffix)
    P(0) = (LEN(preffix) / 3)
    P(1) = 0
    preffixdepart = Rounder.callFunction("ROUNDDOWN", P()) * 3
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
                                Case 1 : H = "ل"
                                Case Else : H = "ب"
                            End Select
                        Case 3
                            Select Case method
                                Case 1 : H = "ن"
                                Case Else : H = "ج"
                            End Select
                        Case 4
                            Select Case method
                                Case 1 : H = "م"
                                Case Else : H = "د"
                            End Select
                        Case 5
                            Select Case method
                                Case 1 : H = "و"
                                Case Else : H = "ه"
                            End Select
                        Case 6
                            Select Case method
                                Case 1 : H = "ي"
                                Case Else : H = "و"
                            End Select
                        Case 7
                            Select Case method
                                Case 1 : H = "ه"
                                Case Else : H = "ز"
                            End Select
                        Case 8
                            Select Case method
                                Case 1 : H = "ر"
                                Case Else : H = "ح"
                            End Select
                        Case 9
                            Select Case method
                                Case 1 : H = "ب"
                                Case Else : H = "ط"
                            End Select
                    End Select
                Case 2
                    Select Case CInt(choosen)
                        Case 1
                            Select Case method
                                Case 1 : H = "ت"
                                Case Else : H = "ي"
                            End Select
                        Case 2 : H = "ك"
                        Case 3
                            Select Case method
                                Case 1 : H = "ع"
                                Case Else : H = "ل"
                            End Select
                        Case 4
                            Select Case method
                                Case 1 : H = "ف"
                                Case Else : H = "م"
                            End Select
                        Case 5
                            Select Case method
                                Case 1 : H = "ق"
                                Case Else : H = "ن"
                            End Select
                        Case 6 : H = "س"
                        Case 7
                            Select Case method
                                Case 1 : H = "د"
                                Case Else : H = "ع"
                            End Select
                        Case 8
                            Select Case method
                                Case 1 : H = "ذ"
                                Case Else : H = "ف"
                            End Select
                        Case 9
                            Select Case method
                                Case 1 : H = "ح"
                                Case Else : H = "ص"
                            End Select
                    End Select
                Case 1
                    Select Case CInt(choosen)
                        Case 1
                            Select Case method
                                Case 1 : H = "ج"
                                Case Else : H = "ق"
                            End Select
                        Case 2
                            Select Case method
                                Case 1 : H = "خ"
                                Case Else : H = "ر"
                            End Select
                        Case 3 : H = "ش"
                        Case 4
                            Select Case method
                                Case 1 : H = "ص"
                                Case Else : H = "ت"
                            End Select
                        Case 5
                            Select Case method
                                Case 1 : H = "ض"
                                Case Else : H = "ث"
                            End Select
                        Case 6
                            Select Case method
                                Case 1 : H = "ز"
                                Case Else : H = "خ"
                            End Select
                        Case 7
                            Select Case method
                                Case 1 : H = "ث"
                                Case Else : H = "ذ"
                            End Select
                        Case 8
                            Select Case method
                                Case 1 : H = "ط"
                                Case Else : H = "ض"
                            End Select
                        Case 9
                            Select Case method
                                Case 1 : H = "غ"
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
                    Case 1 : GH = GH & "ظ"
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
    huddam = GH
End Sub
Sub asgar(Optional harf As String, Optional level As Integer) As String
    Dim C           As Long
    Dim Rounder     As Object
    Dim P(1)        As Double
    Rounder = CreateUnoService("com.sun.star.sheet.FunctionAccess")
    REM Int() Fonksiyonunu tercih etmedim. Keyfi...
    Select Case level
        Case > 1 : C = abjad(harf, level, 1)
        Case Else : C = abjad(harf, 1, 1)
    End Select
    If C > 12 Then
        P(0) = (C / 12) : P(1) = 0
        asgar = C - (12 * Rounder.callFunction("ROUNDDOWN", P()))
    Else
        asgar = C
    End If
End Sub
Sub numerolog(Optional metin As String, Optional tablo As String, Optional outas As Variant, Optional shadda As Variant) As String
    Dim SM, S, C, D, N, sesli, sessiz, err, counter, space, hrk As Integer : numerolog = 0 : S = 0 : N = 0 : sesli = 0 : sessiz = 0
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
                                            S = CLng(numerolog(M, tablo, outas, 1))
                                            C = C + 1
                                        Loop Until S <> 0
                                    Case Else : err = 3
                                End Select
                                hrk = hrk + 1
                            Case "ٰ"
                                C = 1
                                Do
                                    M = MID(metin, counter - C, 1)
                                    If M = "ـ" Then S = CLng(numerolog("ا", tablo, outas, 1))
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
                Case "Sesli" : numerolog = rakamtopla(sesli, 1)
                Case "Sessiz" : numerolog = rakamtopla(sessiz, 1)
                Case "tam" : numerolog = SM
                Case "hepsi" : numerolog = rakamtopla(SM, 0)
                Case Else
                    If CInt(outas) > 0 Then
                        numerolog = rakamtopla(SM, CInt(outas))
                    Else
                        numerolog = "Çıktı türü?"
                    End If
            End Select
        Case 1 : numerolog = nesoohc & " (" & D & " karakter        '" & tablo & "' için tanımsız)"
        Case 2 : numerolog = nitem & " (" & N  - (space + hrk) & " karakter yöntemlerde tanımsız)"
        Case 3 : numerolog = "Şedde Ayarı?"
    End Select
    ReDim metin, SM, S, sesli, sessiz, N, C, D, M, nitem, tablo, err
End Sub
Sub rakamtopla(Optional valuez As Long, Optional d1g1tamount As Integer) As String
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
        Loop : ReDim hepsi : rakamtopla = hepsi
    Else
        Do Until LEN(CStr(valuez)) <= d1g1tamount
            NewSum = 0
            For counter = 1 To LEN(CStr(valuez))
                choosen = MID(CStr(valuez), counter, 1)
                NewSum = NewSum + choosen
            Next : valuez = NewSum
        Loop : ReDim d1g1tamount, valuez : rakamtopla = valuez
    End If
End Sub
Sub tesbeh(Optional zkr As Variant, Optional minimum As Double, Optional boncuk As Double, Optional bolum As Double) As String
    Dim outp        As String
    Dim turn, part, rest(1) As Double
    Dim Rounder     As Object
    Dim P(1), Q(1)  As Double : P(1) = 0 : Q(1) = 0
    Rounder = CreateUnoService("com.sun.star.sheet.FunctionAccess")
    zkr = CDbl(zkr) : If zkr < minimum Then zkr = zkr * zkr
    P(0) = (zkr / boncuk)
    turn = Rounder.callFunction("ROUNDDOWN", P())
    rest(0) = (zkr - (turn * boncuk))
    Q(0) = (rest(0) / bolum)
    part = Rounder.callFunction("ROUNDDOWN", Q())
    rest(1) = (rest(0) - (part * bolum))
    If turn > 0 Then outp = "[" & turn & " tur]"
    If part > 0 Then outp = outp & "[" & part & "X" & bolum & "]"
    If rest(1) > 0 Then outp = outp & "[" & rest(1) & " kalan]"
    ReDim outp
    tesbeh = outp
End Sub
Function tumle(range)
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
    276 If result = "" Then MsgBox "tumle() için girilen aralıktaki tüm hücreler zaten boş; makrolar harika çalışıyorlar"
    Tumle = result
End Function

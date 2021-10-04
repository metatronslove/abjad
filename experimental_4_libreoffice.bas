Sub wordbyword(Optional klmmetin As String, Optional tablo As Variant, Optional shadda As Variant, Optional detail As Variant) As String
    'Bu fonksiyonu kullandığınız hücreler için Metin Kaydır seçeneğini etkinleştirirseniz daha düzgün çalışıyor, parametreleri abjad() fonksiyonuyla aynı'
    Dim content, word As String
    content = ""
    word = ""
    For counter = 1 To LEN(klmmetin)
            klmchoosen = MID(klmmetin, counter, 1)
            word = word + klmchoosen
            Select Case klmchoosen
                Case " "
                    calculation =  "("  & abjad(word, tablo, shadda, detail) & ") "
                    content = content & word & altayaz(calculation)
                    word = ""
                    calculation = ""
                Case Else
                    If counter = LEN(klmmetin) Then
                        calculation =  "("  & abjad(word, tablo, shadda, detail) & ") "
                        content = content & word & altayaz(calculation)
                        word = ""
                        calculation = ""
                    Else
                    End If
            End Select
    Next
    ReDim word, calculation, content
    wordbyword = content
End Sub
Sub altayaz(Optional girdi As Variant) As String
    Dim counter     As Integer
    Dim choosen, ss As String : ss = "" : altayaz = ""
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
    altayaz = ss
    ReDim altayaz, ss
End Sub

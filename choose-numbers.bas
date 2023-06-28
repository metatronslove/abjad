Rem 'Ebced Hesabıyla ilgili paylaşımlarımı yaptığım ilk zamanlardan beri
Rem 'Şans oyunlarıyla ilgili ebced değerleri isteniyor. Öyle bir şey yok
Rem 'Bu makro kodu ile istediğiniz aralıkta istediğiniz kadar sayı seçip
Rem 'Şansınızı deneyebilirsiniz. Ebced'in böyle bir yönü yok.
Rem '=CHOOSENUMBERS(seçilebilir en büyük sayı; seçilecek sayı adedi)
Rem 'Örnek:
Rem '=CHOOSENUMBERS(90;7)
Function choosenumbers(ByVal limitmax As Integer, repetition As Integer) As String
	Dim choosen(repetition -1), selector, dontrepeat, NewChoosenNumber As Integer
	Dim seperator As String : seperator = ""
	Dim i As Long, j As Long
	Dim Temp As Variant : choosenumbers = ""
	For selector = 0 To repetition -1
		Do
			NewChoosenNumber = Int(Rnd * (limitmax + 1))
			For dontrepeat = 0 to selector
				If choosen(dontrepeat) = NewChoosenNumber Then NewChoosenNumber = 0
			Next dontrepeat
		Loop While NewChoosenNumber = 0
		choosen(selector) = NewChoosenNumber
	Next selector 
	For i = LBound(choosen) To UBound(choosen) - 1
		For j = i + 1 To UBound(choosen)
			If choosen(i) > choosen(j) Then
				Temp = choosen(j)
				choosen(j) = choosen(i)
				choosen(i) = Temp
			End If
		Next j
	Next i
	For visible = 1 To repetition
		If visible <> 1 Then seperator = ", "
		choosenumbers = choosenumbers & seperator & choosen(visible - 1)
	Next visible
End Function

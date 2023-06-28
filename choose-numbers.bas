Rem 'Ebced Hesabıyla ilgili paylaşımlarımı yaptığım ilk zamanlardan beri
Rem 'Şans oyunlarıyla ilgili ebced değerleri isteniyor. Öyle bir şey yok
Rem 'Bu makro kodu ile istediğiniz aralıkta istediğiniz kadar sayı seçip
Rem 'Şansınızı deneyebilirsiniz. Ebced'in böyle bir yönü yok.
Rem '=CHOOSENUMBERS(seçilebilir en büyük sayı; seçilecek sayı adedi)
Rem 'Örnek:
Rem '=CHOOSENUMBERS(90;7)
Function choosenumbers(ByVal limitmax As Integer, repetition As Integer) As String
	Dim choosen(repetition -1) As Integer, selector As Integer, dontrepeat As Integer, NewChoosenNumber As Integer
	Dim seperator As String, aliimranyirmialti As String, aliimranyirmiyedi As String : seperator = ""
	Dim i As Long, j As Long, Calculations As Long, CalculationsLimit As Long
	Dim Temp As Variant : choosenumbers = ""
	aliimranyirmialti = "قُلِ اللَّهُمَّ مَالِكَ الْمُلْكِ تُؤْتِي الْمُلْكَ مَن تَشَاء وَتَنزِعُ الْمُلْكَ مِمَّن تَشَاء وَتُعِزُّ مَن تَشَاء وَتُذِلُّ مَن تَشَاء بِيَدِكَ الْخَيْرُ إِنَّكَ عَلَىَ كُلِّ شَيْءٍ قَدِيرٌ"
	aliimranyirmiyedi = "تُولِجُ اللَّيْلَ فِي الْنَّهَارِ وَتُولِجُ النَّهَارَ فِي اللَّيْلِ وَتُخْرِجُ الْحَيَّ مِنَ الْمَيِّتِ وَتُخْرِجُ الَمَيَّتَ مِنَ الْحَيِّ وَتَرْزُقُ مَن تَشَاء بِغَيْرِ حِسَابٍ "
	CalculationsLimit = ABJAD(aliimranyirmialti & aliimranyirmiyedi, 1, 1) / repetition
	CalculationsLasts = ABJAD(aliimranyirmialti & aliimranyirmiyedi, 1, 1) - CalculationsLimit * (repetition -1)
	For selector = 0 To repetition -1
		If selector < repetition -1 Then
			For Calculations = 1 To CalculationsLimit
				AbjadCalculation = ABJAD(aliimranyirmialti & aliimranyirmiyedi, 1, 1)
			Next Calculations
		Else
			For Calculations = 1 To CalculationsLasts
				AbjadCalculation = ABJAD(aliimranyirmialti & aliimranyirmiyedi, 1, 1)
			Next Calculations
		End If
		Do
			Randomize AbjadCalculation * Rnd
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

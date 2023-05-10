Function ABJAD(ByVal metin As String, tablo As Integer, Optional shadda As Integer = 1, Optional detail As Integer = 0) As Variant
    Dim SM, S, N    As Double: SM = 0: N = 0: S = 0
    Dim SH, counter, err, space, hrk As Long: SH = 0: err = 0: space = 0: hrk = 0
    Dim SN, nitem, choosen As String: nitem = "": SN = ""
    For counter = 1 To Len(metin)
        choosen = Mid(CStr(metin), counter, 1)
        Select Case choosen
        Case ChrW(1575), ChrW(1571), ChrW(1573), ChrW(1570), ChrW(1569), ChrW(1609)
            Select Case tablo
            Case 1, 4, 5, 7, 10, 12, 15: S = 1
            Case 0, 6, 11: S = ASGAR(CStr(choosen), tablo + 1)
            Case 2, 8, 13: S = ABJAD(ChrW(1575) & ChrW(1604) & ChrW(1601), tablo - 1, 1)
            Case 3, 9, 14: S = BASTET(CStr(choosen), 1, -1 - (tablo - 2), 1, "ARABIC")
            Case Else: err = 1
            End Select
        Case ChrW(1572)
            Select Case tablo
            Case 1, 4, 7, 10: S = 7
            Case 12, 15: S = 6
            Case 0, 6, 11: S = ASGAR(ChrW(1608), tablo + 1) + ASGAR(ChrW(1575), tablo + 1)
            Case 2, 8, 13: S = ABJAD(ChrW(1575) & ChrW(1604) & ChrW(1601), tablo - 1, 1) + ABJAD(ChrW(1608) & ChrW(1575) & ChrW(1608), tablo - 1, 1)
            Case 3, 9, 14: S = BASTET(ChrW(1608), 1, -1 - (tablo - 2), 1, "ARABIC") + BASTET(ChrW(1575), 1, -1 - (tablo - 2), 1, "ARABIC")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1574)
            Select Case tablo
            Case 1, 4, 7, 10: S = 11
            Case 12, 15: S = 7
            Case 0, 6, 11: S = ASGAR(ChrW(1610), tablo + 1) + ASGAR(ChrW(1575), tablo + 1)
            Case 2, 8, 13: S = ABJAD(ChrW(1575) & ChrW(1604) & ChrW(1601), tablo - 1, 1) + ABJAD(ChrW(1610) & ChrW(1575), tablo - 1, 1)
            Case 3, 9, 14: S = BASTET(ChrW(1610), 1, -1 - (tablo - 2), 1, "ARABIC") + BASTET(ChrW(1575), 1, -1 - (tablo - 2), 1, "ARABIC")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1728)
            Select Case tablo
            Case 1, 4, 7, 10: S = 15
            Case 12, 15: S = 13
            Case 0, 6, 11: S = ASGAR(ChrW(1610), tablo + 1) + ASGAR(ChrW(1607), tablo + 1)
            Case 2, 8, 13: S = ABJAD(ChrW(1610) & ChrW(1575), tablo - 1, 1) + ABJAD(ChrW(1607) & ChrW(1575), tablo - 1, 1)
            Case 3, 9, 14: S = BASTET(ChrW(1610), 1, -1 - (tablo - 2), 1, "ARABIC") + BASTET(ChrW(1607), 1, -1 - (tablo - 2), 1, "ARABIC")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1576), ChrW(64342)
            Select Case tablo
            Case 1, 4, 7, 10: S = 2
            Case 12, 15: S = 9
            Case 0, 6, 11: S = ASGAR(CStr(choosen), tablo + 1)
            Case 2, 8, 13: S = ABJAD(ChrW(1576) & ChrW(1575), tablo - 1, 1)
            Case 3, 9, 14: S = BASTET(CStr(choosen), 1, -1 - (tablo - 2), 1, "ARABIC")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1580), ChrW(64378)
            Select Case tablo
            Case 1, 4, 7, 10: S = 3
            Case 12, 15: S = 100
            Case 0, 6, 11: S = ASGAR(CStr(choosen), tablo + 1)
            Case 2, 8, 13: S = ABJAD(ChrW(1580) & ChrW(1610) & ChrW(1605), tablo - 1, 1)
            Case 3, 9, 14: S = BASTET(CStr(choosen), 1, -1 - (tablo - 2), 1, "ARABIC")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1583)
            Select Case tablo
            Case 1, 4, 7, 10: S = 4
            Case 12, 15: S = 70
            Case 0, 6, 11: S = ASGAR(CStr(choosen), tablo + 1)
            Case 2, 8, 13: S = ABJAD(ChrW(1583) & ChrW(1575) & ChrW(1604), tablo - 1, 1)
            Case 3, 9, 14: S = BASTET(CStr(choosen), 1, -1 - (tablo - 2), 1, "ARABIC")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1607), ChrW(1577)
            Select Case tablo
            Case 1, 4, 7, 10: S = 5
            Case 12, 15: S = 7
            Case 0, 6, 11: S = ASGAR(CStr(choosen), tablo + 1)
            Case 2, 8, 13: S = ABJAD(ChrW(1607) & ChrW(1575), tablo - 1, 1)
            Case 3, 9, 14: S = BASTET(CStr(choosen), 1, -1 - (tablo - 2), 1, "ARABIC")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1608)
            Select Case tablo
            Case 1, 4, 7, 10: S = 6
            Case 12, 15: S = 5
            Case 0, 6, 11: S = ASGAR(CStr(choosen), tablo + 1)
            Case 2, 8, 13: S = ABJAD(ChrW(1608) & ChrW(1575) & ChrW(1608), tablo - 1, 1)
            Case 3, 9, 14: S = BASTET(CStr(choosen), 1, -1 - (tablo - 2), 1, "ARABIC")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1586), ChrW(64394)
            Select Case tablo
            Case 1, 4, 7, 10: S = 7
            Case 12, 15: S = 600
            Case 0, 6, 11: S = ASGAR(CStr(choosen), tablo + 1)
            Case 2, 8, 13: S = ABJAD(ChrW(1586) & ChrW(1575), tablo - 1, 1)
            Case 3, 9, 14: S = BASTET(CStr(choosen), 1, -1 - (tablo - 2), 1, "ARABIC")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1581)
            Select Case tablo
            Case 1, 4, 7, 10: S = 8
            Case 12, 15: S = 90
            Case 0, 6, 11: S = ASGAR(CStr(choosen), tablo + 1)
            Case 2, 8, 13: S = ABJAD(ChrW(1581) & ChrW(1575), tablo - 1, 1)
            Case 3, 9, 14: S = BASTET(CStr(choosen), 1, -1 - (tablo - 2), 1, "ARABIC")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1591)
            Select Case tablo
            Case 1, 4, 7, 10: S = 9
            Case 12, 15: S = 800
            Case 0, 6, 11: S = ASGAR(CStr(choosen), tablo + 1)
            Case 2, 8, 13: S = ABJAD(ChrW(1591) & ChrW(1575), tablo - 1, 1)
            Case 3, 9, 14: S = BASTET(CStr(choosen), 1, -1 - (tablo - 2), 1, "ARABIC")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1740), ChrW(1610)
            Select Case tablo
            Case 1, 4, 7, 10: S = 10
            Case 12, 15: S = 6
            Case 0, 6, 11: S = ASGAR(CStr(choosen), tablo + 1)
            Case 2, 8, 13: S = ABJAD(ChrW(1610) & ChrW(1575), tablo - 1, 1)
            Case 3, 9, 14: S = BASTET(CStr(choosen), 1, -1 - (tablo - 2), 1, "ARABIC")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1603), ChrW(64402), ChrW(1705)
            Select Case tablo
            Case 1, 4, 7, 10, 12, 15: S = 20
            Case 0, 6, 11: S = ASGAR(CStr(choosen), tablo + 1)
            Case 2, 8, 13: S = ABJAD(ChrW(1603) & ChrW(1575) & ChrW(1601), tablo - 1, 1)
            Case 3, 9, 14: S = BASTET(CStr(choosen), 1, -1 - (tablo - 2), 1, "ARABIC")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1604)
            Select Case tablo
            Case 1, 4, 7, 10: S = 30
            Case 12, 15: S = 2
            Case 0, 6, 11: S = ASGAR(CStr(choosen), tablo + 1)
            Case 2, 8, 13: S = ABJAD(ChrW(1604) & ChrW(1575) & ChrW(1605), tablo - 1, 1)
            Case 3, 9, 14: S = BASTET(CStr(choosen), 1, -1 - (tablo - 2), 1, "ARABIC")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(65275)
            Select Case tablo
            Case 1, 4, 7, 10: S = 31
            Case 12, 15: S = 3
            Case 0, 6, 11: S = ASGAR(ChrW(1575), tablo + 1) + ASGAR(ChrW(1604), tablo + 1)
            Case 2, 8, 13: S = ABJAD(ChrW(1604) & ChrW(1575) & ChrW(1605) & ChrW(32) & ChrW(1575) & ChrW(1604) & ChrW(1601), tablo - 1, 1)
            Case 3, 9, 14: S = BASTET(ChrW(1604) & ChrW(1575), 1, -1 - (tablo - 2), 1, "ARABIC")
            Case 5: S = 2
            Case Else: err = 1
            End Select
        Case ChrW(1605)
            Select Case tablo
            Case 1, 4, 7, 10: S = 40
            Case 12, 15: S = 4
            Case 0, 6, 11: S = ASGAR(CStr(choosen), tablo + 1)
            Case 2, 8, 13: S = ABJAD(ChrW(1605) & ChrW(1610) & ChrW(1605), tablo - 1, 1)
            Case 3, 9, 14: S = BASTET(CStr(choosen), 1, -1 - (tablo - 2), 1, "ARABIC")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1606), ChrW(64467)
            Select Case tablo
            Case 1, 4, 7, 10: S = 50
            Case 12, 15: S = 3
            Case 0, 6, 11: S = ASGAR(CStr(choosen), tablo + 1)
            Case 2, 8, 13: S = ABJAD(ChrW(1606) & ChrW(1608) & ChrW(1606), tablo - 1, 1)
            Case 3, 9, 14: S = BASTET(CStr(choosen), 1, -1 - (tablo - 2), 1, "ARABIC")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1587)
            Select Case tablo
            Case 1, 4, 12, 15: S = 60
            Case 7, 10: S = 300
            Case 0, 6, 11: S = ASGAR(CStr(choosen), tablo + 1)
            Case 2, 8, 13: S = ABJAD(ChrW(1587) & ChrW(1610) & ChrW(1606), tablo - 1, 1)
            Case 3, 9, 14: S = BASTET(CStr(choosen), 1, -1 - (tablo - 2), 1, "ARABIC")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1593)
            Select Case tablo
            Case 1, 4, 7, 10: S = 70
            Case 12, 15: S = 30
            Case 0, 6, 11: S = ASGAR(CStr(choosen), tablo + 1)
            Case 2, 8, 13: S = ABJAD(ChrW(1593) & ChrW(1610) & ChrW(1606), tablo - 1, 1)
            Case 3, 9, 14: S = BASTET(CStr(choosen), 1, -1 - (tablo - 2), 1, "ARABIC")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1601)
            Select Case tablo
            Case 1, 4, 7, 10: S = 80
            Case 12, 15: S = 40
            Case 0, 6, 11: S = ASGAR(CStr(choosen), tablo + 1)
            Case 2, 8, 13: S = ABJAD(ChrW(1601) & ChrW(1575), tablo - 1, 1)
            Case 3, 9, 14: S = BASTET(CStr(choosen), 1, -1 - (tablo - 2), 1, "ARABIC")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1589)
            Select Case tablo
            Case 1, 4: S = 90
            Case 7, 10: S = 60
            Case 12, 15: S = 400
            Case 0, 6, 11: S = ASGAR(CStr(choosen), tablo + 1)
            Case 2, 8, 13: S = ABJAD(ChrW(1589) & ChrW(1575) & ChrW(1583), tablo - 1, 1)
            Case 3, 9, 14: S = BASTET(CStr(choosen), 1, -1 - (tablo - 2), 1, "ARABIC")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1602)
            Select Case tablo
            Case 1, 4, 7, 10: S = 100
            Case 12, 15: S = 50
            Case 0, 6, 11: S = ASGAR(CStr(choosen), tablo + 1)
            Case 2, 8, 13: S = ABJAD(ChrW(1602) & ChrW(1575) & ChrW(1601), tablo - 1, 1)
            Case 3, 9, 14: S = BASTET(CStr(choosen), 1, -1 - (tablo - 2), 1, "ARABIC")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1585)
            Select Case tablo
            Case 1, 4, 7, 10: S = 200
            Case 12, 15: S = 80
            Case 0, 6, 11: S = ASGAR(CStr(choosen), tablo + 1)
            Case 2, 8, 13: S = ABJAD(ChrW(1585) & ChrW(1575), tablo - 1, 1)
            Case 3, 9, 14: S = BASTET(CStr(choosen), 1, -1 - (tablo - 2), 1, "ARABIC")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1588)
            Select Case tablo
            Case 1, 4, 12, 15: S = 300
            Case 7, 10: S = 1000
            Case 0, 6, 11: S = ASGAR(CStr(choosen), tablo + 1)
            Case 2, 8, 13: S = ABJAD(ChrW(1588) & ChrW(1610) & ChrW(1606), tablo - 1, 1)
            Case 3, 9, 14: S = BASTET(CStr(choosen), 1, -1 - (tablo - 2), 1, "ARABIC")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1578)
            Select Case tablo
            Case 1, 4, 7, 10: S = 400
            Case 12, 15: S = 10
            Case 0, 6, 11: S = ASGAR(CStr(choosen), tablo + 1)
            Case 2, 8, 13: S = ABJAD(ChrW(1578) & ChrW(1575), tablo - 1, 1)
            Case 3, 9, 14: S = BASTET(CStr(choosen), 1, -1 - (tablo - 2), 1, "ARABIC")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1579)
            Select Case tablo
            Case 1, 4, 7, 10: S = 500
            Case 12, 15: S = 700
            Case 0, 6, 11: S = ASGAR(CStr(choosen), tablo + 1)
            Case 2, 8, 13: S = ABJAD(ChrW(1579) & ChrW(1575), tablo - 1, 1)
            Case 3, 9, 14: S = BASTET(CStr(choosen), 1, -1 - (tablo - 2), 1, "ARABIC")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1582)
            Select Case tablo
            Case 1, 4, 7, 10: S = 600
            Case 12, 15: S = 200
            Case 0, 6, 11: S = ASGAR(CStr(choosen), tablo + 1)
            Case 2, 8, 13: S = ABJAD(ChrW(1582) & ChrW(1575), tablo - 1, 1)
            Case 3, 9, 14: S = BASTET(CStr(choosen), 1, -1 - (tablo - 2), 1, "ARABIC")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1584)
            Select Case tablo
            Case 1, 4, 7, 10: S = 700
            Case 12, 15: S = 80
            Case 0, 6, 11: S = ASGAR(CStr(choosen), tablo + 1)
            Case 2, 8, 13: S = ABJAD(ChrW(1584) & ChrW(1575) & ChrW(1604), tablo - 1, 1)
            Case 3, 9, 14: S = BASTET(CStr(choosen), 1, -1 - (tablo - 2), 1, "ARABIC")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1590)
            Select Case tablo
            Case 1, 4: S = 800
            Case 7, 10: S = 90
            Case 12, 15: S = 500
            Case 0, 6, 11: S = ASGAR(CStr(choosen), tablo + 1)
            Case 2, 8, 13: S = ABJAD(ChrW(1590) & ChrW(1575) & ChrW(1583), tablo - 1, 1)
            Case 3, 9, 14: S = BASTET(CStr(choosen), 1, -1 - (tablo - 2), 1, "ARABIC")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1592)
            Select Case tablo
            Case 1, 4: S = 900
            Case 7, 10: S = 800
            Case 12, 15: S = 1000
            Case 0, 6, 11: S = ASGAR(CStr(choosen), tablo + 1)
            Case 2, 8, 13: S = ABJAD(ChrW(1592) & ChrW(1575), tablo - 1, 1)
            Case 3, 9, 14: S = BASTET(CStr(choosen), 1, -1 - (tablo - 2), 1, "ARABIC")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1594)
            Select Case tablo
            Case 1, 4: S = 1000
            Case 7, 10, 12, 15: S = 900
            Case 0, 6, 11: S = ASGAR(CStr(choosen), tablo + 1)
            Case 2, 8, 13: S = ABJAD(ChrW(1594) & ChrW(1610) & ChrW(1606), tablo - 1, 1)
            Case 3, 9, 14: S = BASTET(CStr(choosen), 1, -1 - (tablo - 2), 1, "ARABIC")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1488)
            Select Case tablo
            Case 1, 4: S = 1
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD(ChrW(1488) & ChrW(1500) & ChrW(1507), 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "HEBREW")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1489)
            Select Case tablo
            Case 1, 4: S = 2
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD(ChrW(1489) & ChrW(1497) & ChrW(1514), 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "HEBREW")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1490)
            Select Case tablo
            Case 1, 4: S = 3
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD(ChrW(1490) & ChrW(1497) & ChrW(1502) & ChrW(1500), 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "HEBREW")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1491)
            Select Case tablo
            Case 1, 4: S = 4
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD(ChrW(1491) & ChrW(1500) & ChrW(1514), 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "HEBREW")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1492)
            Select Case tablo
            Case 1, 4: S = 5
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD(ChrW(1492) & ChrW(1488), 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "HEBREW")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1493)
            Select Case tablo
            Case 1, 4: S = 6
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD(ChrW(1493) & ChrW(1493), 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "HEBREW")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1494)
            Select Case tablo
            Case 1, 4: S = 7
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD(ChrW(1494) & ChrW(1497) & ChrW(1503), 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "HEBREW")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1495)
            Select Case tablo
            Case 1, 4: S = 8
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD(ChrW(1495) & ChrW(1497) & ChrW(1514), 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "HEBREW")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1496)
            Select Case tablo
            Case 1, 4: S = 9
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD(ChrW(1496) & ChrW(1497) & ChrW(1495), 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "HEBREW")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1497)
            Select Case tablo
            Case 1, 4: S = 10
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD(ChrW(1497) & ChrW(1493) & ChrW(1491), 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "HEBREW")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1499)
            Select Case tablo
            Case 1, 4: S = 20
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD(ChrW(1499) & ChrW(1507), 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "HEBREW")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1500)
            Select Case tablo
            Case 1, 4: S = 30
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD(ChrW(1500) & ChrW(1502) & ChrW(1491), 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "HEBREW")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1502)
            Select Case tablo
            Case 1, 4: S = 40
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD(ChrW(1502) & ChrW(1501), 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "HEBREW")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1504)
            Select Case tablo
            Case 1, 4: S = 50
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD(ChrW(1504) & ChrW(1493) & ChrW(1503), 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "HEBREW")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1505)
            Select Case tablo
            Case 1, 4: S = 60
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD(ChrW(1505) & ChrW(1502) & ChrW(1498), 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "HEBREW")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1506)
            Select Case tablo
            Case 1, 4: S = 70
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD(ChrW(1506) & ChrW(1497) & ChrW(1503), 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "HEBREW")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1508)
            Select Case tablo
            Case 1, 4: S = 80
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD(ChrW(1508) & ChrW(1488), 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "HEBREW")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1510)
            Select Case tablo
            Case 1, 4: S = 90
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD(ChrW(1510) & ChrW(1491) & ChrW(1497), 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "HEBREW")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1511)
            Select Case tablo
            Case 1, 4: S = 100
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD(ChrW(1511) & ChrW(1493) & ChrW(1507), 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "HEBREW")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1512)
            Select Case tablo
            Case 1, 4: S = 200
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD(ChrW(1512) & ChrW(1497) & ChrW(1513), 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "HEBREW")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1513)
            Select Case tablo
            Case 1, 4: S = 300
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD(ChrW(1513) & ChrW(1497) & ChrW(1503), 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "HEBREW")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1514)
            Select Case tablo
            Case 1, 4: S = 400
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD(ChrW(1514) & ChrW(1493), 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "HEBREW")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1498)
            Select Case tablo
            Case 1, 4: S = 500
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD(ChrW(1498) & ChrW(1507), 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "HEBREW")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1501)
            Select Case tablo
            Case 1, 4: S = 600
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD(ChrW(1501) & ChrW(1501), 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "HEBREW")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1503)
            Select Case tablo
            Case 1, 4: S = 700
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD(ChrW(1493) & ChrW(1503) & ChrW(1503), 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "HEBREW")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1507)
            Select Case tablo
            Case 1, 4: S = 800
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD(ChrW(1507) & ChrW(1488), 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "HEBREW")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case ChrW(1509)
            Select Case tablo
            Case 1, 4: S = 900
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD(ChrW(1509) & ChrW(1491) & ChrW(1497), 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "HEBREW")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case "A", "a"
            Select Case tablo
            Case 1, 4: S = 1
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD("aa", 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "TURKCE")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case "B", "b"
            Select Case tablo
            Case 1, 4: S = 2
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD("be", 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "TURKCE")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case "C", "c", "Ç", "ç"
            Select Case tablo
            Case 1, 4: S = 3
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD("ce", 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "TURKCE")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case "D", "d"
            Select Case tablo
            Case 1, 4: S = 4
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD("de", 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "TURKCE")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case "E", "e"
            Select Case tablo
            Case 1, 4: S = 5
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD("ee", 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "TURKCE")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case "F", "f"
            Select Case tablo
            Case 1, 4: S = 6
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD("fe", 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "TURKCE")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case "G", "g"
            Select Case tablo
            Case 1, 4: S = 7
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD("ge", 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "TURKCE")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case "Ğ", "ğ"
            Select Case tablo
            Case 1, 4: S = 8
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD("yumuşakge", 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "TURKCE")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case "H", "h"
            Select Case tablo
            Case 1, 4: S = 9
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD("He", 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "TURKCE")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case "I", "ı"
            Select Case tablo
            Case 1, 4: S = 10
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD("ıı", 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "TURKCE")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case "İ", "i"
            Select Case tablo
            Case 1, 4: S = 20
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD("ii", 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "TURKCE")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case "J", "j"
            Select Case tablo
            Case 1, 4: S = 30
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD("je", 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "TURKCE")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case "K", "k"
            Select Case tablo
            Case 1, 4: S = 40
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD("ke", 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "TURKCE")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case "L", "l"
            Select Case tablo
            Case 1, 4: S = 50
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD("le", 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "TURKCE")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case "M", "m"
            Select Case tablo
            Case 1, 4: S = 60
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD("me", 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "TURKCE")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case "N", "n"
            Select Case tablo
            Case 1, 4: S = 70
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD("ne", 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "TURKCE")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case "O", "o"
            Select Case tablo
            Case 1, 4: S = 80
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD("oo", 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "TURKCE")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case "Ö", "ö"
            Select Case tablo
            Case 1, 4: S = 90
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD("öö", 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "TURKCE")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case "P", "p"
            Select Case tablo
            Case 1, 4: S = 100
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD("pe", 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "TURKCE")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case "R", "r"
            Select Case tablo
            Case 1, 4: S = 200
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD("re", 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "TURKCE")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case "S", "s"
            Select Case tablo
            Case 1, 4: S = 300
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD("se", 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "TURKCE")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case "Ş", "ş"
            Select Case tablo
            Case 1, 4: S = 400
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD("şe", 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "TURKCE")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case "T", "t"
            Select Case tablo
            Case 1, 4: S = 500
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD("te", 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "TURKCE")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case "U", "u"
            Select Case tablo
            Case 1, 4: S = 600
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD("uu", 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "TURKCE")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case "Ü", "ü"
            Select Case tablo
            Case 1, 4: S = 700
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD("üü", 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "TURKCE")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case "V", "v"
            Select Case tablo
            Case 1, 4: S = 800
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD("ve", 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "TURKCE")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case "Y", "y"
            Select Case tablo
            Case 1, 4: S = 900
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD("ye", 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "TURKCE")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case "Z", "z"
            Select Case tablo
            Case 1, 4: S = 1000
            Case 0: S = ASGAR(CStr(choosen), 1)
            Case 2: S = ABJAD("ze", 1, 1)
            Case 3: S = BASTET(CStr(choosen), 1, -2, 1, "TURKCE")
            Case 5: S = 1
            Case Else: err = 1
            End Select
        Case Else
            S = 0: N = N + 1
            Select Case choosen
            Case ChrW(1617)
                Select Case shadda
                Case 1: S = 0
                Case 2
                    C = 1
                    Do
                        choosen = Mid(metin, counter - C, 1)
                        S = ABJAD(CStr(choosen), tablo, 1)
                        C = C + 1
                    Loop Until SAF(CStr(choosen), "") <> ""
                    SH = SH + 1
                Case Else: err = 3
                End Select
                hrk = hrk + 1
            Case ChrW(1648)
                C = 1
                Do
                    choosen = Mid(metin, counter - C, 1)
                    If choosen = ChrW(1600) Then S = ABJAD(ChrW(1575), tablo, 1)
                    C = C + 1
                Loop Until SAF(CStr(choosen), "") <> "" Or choosen = ChrW(1600)
            Case ChrW(32): space = space + 1
            Case ChrW(10)
            Case ChrW(13)
            Case ChrW(1614), ChrW(1616), ChrW(1611), ChrW(1613), ChrW(1615), ChrW(1618), ChrW(1612), ChrW(1600): hrk = hrk + 1
            Case Else: nitem = nitem + choosen: err = 2
            End Select
        End Select
        Select Case detail
        Case 1
            Select Case SAF(CStr(choosen), "")
            Case ChrW(32)
            Case ChrW(1575): SN = SN & ChrW(91) & ChrW(1575) & ChrW(61) & S & ChrW(93)
            Case choosen: SN = SN & ChrW(91) & choosen & ChrW(61) & S & ChrW(93)
            End Select
        Case Else: SM = SM + S
        End Select
    Next
    Select Case tablo
    Case 4, 10, 15
        Select Case detail
        Case 1: SN = SN & ChrW(91) & ChrW(43) & ((Len(metin) - N) + SH) & " harf" & ChrW(93)
        Case Else: SM = SM + ((Len(metin) - N) + SH)
        End Select
    Case Else
    End Select
    Select Case err
    Case 0
        Select Case detail
        Case 1: ABJAD = CStr(SN)
        Case Else: ABJAD = CDbl(SM)
        End Select
    Case 1: ABJAD = CStr("Tablo Kodu" & ChrW(63))
    Case 2
	For unicodes = 1 to Len(nitem)
            choosen = Mid(nitem, unicodes, 1)
            chrlist = chrlist & choosen & ": ChrW(" & AscW(choosen) & ")" & ChrW(10)
        Next unicodes
        ABJAD = CStr(N - (space + hrk) & " Tanımsız" & ChrW(58) & ChrW(10) & chrlist & space & " boşluk" & ChrW(10) & hrk & " hareke")
    Case 3: ABJAD = CStr("Şedde Ayarı" & ChrW(63))
    End Select
End Function
Function ALTAYAZ(ByVal girdi As String) As String
    Dim counter     As Integer
    Dim choosen, ss As String: ss = "": ALTAYAZ = ""
    For counter = 1 To Len(girdi)
        choosen = Mid(girdi, counter, 1)
        Select Case choosen
        Case " ": ss = ss & " "
        Case Else: ss = ss & choosen
        End Select
    Next
    ALTAYAZ = ss
End Function
Function ASGAR(ByVal harf As String, Optional level As Integer) As Variant
    Dim C           As Double
    C = ABJAD(harf, level, 1)
    If C > 12 Then
        ASGAR = C - (12 * DUZLE(C / 12))
    Else
        ASGAR = C
    End If
End Function
Function BASTET(ByVal metin As Variant, Optional MT As Variant, Optional tablo As Variant, Optional shadda As Integer, Optional language As Variant, Optional detail As Integer) As Variant
    Dim HM, invertablo, err As Integer: err = 0
    Dim Baster, NS  As Variant
    Select Case IsNumeric(metin)
    Case FALSE
        Select Case tablo
        Case 0 To 15: Baster = ABJAD(metin, CLng(tablo), shadda)
        Case -16 To -1: invertablo = (-1 * tablo) - 1: Baster = ABJAD(metin, CLng(invertablo), shadda)
        End Select
    Case Else
        Baster = metin
    End Select
    For HM = 1 To MT
        NS = ""
        NS = NUTKET(Baster, UCase(language))
        Baster = 0
        Select Case tablo
        Case 0 To 15: Baster = ABJAD(NS, CLng(tablo), 1) + ABJAD(NS, 5, 1)
        Case -16 To -1: invertablo = (-1 * tablo) - 1: Baster = ABJAD(NS, CLng(invertablo), 1)
        Case Else: Baster = "Tablo Kodu" & ChrW(63)
        End Select
    Next HM
    Select Case err
    Case 0
        Select Case detail
        Case 1: BASTET = NS
        Case Else: BASTET = Baster
        End Select
    Case 1: BASTET = "Dil Tanımı" & ChrW(63)
    Case Else
    End Select
End Function
Function DUZLE(ByVal numbertofloor As Double) As Double
    Dim P(1)        As Double
    P(0) = numbertofloor
    P(1) = 0
    DUZLE = WorksheetFunction.RoundDown(P(0), P(1))
End Function
Function GetDigit(Digit, Lang)
    Select Case UCase(Lang)
    Case "ARABIC"
        Select Case Val(Digit)
        Case 1: GetDigit = ChrW(1575) & ChrW(1581) & ChrW(1583)
        Case 2: GetDigit = ChrW(1575) & ChrW(1579) & ChrW(1606) & ChrW(1575) & ChrW(1606)
        Case 3: GetDigit = ChrW(1579) & ChrW(1604) & ChrW(1575) & ChrW(1579) & ChrW(1577)
        Case 4: GetDigit = ChrW(1571) & ChrW(1585) & ChrW(1576) & ChrW(1593) & ChrW(1577)
        Case 5: GetDigit = ChrW(1582) & ChrW(1605) & ChrW(1587) & ChrW(1577)
        Case 6: GetDigit = ChrW(1587) & ChrW(1578) & ChrW(1577)
        Case 7: GetDigit = ChrW(1587) & ChrW(1576) & ChrW(1593) & ChrW(1577)
        Case 8: GetDigit = ChrW(1579) & ChrW(1605) & ChrW(1575) & ChrW(1606) & ChrW(1610) & ChrW(1577)
        Case 9: GetDigit = ChrW(1578) & ChrW(1587) & ChrW(1593) & ChrW(1577)
        Case Else: GetDigit = ""
        End Select
    Case "HEBREW"
        Select Case Val(Digit)
        Case 1: GetDigit = ChrW(1488) & ChrW(1495) & ChrW(1514)
        Case 2: GetDigit = ChrW(1513) & ChrW(1504) & ChrW(1497) & ChrW(1497) & ChrW(1501)
        Case 3: GetDigit = ChrW(1513) & ChrW(1500) & ChrW(1493) & ChrW(1513) & ChrW(1492)
        Case 4: GetDigit = ChrW(1488) & ChrW(1512) & ChrW(1489) & ChrW(1506) & ChrW(1492)
        Case 5: GetDigit = ChrW(1495) & ChrW(1502) & ChrW(1513)
        Case 6: GetDigit = ChrW(1513) & ChrW(1497) & ChrW(1513) & ChrW(1492)
        Case 7: GetDigit = ChrW(1513) & ChrW(1489) & ChrW(1506)
        Case 8: GetDigit = ChrW(1513) & ChrW(1502) & ChrW(1493) & ChrW(1504) & ChrW(1492)
        Case 9: GetDigit = ChrW(1514) & ChrW(1513) & ChrW(1506)
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
Function GetHundreds(ByVal MyNumber, Lang, Optional Count, Optional Spell)
    Dim result      As String
    MyNumber = Right(ChrW(48) & ChrW(48) & ChrW(48) & MyNumber, 3)
    Select Case UCase(Lang)
    Case "ARABIC"
        If CDbl(Mid(MyNumber, 1, 1)) > 0 Then
            If CDbl(Right(MyNumber, 2)) = 0 And CDbl(Mid(MyNumber, 1, 1)) = 2 Then
                If Count = 1 Then
                    result = ChrW(1605) & ChrW(1574) & ChrW(1578) & ChrW(1575) & ChrW(1606) & ChrW(32)
                Else
                    result = ChrW(1605) & ChrW(1574) & ChrW(1578) & ChrW(1575) & ChrW(32)
                End If
            Else
                Select Case CDbl(Mid(MyNumber, 1, 1))
                Case 1: result = ChrW(1605) & ChrW(1575) & ChrW(1574) & ChrW(1577) & ChrW(32)
                Case 2: result = ChrW(1605) & ChrW(1574) & ChrW(1578) & ChrW(1575) & ChrW(1606) & ChrW(32)
                Case 3: result = ChrW(1579) & ChrW(1604) & ChrW(1575) & ChrW(1579) & ChrW(1605) & ChrW(1575) & ChrW(1574) & ChrW(1577) & ChrW(32)
                Case 4: result = ChrW(1571) & ChrW(1585) & ChrW(1576) & ChrW(1593) & ChrW(1605) & ChrW(1575) & ChrW(1574) & ChrW(1577) & ChrW(32)
                Case 5: result = ChrW(1582) & ChrW(1605) & ChrW(1587) & ChrW(1605) & ChrW(1575) & ChrW(1574) & ChrW(1577) & ChrW(32)
                Case 6: result = ChrW(1587) & ChrW(1578) & ChrW(1605) & ChrW(1575) & ChrW(1574) & ChrW(1577) & ChrW(32)
                Case 7: result = ChrW(1587) & ChrW(1576) & ChrW(1593) & ChrW(1605) & ChrW(1575) & ChrW(1574) & ChrW(1577) & ChrW(32)
                Case 8: result = ChrW(1579) & ChrW(1605) & ChrW(1575) & ChrW(1606) & ChrW(1605) & ChrW(1575) & ChrW(1574) & ChrW(1577) & ChrW(32)
                Case 9: result = ChrW(1578) & ChrW(1587) & ChrW(1593) & ChrW(1605) & ChrW(1575) & ChrW(1574) & ChrW(1577) & ChrW(32)
                Case Else
                End Select
            End If
        Else
        End If
        If Len(result) > 0 And CDbl(Right(MyNumber, 2)) <> 0 Then result = result & ChrW(32) & ChrW(1608) & ChrW(32)
        If Mid(MyNumber, 2, 1) <> ChrW(48) Then
            result = result & GetTens(Right(MyNumber, 2), Lang, Count, CDbl(Mid(MyNumber, 1, 1)), result & Spell)
        Else
            result = result & GetDigit(Mid(MyNumber, 3), Lang)
        End If
    Case "HEBREW"
        If CDbl(Mid(MyNumber, 1, 1)) > 0 Then
            Select Case CDbl(Mid(MyNumber, 1, 1))
            Case 1: result = ChrW(1502) & ChrW(1488) & ChrW(1492) & ChrW(32)
            Case 2: result = ChrW(1502) & ChrW(1488) & ChrW(1514) & ChrW(1497) & ChrW(1497) & ChrW(1501) & ChrW(32)
            Case 3: result = ChrW(1513) & ChrW(1500) & ChrW(1493) & ChrW(1513) & ChrW(32) & ChrW(1502) & ChrW(1488) & ChrW(1493) & ChrW(1514) & ChrW(32)
            Case 4: result = ChrW(1488) & ChrW(1512) & ChrW(1489) & ChrW(1506) & ChrW(32) & ChrW(1502) & ChrW(1488) & ChrW(1493) & ChrW(1514) & ChrW(32)
            Case 5: result = ChrW(1495) & ChrW(1502) & ChrW(1513) & ChrW(32) & ChrW(1502) & ChrW(1488) & ChrW(1493) & ChrW(1514) & ChrW(32)
            Case 6: result = ChrW(1513) & ChrW(1513) & ChrW(32) & ChrW(1502) & ChrW(1488) & ChrW(1493) & ChrW(1514) & ChrW(32)
            Case 7: result = ChrW(1513) & ChrW(1489) & ChrW(1506) & ChrW(32) & ChrW(1502) & ChrW(1488) & ChrW(1493) & ChrW(1514) & ChrW(32)
            Case 8: result = ChrW(1513) & ChrW(1502) & ChrW(1493) & ChrW(1504) & ChrW(1492) & ChrW(32) & ChrW(1502) & ChrW(1488) & ChrW(1493) & ChrW(1514) & ChrW(32)
            Case 9: result = ChrW(1514) & ChrW(1513) & ChrW(1506) & ChrW(32) & ChrW(1502) & ChrW(1488) & ChrW(1493) & ChrW(1514) & ChrW(32)
            Case Else
            End Select
        Else
        End If
        If Len(result) > 0 And CDbl(Right(MyNumber, 2)) <> 0 Then result = result & ChrW(32) & ChrW(1493) & ChrW(32)
        If Mid(MyNumber, 2, 1) <> ChrW(48) Then
            result = result & GetTens(Right(MyNumber, 2), Lang, Count, CDbl(Mid(MyNumber, 1, 1)), result & Spell)
        Else
            result = result & GetDigit(Mid(MyNumber, 3), Lang)
        End If
    Case "TURKCE"
        If Mid(MyNumber, 1, 1) <> ChrW(48) Then
            If CDbl(Mid(MyNumber, 1, 1)) > 1 Then
                result = GetDigit(Mid(MyNumber, 1, 1), Lang) & " yüz "
            Else
                result = "yüz" & ChrW(32)
            End If
        End If
        If Mid(MyNumber, 2, 1) <> ChrW(48) Then
            result = result & GetTens(Mid(MyNumber, 2), Lang)
        Else
            result = result & GetDigit(Mid(MyNumber, 3), Lang)
        End If
    Case Else
    End Select
    GetHundreds = result
End Function
Function GetTens(TensText, Lang, Optional Count, Optional Hundreds, Optional Spell)
    Dim result      As String
    ReDim PlaceOnes(9), PlaceTwos(9) As String
    result = ""
    Select Case UCase(Lang)
    Case "ARABIC"
        PlaceOnes(2) = ChrW(1571) & ChrW(1604) & ChrW(1601) & ChrW(32)
        PlaceOnes(3) = ChrW(1605) & ChrW(1604) & ChrW(1610) & ChrW(1608) & ChrW(1606) & ChrW(32)
        PlaceOnes(4) = ChrW(1605) & ChrW(1604) & ChrW(1610) & ChrW(1575) & ChrW(1585) & ChrW(32)
        PlaceOnes(5) = ChrW(1578) & ChrW(1585) & ChrW(1610) & ChrW(1604) & ChrW(1610) & ChrW(1608) & ChrW(1606) & ChrW(32)
        PlaceTwos(2) = ChrW(1571) & ChrW(1604) & ChrW(1601) & ChrW(1575) & ChrW(1606) & ChrW(32)
        PlaceTwos(3) = ChrW(1605) & ChrW(1604) & ChrW(1610) & ChrW(1608) & ChrW(1606) & ChrW(1575) & ChrW(1606) & ChrW(32)
        PlaceTwos(4) = ChrW(1605) & ChrW(1604) & ChrW(1610) & ChrW(1575) & ChrW(1585) & ChrW(1575) & ChrW(1606) & ChrW(32)
        PlaceTwos(5) = ChrW(1578) & ChrW(1585) & ChrW(1610) & ChrW(1604) & ChrW(1610) & ChrW(1608) & ChrW(1606) & ChrW(1575) & ChrW(1606) & ChrW(32)
        If CDbl(Left(TensText, 1)) = 1 Then
            Select Case Val(TensText)
            Case 10: result = ChrW(1593) & ChrW(1588) & ChrW(1585) & ChrW(1577)
            Case 11: result = ChrW(1573) & ChrW(1581) & ChrW(1583) & ChrW(1609) & ChrW(32) & ChrW(1593) & ChrW(1588) & ChrW(1585) & ChrW(1577)
            Case 12: result = ChrW(1575) & ChrW(1579) & ChrW(1606) & ChrW(1578) & ChrW(1575) & ChrW(32) & ChrW(1593) & ChrW(1588) & ChrW(1585) & ChrW(1577)
            Case 13: result = ChrW(1579) & ChrW(1604) & ChrW(1575) & ChrW(1579) & ChrW(32) & ChrW(1593) & ChrW(1588) & ChrW(1585) & ChrW(1577)
            Case 14: result = ChrW(1571) & ChrW(1585) & ChrW(1576) & ChrW(1593) & ChrW(32) & ChrW(1593) & ChrW(1588) & ChrW(1585) & ChrW(1577)
            Case 15: result = ChrW(1582) & ChrW(1605) & ChrW(1587) & ChrW(32) & ChrW(1593) & ChrW(1588) & ChrW(1585) & ChrW(1577)
            Case 16: result = ChrW(1587) & ChrW(1578) & ChrW(32) & ChrW(1593) & ChrW(1588) & ChrW(1585) & ChrW(1577)
            Case 17: result = ChrW(1587) & ChrW(1576) & ChrW(1593) & ChrW(32) & ChrW(1593) & ChrW(1588) & ChrW(1585) & ChrW(1577)
            Case 18: result = ChrW(1579) & ChrW(1605) & ChrW(1575) & ChrW(1606) & ChrW(1610) & ChrW(32) & ChrW(1593) & ChrW(1588) & ChrW(1585) & ChrW(1577)
            Case 19: result = ChrW(1578) & ChrW(1587) & ChrW(1593) & ChrW(32) & ChrW(1593) & ChrW(1588) & ChrW(1585) & ChrW(1577)
            Case Else
            End Select
        Else
            If CDbl(TensText) = 2 And Hundreds = 0 And Count > 1 Then
                result = PlaceTwos(Count) & result
            Else
                If CDbl(TensText) = 1 And Count > 1 Then
                    result = PlaceOnes(Count) & result
                ElseIf CDbl(TensText) = 1 Or CDbl(TensText) = 2 Then
                    If Count = 1 And Hundreds = 0 And CDbl(TensText) = 0 Then result = result & ""
                Else
                End If
            End If
            If CDbl(TensText) > 0 Then
                If CDbl(Left(TensText, 1)) > 1 Then result = result & GetTensStatus(CDbl(Left(TensText, 1)), Lang)
                If Len(result) > 0 And CDbl(Right(TensText, 1)) <> 0 Then result = result & ChrW(1608) & ChrW(32)
                result = result & GetDigit(Right(TensText, 1), Lang)
            Else
                If Len(Spell) > 0 And CDbl(Left(TensText, 1)) <> 0 Or Len(result) > 0 And CDbl(Left(TensText, 1)) <> 0 Then result = result & ChrW(1608) & ChrW(32)
                result = result & GetTensStatus(CDbl(Left(TensText, 1)), Lang)
            End If
        End If
    Case "HEBREW"
        PlaceOnes(2) = ChrW(1488) & ChrW(1500) & ChrW(1508) & ChrW(1497) & ChrW(1501) & ChrW(32)
        PlaceOnes(3) = ChrW(1502) & ChrW(1497) & ChrW(1500) & ChrW(1497) & ChrW(1493) & ChrW(1503) & ChrW(32)
        PlaceOnes(4) = ChrW(1502) & ChrW(1497) & ChrW(1500) & ChrW(1497) & ChrW(1488) & ChrW(1512) & ChrW(1491) & ChrW(32)
        PlaceOnes(5) = ChrW(1496) & ChrW(1512) & ChrW(1497) & ChrW(1500) & ChrW(1497) & ChrW(1493) & ChrW(1503) & ChrW(32)
        PlaceTwos(2) = ChrW(1488) & ChrW(1500) & ChrW(1508) & ChrW(1497) & ChrW(1497) & ChrW(1501) & ChrW(32)
        PlaceTwos(3) = ChrW(1513) & ChrW(1504) & ChrW(1497) & ChrW(32) & ChrW(1502) & ChrW(1497) & ChrW(1500) & ChrW(1497) & ChrW(1493) & ChrW(1503) & ChrW(32)
        PlaceTwos(4) = ChrW(1513) & ChrW(1504) & ChrW(1497) & ChrW(32) & ChrW(1502) & ChrW(1497) & ChrW(1500) & ChrW(1497) & ChrW(1488) & ChrW(1512) & ChrW(1491) & ChrW(32)
        PlaceTwos(5) = ChrW(1513) & ChrW(1504) & ChrW(1497) & ChrW(32) & ChrW(1496) & ChrW(1512) & ChrW(1497) & ChrW(1500) & ChrW(1497) & ChrW(1493) & ChrW(1503) & ChrW(32)
        If CDbl(Left(TensText, 1)) = 1 Then
            Select Case Val(TensText)
            Case 10: result = ChrW(1506) & ChrW(1513) & ChrW(1512) & ChrW(32)
            Case 11: result = ChrW(1488) & ChrW(1495) & ChrW(1514) & ChrW(32) & ChrW(1506) & ChrW(1513) & ChrW(1512) & ChrW(1492) & ChrW(32)
            Case 12: result = ChrW(1513) & ChrW(1514) & ChrW(1497) & ChrW(1501) & ChrW(32) & ChrW(1506) & ChrW(1513) & ChrW(1512) & ChrW(1492) & ChrW(32)
            Case 13: result = ChrW(1513) & ChrW(1500) & ChrW(1493) & ChrW(1513) & ChrW(32) & ChrW(1506) & ChrW(1513) & ChrW(1512) & ChrW(1492) & ChrW(32)
            Case 14: result = ChrW(1488) & ChrW(1512) & ChrW(1489) & ChrW(1506) & ChrW(32) & ChrW(1506) & ChrW(1513) & ChrW(1512) & ChrW(1492) & ChrW(32)
            Case 15: result = ChrW(1495) & ChrW(1502) & ChrW(1513) & ChrW(32) & ChrW(1506) & ChrW(1513) & ChrW(1512) & ChrW(1492) & ChrW(32)
            Case 16: result = ChrW(1513) & ChrW(1513) & ChrW(32) & ChrW(1506) & ChrW(1513) & ChrW(1512) & ChrW(1492) & ChrW(32)
            Case 17: result = ChrW(1513) & ChrW(1489) & ChrW(1506) & ChrW(32) & ChrW(1506) & ChrW(1513) & ChrW(1512) & ChrW(1492) & ChrW(32)
            Case 18: result = ChrW(1513) & ChrW(1502) & ChrW(1493) & ChrW(1504) & ChrW(1492) & ChrW(32) & ChrW(1506) & ChrW(1513) & ChrW(1512) & ChrW(1492) & ChrW(32)
            Case 19: result = ChrW(1514) & ChrW(1513) & ChrW(1506) & ChrW(32) & ChrW(1506) & ChrW(1513) & ChrW(1512) & ChrW(1492) & ChrW(32)
            Case Else
            End Select
        Else
            If CDbl(TensText) = 2 And Hundreds = 0 And Count > 1 Then
                result = PlaceTwos(Count) & result
            Else
                If CDbl(TensText) = 1 And Count > 1 Then
                    result = PlaceOnes(Count) & result
                ElseIf CDbl(TensText) = 1 Or CDbl(TensText) = 2 Then
                    If Count = 1 And Hundreds = 0 And CDbl(TensText) = 0 Then result = result & ""
                Else
                End If
            End If
            If CDbl(TensText) > 0 Then
                If CDbl(Left(TensText, 1)) > 1 Then result = result & GetTensStatus(CDbl(Left(TensText, 1)), Lang)
                If Len(result) > 0 And CDbl(Right(TensText, 1)) <> 0 Then result = result & ChrW(1493) & ChrW(32)
                result = result & GetDigit(Right(TensText, 1), Lang)
            Else
                If Len(Spell) > 0 And CDbl(Left(TensText, 1)) <> 0 Or Len(result) > 0 And CDbl(Left(TensText, 1)) <> 0 Then result = result & ChrW(1493) & ChrW(32)
                result = result & GetTensStatus(CDbl(Left(TensText, 1)), Lang)
            End If
        End If
    Case "TURKCE"
        Select Case Val(Left(TensText, 1))
        Case 1: result = "on "
        Case 2: result = "yirmi "
        Case 3: result = "otuz "
        Case 4: result = "kırk "
        Case 5: result = "elli "
        Case 6: result = "altmış "
        Case 7: result = "yetmiş "
        Case 8: result = "seksen "
        Case 9: result = "doksan "
        Case Else
        End Select
        result = result & GetDigit(Right(TensText, 1), Lang)
    Case Else
    End Select
    GetTens = result
End Function
Function GetTensStatus(Tens, Lang)
    Select Case UCase(Lang)
    Case "ARABIC"
        Select Case Tens
        Case 2: result = ChrW(1593) & ChrW(1588) & ChrW(1585) & ChrW(1610) & ChrW(1606) & ChrW(32)
        Case 3: result = ChrW(1579) & ChrW(1604) & ChrW(1575) & ChrW(1579) & ChrW(1610) & ChrW(1606) & ChrW(32)
        Case 4: result = ChrW(1571) & ChrW(1585) & ChrW(1576) & ChrW(1593) & ChrW(1610) & ChrW(1606) & ChrW(32)
        Case 5: result = ChrW(1582) & ChrW(1605) & ChrW(1587) & ChrW(1610) & ChrW(1606) & ChrW(32)
        Case 6: result = ChrW(1587) & ChrW(1578) & ChrW(1610) & ChrW(1606) & ChrW(32)
        Case 7: result = ChrW(1587) & ChrW(1576) & ChrW(1593) & ChrW(1610) & ChrW(1606) & ChrW(32)
        Case 8: result = ChrW(1579) & ChrW(1605) & ChrW(1575) & ChrW(1606) & ChrW(1610) & ChrW(1606) & ChrW(32)
        Case 9: result = ChrW(1578) & ChrW(1587) & ChrW(1593) & ChrW(1610) & ChrW(1606) & ChrW(32)
        Case Else
        End Select
    Case "HEBREW"
        Select Case Tens
        Case 2: result = ChrW(1506) & ChrW(1513) & ChrW(1512) & ChrW(1497) & ChrW(1501) & ChrW(32)
        Case 3: result = ChrW(1513) & ChrW(1500) & ChrW(1493) & ChrW(1513) & ChrW(1497) & ChrW(1501) & ChrW(32)
        Case 4: result = ChrW(1488) & ChrW(1512) & ChrW(1489) & ChrW(1506) & ChrW(1497) & ChrW(1501) & ChrW(32)
        Case 5: result = ChrW(1495) & ChrW(1502) & ChrW(1497) & ChrW(1513) & ChrW(1497) & ChrW(1501) & ChrW(32)
        Case 6: result = ChrW(1513) & ChrW(1497) & ChrW(1513) & ChrW(1497) & ChrW(1501) & ChrW(32)
        Case 7: result = ChrW(1513) & ChrW(1489) & ChrW(1506) & ChrW(1497) & ChrW(1501) & ChrW(32)
        Case 8: result = ChrW(1513) & ChrW(1502) & ChrW(1493) & ChrW(1504) & ChrW(1497) & ChrW(1501) & ChrW(32)
        Case 9: result = ChrW(1514) & ChrW(1513) & ChrW(1506) & ChrW(1497) & ChrW(1501) & ChrW(32)
        Case Else
        End Select
    Case Else
    End Select
    GetTensStatus = result
End Function
Function HEPART(Optional npotent As Double, Optional memec As Integer) As Double
    Dim result      As Double
    Dim R, kat      As Double: kat = 2
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
    If memec = 1 Then
        HEPART = kat - 1
    Else
        HEPART = result
    End If
    726     If result = 0 Then MsgBox "HEPART() için değişken seçimlik değil" & ChrW(59) & " fakat makrolar harika çalışıyorlar"
End Function
Function HUDDAM(ByVal num As Long, Optional htype As String = "ULVI", Optional method As Integer = 1) As String
    Dim hpart(19), rest, counts, counting, counted, counter, part, preffixdepart As Integer: counts = 1
    Dim suffix      As Double
    Dim preffix, mode, eacher As String
    Dim GH, H       As String: GH = ""
    Select Case method
    Case 2, 8, 13 : method = method - 1 : mode = "eacher"
    Case 7, 12 : mode = "regular"
    Case Else : method = 1 : mode = "regular"
    End Select
    Select Case UCase(htype)
    Case "ULVI": suffix = ABJAD(ChrW(1574) & ChrW(1610) & ChrW(1604), CLng(method), 1)
    Case "SUFLI": suffix = ABJAD(ChrW(1610) & ChrW(1608) & ChrW(1588), CLng(method), 1)
    Case "ŞER": suffix = ABJAD(ChrW(1591) & ChrW(1610) & ChrW(1588), CLng(method), 1)
    Case Else: suffix = ABJAD(htype, CLng(method), 1)
    End Select
    If suffix > num Then
        Do
            num = num + 361
        Loop Until suffix < num
    Else
    End If
    preffix = CStr(num - suffix)
    preffixdepart = DUZLE(Len(preffix) / 3) * 3
    If Len(preffix) > 3 Then
        For departs = Len(preffix) To (Len(preffix) - preffixdepart) + 1 Step -3
            hpart(counts) = Mid(preffix, departs - 2, 3)
            counts = counts + 1
        Next
        rest = Len(preffix) - ((counts - 1) * 3)
        If rest > 0 Then
            hpart(counts) = Mid(preffix, 1, rest)
        Else
            counts = counts - 1
        End If
    Else
        hpart(1) = preffix
    End If
    For counter = counts To 1 Step -1
        For counting = 1 To Len(hpart(counter))
            eacher = ""
            choosen = Mid(hpart(counter), counting, 1)
            turn = 3 - Len(hpart(counter)) + counting
            Select Case turn
            Case 3
                Select Case CInt(choosen)
                Case 1
                    If 1 < Len(hpart(counter)) Then
                        H = ChrW(1575)
                    ElseIf counts = 1 Then
                        H = ChrW(1575)
                    Else
                    End If
                Case 2
                    Select Case method
                    Case 12: H = ChrW(1604)
                    Case Else: H = ChrW(1576)
                    End Select
                Case 3
                    Select Case method
                    Case 12: H = ChrW(1606)
                    Case Else: H = ChrW(1580)
                    End Select
                Case 4
                    Select Case method
                    Case 12: H = ChrW(1605)
                    Case Else: H = ChrW(1583)
                    End Select
                Case 5
                    Select Case method
                    Case 12: H = ChrW(1608)
                    Case Else: H = ChrW(1607)
                    End Select
                Case 6
                    Select Case method
                    Case 12: H = ChrW(1610)
                    Case Else: H = ChrW(1608)
                    End Select
                Case 7
                    Select Case method
                    Case 12: H = ChrW(1607)
                    Case Else: H = ChrW(1586)
                    End Select
                Case 8
                    Select Case method
                    Case 12: H = ChrW(1585)
                    Case Else: H = ChrW(1581)
                    End Select
                Case 9
                    Select Case method
                    Case 12: H = ChrW(1576)
                    Case Else: H = ChrW(1591)
                    End Select
                End Select
            Case 2
                Select Case CInt(choosen)
                Case 1
                    Select Case method
                    Case 12: H = ChrW(1578)
                    Case Else: H = ChrW(1610)
                    End Select
                Case 2: H = ChrW(1603)
                Case 3
                    Select Case method
                    Case 12: H = ChrW(1593)
                    Case Else: H = ChrW(1604)
                    End Select
                Case 4
                    Select Case method
                    Case 12: H = ChrW(1601)
                    Case Else: H = ChrW(1605)
                    End Select
                Case 5
                    Select Case method
                    Case 12: H = ChrW(1602)
                    Case Else: H = ChrW(1606)
                    End Select
                Case 6
                    Select Case method
                    Case 7: H = ChrW(1589)
                    Case Else: H = ChrW(1587)
                    End Select
                Case 7
                    Select Case method
                    Case 12: H = ChrW(1583)
                    Case Else: H = ChrW(1593)
                    End Select
                Case 8
                    Select Case method
                    Case 12: H = ChrW(1584)
                    Case Else: H = ChrW(1601)
                    End Select
                Case 9
                    Select Case method
                    Case 7: H = ChrW(1590)
                    Case 12: H = ChrW(1581)
                    Case Else: H = ChrW(1589)
                    End Select
                End Select
            Case 1
                Select Case CInt(choosen)
                Case 1
                    Select Case method
                    Case 12: H = ChrW(1580)
                    Case Else: H = ChrW(1602)
                    End Select
                Case 2
                    Select Case method
                    Case 12: H = ChrW(1582)
                    Case Else: H = ChrW(1585)
                    End Select
                Case 3
                    Select Case method
                    Case 7: H = ChrW(1587)
                    Case Else: H = ChrW(1588)
                    End Select
                Case 4
                    Select Case method
                    Case 12: H = ChrW(1589)
                    Case Else: H = ChrW(1578)
                    End Select
                Case 5
                    Select Case method
                    Case 12: H = ChrW(1590)
                    Case Else: H = ChrW(1579)
                    End Select
                Case 6
                    Select Case method
                    Case 12: H = ChrW(1586)
                    Case Else: H = ChrW(1582)
                    End Select
                Case 7
                    Select Case method
                    Case 12: H = ChrW(1579)
                    Case Else: H = ChrW(1584)
                    End Select
                Case 8
                    Select Case method
                    Case 7: H = ChrW(1592)
                    Case 12: H = ChrW(1591)
                    Case Else: H = ChrW(1590)
                    End Select
                Case 9
                    Select Case method
                    Case 7, 12: H = ChrW(1594)
                    Case Else: H = ChrW(1592)
                    End Select
                End Select
            End Select
            GH = GH & H
            If CInt(hpart(counter)) > 0 Then
                For counted = 1 To counter - 1
                    Select Case method
                    Case 7: eacher = eacher & ChrW(1588)
                    Case 12: eacher = eacher & ChrW(1592)
                    Case Else: eacher = eacher & ChrW(1594)
                    End Select
                Next
            Else
            End If
            If mode = "eacher" Then GH = GH & eacher : eacher = ""
            H = ""
        Next
        If mode = "regular" Then GH = GH & eacher : eacher = ""
    Next
    Select Case htype
    Case "ULVI": GH = GH & ChrW(1574) & ChrW(1610) & ChrW(1604)
    Case "SUFLI": GH = GH & ChrW(1610) & ChrW(1608) & ChrW(1588)
    Case "ŞER": GH = GH & ChrW(1591) & ChrW(1610) & ChrW(1588)
    Case Else: GH = GH & htype
    End Select
    HUDDAM = GH
End Function
Function NEWLINE(Optional amount As Double) As String
    Dim rows        As Double
    Dim NL          As String: NL = ""
    For rows = 1 To amount
        NL = NL & ChrW(10)
    Next rows
    NEWLINE = NL
End Function
Function NUMBERS2ARAB(Optional metin As String) As String
    Dim counter     As Integer
    Dim choosen, NA As String: NA = "": NUMBERS2ARAB = ""
    For counter = 1 To Len(metin)
        choosen = Mid(metin, counter, 1)
        Select Case choosen
        Case ChrW(49): NA = NA & ChrW(1633)
        Case ChrW(50): NA = NA & ChrW(1634)
        Case ChrW(51): NA = NA & ChrW(1635)
        Case ChrW(52): NA = NA & ChrW(1636)
        Case ChrW(53): NA = NA & ChrW(1637)
        Case ChrW(54): NA = NA & ChrW(1638)
        Case ChrW(55): NA = NA & ChrW(1639)
        Case ChrW(56): NA = NA & ChrW(1640)
        Case ChrW(57): NA = NA & ChrW(1641)
        Case ChrW(48): NA = NA & ChrW(1632)
        Case ChrW(32): NA = NA & ChrW(32)
        Case Else: NA = NA & choosen
        End Select
    Next
    NUMBERS2ARAB = NA
End Function
Function NUMEROLOG(ByVal metin As String, Optional tablo As String, Optional outas As Variant, Optional shadda As Variant) As Variant
    Dim SM, S, C, D, N, sesli, sessiz, err, counter, space, hrk As Integer: NUMEROLOG = 0: S = 0: N = 0: sesli = 0: sessiz = 0
    Dim M, nitem, nesoohc, choosen As String: nitem = "": err = 0: tablo = LCase(tablo): metin = UCase(metin)
    Select Case tablo
    Case "date"
        S = CDbl(CStr(Year(CDbl(metin))) & CStr(Month(CDbl(metin))) & CStr(Day(CDbl(metin))))
    Case Else
        For counter = 1 To Len(metin)
            choosen = Mid(metin, counter, 1)
            Select Case choosen
            Case "A"
                Select Case tablo
                Case "modern": S = 1: sesli = 1
                Case "tr", "en": S = 1
                Case Else: err = 1
                End Select
            Case "B"
                Select Case tablo
                Case "modern": S = 2: sessiz = 2
                Case "tr", "en": S = 2
                Case Else: err = 1
                End Select
            Case "C"
                Select Case tablo
                Case "modern": S = 3: sessiz = 3
                Case "tr", "en": S = 3
                Case Else: err = 1
                End Select
            Case "Ç"
                Select Case tablo
                Case "modern": S = 3: sessiz = 3
                Case "tr": S = 4
                Case "en": S = 3
                Case Else: err = 1
                End Select
            Case "D"
                Select Case tablo
                Case "modern": S = 4: sessiz = 4
                Case "tr": S = 5
                Case "en": S = 4
                Case Else: err = 1
                End Select
            Case "E"
                Select Case tablo
                Case "modern": S = 5: sesli = 5
                Case "tr": S = 6
                Case "en": S = 5
                Case Else: err = 1
                End Select
            Case "F"
                Select Case tablo
                Case "modern": S = 6: sessiz = 6
                Case "tr": S = 7
                Case "en": S = 6
                Case Else: err = 1
                End Select
            Case "G"
                Select Case tablo
                Case "modern": S = 7: sessiz = 7
                Case "tr": S = 8
                Case "en": S = 7
                Case Else: err = 1
                End Select
            Case "Ğ"
                Select Case tablo
                Case "modern": S = 7: sessiz = 7
                Case "tr": S = 9
                Case "en": S = 7
                Case Else: err = 1
                End Select
            Case "H"
                Select Case tablo
                Case "modern": S = 8: sessiz = 8
                Case "tr": S = 10
                Case "en": S = 8
                Case Else: err = 1
                End Select
            Case "I"
                Select Case tablo
                Case "modern": S = 9: sesli = 9
                Case "tr": S = 11
                Case "en": S = 9
                Case Else: err = 1
                End Select
            Case "İ"
                Select Case tablo
                Case "modern": S = 9: sesli = 9
                Case "tr": S = 12
                Case "en": S = 9
                Case Else: err = 1
                End Select
            Case "J"
                Select Case tablo
                Case "modern": S = 1: sessiz = 1
                Case "tr": S = 13
                Case "en": S = 10
                Case Else: err = 1
                End Select
            Case "K"
                Select Case tablo
                Case "modern": S = 2: sessiz = 2
                Case "tr": S = 14
                Case "en": S = 11
                Case Else: err = 1
                End Select
            Case "L"
                Select Case tablo
                Case "modern": S = 3: sessiz = 3
                Case "tr": S = 15
                Case "en": S = 12
                Case Else: err = 1
                End Select
            Case "M"
                Select Case tablo
                Case "modern": S = 4: sessiz = 4
                Case "tr": S = 16
                Case "en": S = 13
                Case Else: err = 1
                End Select
            Case "N"
                Select Case tablo
                Case "modern": S = 5: sessiz = 5
                Case "tr": S = 17
                Case "en": S = 14
                Case Else: err = 1
                End Select
            Case "O"
                Select Case tablo
                Case "modern": S = 6: sesli = 6
                Case "tr": S = 18
                Case "en": S = 15
                Case Else: err = 1
                End Select
            Case "Ö"
                Select Case tablo
                Case "modern": S = 6: sesli = 6
                Case "tr": S = 19
                Case "en": S = 15
                Case Else: err = 1
                End Select
            Case "P"
                Select Case tablo
                Case "modern": S = 7: sessiz = 7
                Case "tr": S = 20
                Case "en": S = 16
                Case Else: err = 1
                End Select
            Case ChrW(81)
                Select Case tablo
                Case "modern": S = 8: sessiz = 8
                Case "tr": S = 0
                Case "en": S = 17
                Case Else: err = 1
                End Select
            Case "R"
                Select Case tablo
                Case "modern": S = 9: sessiz = 9
                Case "tr": S = 21
                Case "en": S = 18
                Case Else: err = 1
                End Select
            Case "S"
                Select Case tablo
                Case "modern": S = 1: sessiz = 1
                Case "tr": S = 22
                Case "en": S = 19
                Case Else: err = 1
                End Select
            Case "Ş"
                Select Case tablo
                Case "modern": S = 1: sessiz = 1
                Case "tr": S = 23
                Case "en": S = 19
                Case Else: err = 1
                End Select
            Case "T"
                Select Case tablo
                Case "modern": S = 2: sessiz = 2
                Case "tr": S = 24
                Case "en": S = 20
                Case Else: err = 1
                End Select
            Case "U"
                Select Case tablo
                Case "modern": S = 3: sesli = 3
                Case "tr": S = 25
                Case "en": S = 21
                Case Else: err = 1
                End Select
            Case "Ü"
                Select Case tablo
                Case "modern": S = 3: sesli = 3
                Case "tr": S = 26
                Case "en": S = 21
                Case Else: err = 1
                End Select
            Case "V"
                Select Case tablo
                Case "modern": S = 4: sessiz = 4
                Case "tr": S = 27
                Case "en": S = 22
                Case Else: err = 1
                End Select
            Case ChrW(87)
                Select Case tablo
                Case "modern": S = 5: sessiz = 5
                Case "tr": S = 0
                Case "en": S = 23
                Case Else: err = 1
                End Select
            Case ChrW(88)
                Select Case tablo
                Case "modern": S = 6: sessiz = 6
                Case "tr": S = 0
                Case "en": S = 24
                Case Else: err = 1
                End Select
            Case "Y"
                Select Case tablo
                Case "modern": S = 7: sessiz = 7
                Case "tr": S = 28
                Case "en": S = 25
                Case Else: err = 1
                End Select
            Case "Z"
                Select Case tablo
                Case "modern": S = 8: sessiz = 8
                Case "tr": S = 29
                Case "en": S = 26
                End Select
            Case ChrW(1575), ChrW(1571), ChrW(1573), ChrW(1570), ChrW(1569), ChrW(1609), ChrW(1574)
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)", "arb(hica)", "arb(mhica)", "osman": S = 1
                Case Else: err = 1
                End Select
            Case ChrW(1576)
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)", "arb(hica)", "arb(mhica)", "osman": S = 2
                Case Else: err = 1
                End Select
            Case ChrW(64342)
                Select Case tablo
                Case "osman": S = 3
                Case Else: err = 1
                End Select
            Case ChrW(1578)
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)": S = 22
                Case "arb(hica)", "arb(mhica)": S = 3
                Case "osman": S = 4
                Case Else: err = 1
                End Select
            Case ChrW(1579)
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)": S = 23
                Case "arb(hica)", "arb(mhica)": S = 4
                Case "osman": S = 5
                Case Else: err = 1
                End Select
            Case ChrW(1580)
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)": S = 3
                Case "arb(hica)", "arb(mhica)": S = 5
                Case "osman": S = 6
                Case Else: err = 1
                End Select
            Case ChrW(64378)
                Select Case tablo
                Case "osman": S = 7
                Case Else: err = 1
                End Select
            Case ChrW(1581)
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)": S = 8
                Case "arb(hica)", "arb(mhica)": S = 6
                Case "osman": S = 8
                Case Else: err = 1
                End Select
            Case ChrW(1582)
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)": S = 24
                Case "arb(hica)", "arb(mhica)": S = 7
                Case "osman": S = 9
                Case Else: err = 1
                End Select
            Case ChrW(1583)
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)": S = 4
                Case "arb(hica)", "arb(mhica)": S = 8
                Case "osman": S = 10
                Case Else: err = 1
                End Select
            Case ChrW(1584)
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)": S = 25
                Case "arb(hica)", "arb(mhica)": S = 9
                Case "osman": S = 11
                Case Else: err = 1
                End Select
            Case ChrW(1585)
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)": S = 20
                Case "arb(hica)", "arb(mhica)": S = 10
                Case "osman": S = 12
                Case Else: err = 1
                End Select
            Case ChrW(1586)
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)": S = 7
                Case "arb(hica)", "arb(mhica)": S = 11
                Case "osman": S = 13
                Case Else: err = 1
                End Select
            Case ChrW(64394)
                Select Case tablo
                Case "osman": S = 14
                Case Else: err = 1
                End Select
            Case ChrW(1587)
                Select Case tablo
                Case "arb(ebced)": S = 15
                Case "arb(mebced)": S = 21
                Case "arb(hica)": S = 12
                Case "arb(mhica)": S = 24
                Case "osman": S = 15
                Case Else: err = 1
                End Select
            Case ChrW(1588)
                Select Case tablo
                Case "arb(ebced)": S = 21
                Case "arb(mebced)": S = 28
                Case "arb(hica)": S = 13
                Case "arb(mhica)": S = 25
                Case "osman": S = 16
                Case Else: err = 1
                End Select
            Case ChrW(1589)
                Select Case tablo
                Case "arb(ebced)": S = 18
                Case "arb(mebced)": S = 15
                Case "arb(hica)": S = 14
                Case "arb(mhica)": S = 18
                Case "osman": S = 17
                Case Else: err = 1
                End Select
            Case ChrW(1590)
                Select Case tablo
                Case "arb(ebced)": S = 26
                Case "arb(mebced)": S = 18
                Case "arb(hica)": S = 15
                Case "arb(mhica)": S = 19
                Case "osman": S = 18
                Case Else: err = 1
                End Select
            Case ChrW(1591)
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)": S = 9
                Case "arb(hica)": S = 16
                Case "arb(mhica)": S = 12
                Case "osman": S = 19
                Case Else: err = 1
                End Select
            Case ChrW(1592)
                Select Case tablo
                Case "arb(ebced)": S = 27
                Case "arb(mebced)": S = 26
                Case "arb(hica)": S = 17
                Case "arb(mhica)": S = 13
                Case "osman": S = 20
                Case Else: err = 1
                End Select
            Case ChrW(1593)
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)": S = 16
                Case "arb(hica)": S = 18
                Case "arb(mhica)": S = 20
                Case "osman": S = 21
                Case Else: err = 1
                End Select
            Case ChrW(1594)
                Select Case tablo
                Case "arb(ebced)": S = 28
                Case "arb(mebced)": S = 17
                Case "arb(hica)": S = 19
                Case "arb(mhica)": S = 21
                Case "osman": S = 22
                Case Else: err = 1
                End Select
            Case ChrW(1601)
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)": S = 17
                Case "arb(hica)": S = 20
                Case "arb(mhica)": S = 22
                Case "osman": S = 23
                Case Else: err = 1
                End Select
            Case ChrW(1602)
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)": S = 19
                Case "arb(hica)": S = 21
                Case "arb(mhica)": S = 23
                Case "osman": S = 24
                Case Else: err = 1
                End Select
            Case ChrW(1603)
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)": S = 11
                Case "arb(hica)": S = 22
                Case "arb(mhica)": S = 14
                Case "osman": S = 25
                Case Else: err = 1
                End Select
            Case ChrW(64402)
                Select Case tablo
                Case "osman": S = 26
                Case Else: err = 1
                End Select
            Case ChrW(64467)
                Select Case tablo
                Case "osman": S = 27
                Case Else: err = 1
                End Select
            Case ChrW(1604)
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)": S = 12
                Case "arb(hica)": S = 23
                Case "arb(mhica)": S = 15
                Case "osman": S = 28
                Case Else: err = 1
                End Select
            Case ChrW(1605)
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)": S = 13
                Case "arb(hica)": S = 24
                Case "arb(mhica)": S = 16
                Case "osman": S = 29
                Case Else: err = 1
                End Select
            Case ChrW(1606)
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)": S = 14
                Case "arb(hica)": S = 25
                Case "arb(mhica)": S = 17
                Case "osman": S = 30
                Case Else: err = 1
                End Select
            Case ChrW(1608), ChrW(1572)
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)": S = 6
                Case "arb(hica)", "arb(mhica)": S = 27
                Case "osman": S = 31
                Case Else: err = 1
                End Select
            Case ChrW(1607), ChrW(1577)
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)": S = 5
                Case "arb(hica)", "arb(mhica)": S = 26
                Case "osman": S = 32
                Case Else: err = 1
                End Select
            Case ChrW(65275)
                Select Case tablo
                Case "osman": S = 33
                Case Else: err = 1
                End Select
            Case ChrW(1610)
                Select Case tablo
                Case "arb(ebced)", "arb(mebced)": S = 10
                Case "arb(hica)", "arb(mhica)": S = 28
                Case "osman": S = 34
                Case Else: err = 1
                End Select
            Case Else
                N = N + 1
                Select Case choosen
                Case ChrW(1617)
                    Select Case shadda
                    Case 1: S = 0
                    Case 2
                        C = 1
                        Do
                            M = Mid(metin, counter - C, 1)
                            S = NUMEROLOG(M, tablo, outas, 1)
                            C = C + 1
                        Loop Until S <> 0
                    Case Else: err = 3
                    End Select
                    hrk = hrk + 1
                Case ChrW(1648)
                    C = 1
                    Do
                        M = Mid(metin, counter - C, 1)
                        If M = ChrW(1600) Then S = NUMEROLOG(ChrW(1575), tablo, outas, 1)
                        C = C + 1
                    Loop Until S <> 0 Or M = ChrW(1600)
                Case ChrW(32): space = space + 1: S = 0
                Case ChrW(10)
                Case ChrW(13)
                Case ChrW(1614), ChrW(1616), ChrW(1611), ChrW(1613), ChrW(1615), ChrW(1618), ChrW(1612), ChrW(1600): hrk = hrk + 1: S = 0
                Case Else: nitem = nitem & choosen: err = 2
                End Select
            End Select
            If err = 1 Then
                nesoohc = nesoohc & choosen: D = D + 1
            Else
                SM = SM + S
            End If
        Next counter
    End Select
    Select Case err
    Case 0
        Select Case outas
        Case "Sesli": NUMEROLOG = RAKAMTOPLA(sesli, 1)
        Case "Sessiz": NUMEROLOG = RAKAMTOPLA(sessiz, 1)
        Case "tam": NUMEROLOG = SM
        Case "hepsi": NUMEROLOG = RAKAMTOPLA(SM, 0)
        Case Else
            If CInt(outas) > 0 Then
                NUMEROLOG = RAKAMTOPLA(SM, CInt(outas))
            Else
                NUMEROLOG = "Çıktı türü" & ChrW(63)
            End If
        End Select
    Case 1: NUMEROLOG = nesoohc & " (" & D & " karakter " & ChrW(39) & "tablo" & ChrW(39) & " için tanımsız)"
    Case 2: NUMEROLOG = nitem & " (" & N - (space + hrk) & " karakter yöntemlerde tanımsız)"
    Case 3: NUMEROLOG = "Şedde Ayarı" & ChrW(63)
    End Select
End Function
Function NUTKET(ByVal MyNumber, Lang)
    Dim Temp, Spell
    Dim Count
    Count = 1
    ReDim Place(9), PlaceOnes(9), PlaceTwos(9), PlaceAppent(9), PlacePlural(9) As String
    Select Case UCase(Lang)
    Case "ARABIC"
        If Val(MyNumber) = 0 And Count = 1 Then
            NUTKET = ChrW(1589) & ChrW(1601) & ChrW(1585)
            Exit Function
        Else
        End If
        PlaceOnes(2) = ChrW(1571) & ChrW(1604) & ChrW(1601)
        PlaceOnes(3) = ChrW(1605) & ChrW(1604) & ChrW(1610) & ChrW(1608) & ChrW(1606)
        PlaceOnes(4) = ChrW(1605) & ChrW(1604) & ChrW(1610) & ChrW(1575) & ChrW(1585)
        PlaceOnes(5) = ChrW(1578) & ChrW(1585) & ChrW(1610) & ChrW(1604) & ChrW(1610) & ChrW(1608) & ChrW(1606)
        PlaceTwos(2) = ChrW(1571) & ChrW(1604) & ChrW(1601) & ChrW(1575) & ChrW(1606)
        PlaceTwos(3) = ChrW(1605) & ChrW(1604) & ChrW(1610) & ChrW(1608) & ChrW(1606) & ChrW(1575) & ChrW(1606)
        PlaceTwos(4) = ChrW(1605) & ChrW(1604) & ChrW(1610) & ChrW(1575) & ChrW(1585) & ChrW(1575) & ChrW(1606)
        PlaceTwos(5) = ChrW(1578) & ChrW(1585) & ChrW(1610) & ChrW(1604) & ChrW(1610) & ChrW(1608) & ChrW(1606) & ChrW(1575) & ChrW(1606)
        PlaceAppent(2) = ChrW(1571) & ChrW(1604) & ChrW(1601) & ChrW(1575) & ChrW(1611)
        PlaceAppent(3) = ChrW(1605) & ChrW(1604) & ChrW(1610) & ChrW(1608) & ChrW(1606) & ChrW(1575) & ChrW(1611)
        PlaceAppent(4) = ChrW(1605) & ChrW(1604) & ChrW(1610) & ChrW(1575) & ChrW(1585) & ChrW(1575) & ChrW(1611)
        PlaceAppent(5) = ChrW(1578) & ChrW(1585) & ChrW(1610) & ChrW(1604) & ChrW(1610) & ChrW(1608) & ChrW(1606) & ChrW(1575) & ChrW(1611)
        PlacePlural(2) = ChrW(1570) & ChrW(1604) & ChrW(1575) & ChrW(1601)
        PlacePlural(3) = ChrW(1605) & ChrW(1604) & ChrW(1575) & ChrW(1610) & ChrW(1610) & ChrW(1606)
        PlacePlural(4) = ChrW(1605) & ChrW(1604) & ChrW(1610) & ChrW(1575) & ChrW(1585) & ChrW(1575) & ChrW(1578)
        PlacePlural(5) = ChrW(1578) & ChrW(1585) & ChrW(1610) & ChrW(1604) & ChrW(1610) & ChrW(1608) & ChrW(1606) & ChrW(1575) & ChrW(1578)
        Do While MyNumber <> ""
            EventHappenned = 0
            If Count > 1 And CDbl(Right(MyNumber, 3)) = 1 Then
                Temp = ""
                If Len(Spell) > 0 Then
                    Spell = PlaceOnes(Count) & ChrW(32) & ChrW(1608) & ChrW(32) & Spell
                Else
                    Spell = PlaceOnes(Count) & ChrW(32) & Spell
                End If
            ElseIf Count > 1 And CDbl(Right(MyNumber, 3)) = 2 Then
                Temp = ""
                If Len(Spell) > 0 Then
                    Spell = PlaceTwos(Count) & ChrW(32) & ChrW(1608) & ChrW(32) & Spell
                Else
                    Spell = PlaceTwos(Count) & ChrW(32) & Spell
                End If
            Else
                Temp = GetHundreds(Right(MyNumber, 3), Lang, Count, Spell)
            End If
            If Temp <> "" Then
                If Count > 1 Then
                    If Len(Spell) > 0 Then Spell = ChrW(32) & ChrW(1608) & ChrW(32) & Spell
                    If CDbl(Right(MyNumber, 3)) <> 2 Then
                        If DUZLE(CDbl(Right(MyNumber, 3)) / 100) <> 1 Then
                            If CDbl(Right(MyNumber, 3)) >= 3 And CDbl(Right(MyNumber, 3)) <= 10 Then
                                Spell = ChrW(32) & PlacePlural(Count) & Spell
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
                    If Len(Spell) > 0 Then
                        Spell = ChrW(32) & PlaceAppent(Count) & Spell
                    Else
                        Spell = ChrW(32) & PlaceOnes(Count) & Spell
                    End If
                Else
                    EventHappenned = 0
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
            NUTKET = ChrW(1488) & ChrW(1462) & ChrW(1508) & ChrW(1462) & ChrW(1505)
            Exit Function
        Else
        End If
        PlaceOnes(2) = ChrW(1488) & ChrW(1500) & ChrW(1507)
        PlaceOnes(3) = ChrW(1502) & ChrW(1497) & ChrW(1500) & ChrW(1497) & ChrW(1493) & ChrW(1503)
        PlaceOnes(4) = ChrW(1502) & ChrW(1497) & ChrW(1500) & ChrW(1497) & ChrW(1488) & ChrW(1512) & ChrW(1491)
        PlaceOnes(5) = ChrW(1496) & ChrW(1512) & ChrW(1497) & ChrW(1500) & ChrW(1497) & ChrW(1493) & ChrW(1503)
        PlaceTwos(2) = ChrW(1488) & ChrW(1500) & ChrW(1508) & ChrW(1497) & ChrW(1497) & ChrW(1501) & ChrW(32)
        PlaceTwos(3) = ChrW(1513) & ChrW(1504) & ChrW(1497) & ChrW(32) & ChrW(1502) & ChrW(1497) & ChrW(1500) & ChrW(1497) & ChrW(1493) & ChrW(1503) & ChrW(32)
        PlaceTwos(4) = ChrW(1513) & ChrW(1504) & ChrW(1497) & ChrW(32) & ChrW(1502) & ChrW(1497) & ChrW(1500) & ChrW(1497) & ChrW(1488) & ChrW(1512) & ChrW(1491) & ChrW(32)
        PlaceTwos(5) = ChrW(1513) & ChrW(1504) & ChrW(1497) & ChrW(32) & ChrW(1496) & ChrW(1512) & ChrW(1497) & ChrW(1500) & ChrW(1497) & ChrW(1493) & ChrW(1503) & ChrW(32)
        PlaceAppent(2) = ChrW(1488) & ChrW(1500) & ChrW(1508) & ChrW(1488)
        PlaceAppent(3) = ChrW(1502) & ChrW(1497) & ChrW(1500) & ChrW(1497) & ChrW(1493) & ChrW(1503)
        PlaceAppent(4) = ChrW(1502) & ChrW(1497) & ChrW(1500) & ChrW(1497) & ChrW(1488) & ChrW(1512) & ChrW(1491)
        PlaceAppent(5) = ChrW(1496) & ChrW(1512) & ChrW(1497) & ChrW(1500) & ChrW(1497) & ChrW(1493) & ChrW(1503)
        PlacePlural(2) = ChrW(1488) & ChrW(1500) & ChrW(1508) & ChrW(1497) & ChrW(1501)
        PlacePlural(3) = ChrW(1502) & ChrW(1497) & ChrW(1500) & ChrW(1497) & ChrW(1493) & ChrW(1504) & ChrW(1497) & ChrW(1501)
        PlacePlural(4) = ChrW(1502) & ChrW(1497) & ChrW(1500) & ChrW(1497) & ChrW(1488) & ChrW(1512) & ChrW(1491) & ChrW(1497) & ChrW(1501)
        PlacePlural(5) = ChrW(1496) & ChrW(1512) & ChrW(1497) & ChrW(1500) & ChrW(1497) & ChrW(1493) & ChrW(1504) & ChrW(1497) & ChrW(1501)
        Do While MyNumber <> ""
            EventHappenned = 0
            If Count > 1 And CDbl(Right(MyNumber, 3)) = 1 Then
                Temp = ""
                If Len(Spell) > 0 Then
                    Spell = PlaceOnes(Count) & ChrW(32) & ChrW(1493) & ChrW(32) & Spell
                Else
                    Spell = PlaceOnes(Count) & ChrW(32) & Spell
                End If
            ElseIf Count > 1 And CDbl(Right(MyNumber, 3)) = 2 Then
                Temp = ""
                If Len(Spell) > 0 Then
                    Spell = PlaceTwos(Count) & ChrW(32) & ChrW(1493) & ChrW(32) & Spell
                Else
                    Spell = PlaceTwos(Count) & ChrW(32) & Spell
                End If
            Else
                Temp = GetHundreds(Right(MyNumber, 3), Lang, Count, Spell)
            End If
            If Temp <> "" Then
                If Count > 1 Then
                    If Len(Spell) > 0 Then Spell = ChrW(32) & ChrW(1493) & ChrW(32) & Spell
                    If CDbl(Right(MyNumber, 3)) <> 2 Then
                        If DUZLE(CDbl(Right(MyNumber, 3)) / 100) <> 1 Then
                            If CDbl(Right(MyNumber, 3)) >= 3 And CDbl(Right(MyNumber, 3)) <= 10 Then
                                Spell = ChrW(32) & PlacePlural(Count) & Spell
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
                    If Len(Spell) > 0 Then
                        Spell = ChrW(32) & PlaceAppent(Count) & Spell
                    Else
                        Spell = ChrW(32) & PlaceOnes(Count) & Spell
                    End If
                Else
                    EventHappenned = 0
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
        Place(2) = "bin" & ChrW(32)
        Place(3) = "milyon" & ChrW(32)
        Place(4) = "milyar" & ChrW(32)
        Place(5) = "trilyon" & ChrW(32)
        Do While MyNumber <> ""
            If Count = 2 And CDbl(Right(MyNumber, 3)) = 1 Then
                Temp = ""
                Spell = Place(Count) & Spell
            Else
                Temp = GetHundreds(Right(MyNumber, 3), Lang)
            End If
            If Temp <> "" Then
                Spell = Temp & ChrW(32) & Place(Count) & Spell
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
Function RAKAMTOPLA(ByVal valuez As Double, Optional d1g1tamount As Integer) As String
    Dim hepsi       As String
    Dim counter     As Integer
    Dim NewSum, choosen As Double
    If d1g1tamount = 0 Then
        hepsi = CStr(valuez)
        Do Until Len(CStr(valuez)) = 1
            NewSum = 0
            For counter = 1 To Len(CStr(valuez))
                choosen = CDbl(Mid(CStr(valuez), counter, 1))
                NewSum = NewSum + choosen
                Next: valuez = NewSum: hepsi = hepsi & ChrW(32) & ChrW(9658) & ChrW(32) & NewSum
                Loop: RAKAMTOPLA = hepsi
            Else
                Do Until Len(CStr(valuez)) <= d1g1tamount
                    NewSum = 0
                    For counter = 1 To Len(CStr(valuez))
                        choosen = Mid(CStr(valuez), counter, 1)
                        NewSum = NewSum + choosen
                        Next: valuez = NewSum
                        Loop: RAKAMTOPLA = valuez
                    End If
                End Function
Function SAF(ByVal metin As String, Optional ayrac As Variant, Optional shadda As Integer = 1) As String
    Dim counter     As Integer
    Dim choosen, S, irun As String: SAF = ""
    Select Case ayrac
    Case 0: irun = ""
    Case Else: irun = ayrac
    End Select
    For counter = 1 To Len(metin)
        choosen = Mid(metin, counter, 1): S = ""
        Select Case shadda
        Case 2
            C = 1
            If choosen = ChrW(1617) Then
                Do
                    choosen = Mid(metin, counter - C, 1)
                    C = C + 1
                Loop Until SAF(CStr(choosen), "") <> ""
            Else
            End If
        Case Else
        End Select
        Select Case UCase(choosen)
        Case ChrW(1575), ChrW(1569), ChrW(1609), ChrW(1576), ChrW(1580), ChrW(1583), ChrW(1607), ChrW(1608), ChrW(1572), ChrW(1586): S = choosen & irun
        Case ChrW(1581), ChrW(1591), ChrW(1610), ChrW(1603), ChrW(1604), ChrW(1605), ChrW(1606), ChrW(1587), ChrW(1593), ChrW(1601): S = choosen & irun
        Case ChrW(1589), ChrW(1602), ChrW(1585), ChrW(1588), ChrW(1578), ChrW(1590), ChrW(1577), ChrW(1579), ChrW(1582), ChrW(1584): S = choosen & irun
        Case ChrW(1590), ChrW(1592), ChrW(1594), ChrW(1574): S = choosen & irun
        Case ChrW(1571), ChrW(1573), ChrW(1570), ChrW(1609) & ChrW(1648): S = ChrW(1575) & irun
        Case ChrW(1705): S = ChrW(1705) & irun
        Case ChrW(64402): S = ChrW(64402) & irun
        Case ChrW(1740): S = ChrW(1740) & irun
        Case ChrW(1728): S = ChrW(1728) & irun
        Case ChrW(1488), ChrW(1489), ChrW(1490), ChrW(1491), ChrW(1492), ChrW(1493), ChrW(1494), ChrW(1495), ChrW(1496), ChrW(1497): S = choosen & irun
        Case ChrW(1500), ChrW(1505), ChrW(1506), ChrW(1511), ChrW(1512), ChrW(1513), ChrW(1514): S = choosen & irun
        Case ChrW(1499), ChrW(1498), ChrW(1502), ChrW(1501), ChrW(1504), ChrW(1503), ChrW(1508), ChrW(1507), ChrW(1510), ChrW(1509): S = choosen & irun
        Case "A", "B", "C", "Ç", "D", "E", "F", "G", "Ğ": S = choosen & irun
        Case "H", "I", "İ", "J", "K", "L", "M", "N", "O": S = choosen & irun
        Case "Ö", "P", "R", "S", "Ş", "T", "U", "Ü", "V": S = choosen & irun
        Case "Y", "Z": S = choosen & irun
        Case ChrW(32)
            Select Case ayrac
            Case "": S = choosen
            Case 0: S = ""
            Case Else: S = irun
            End Select
        Case Else: S = ""
        End Select
        SAF = SAF & S
    Next counter
End Function
Function SAY(ByVal metin As String, Optional met As String, Optional stype As Variant, Optional fastmode As Variant) As Double
    Dim CA, counter As Integer
    Dim choosen     As String
    If fastmode <> 1 Then metin = SAF(metin, ""): met = SAF(met, "")
    CA = Len(metin) - Len(met) + 1: SAY = 0
    For counter = 1 To CA
        choosen = Mid(metin, counter, Len(met))
        Select Case stype
        Case 0
            If choosen = met Then SAY = SAY + 1
        Case 1
            If counter = CA And choosen = met Then
                If Mid(metin, counter - 1, 1) = ChrW(32) Then SAY = SAY + 1
            ElseIf counter < CA Then
                If Mid(metin, counter + Len(met), 1) = ChrW(32) And choosen = met Then
                    If counter = 1 Then
                        SAY = SAY + 1
                    ElseIf Mid(metin, counter - 1, 1) = ChrW(32) Then
                        SAY = SAY + 1
                    Else
                    End If
                Else
                End If
            Else
            End If
        Case 2
            If counter > 2 Then If choosen = met And Mid(metin, counter - 2, 2) = ChrW(1575) & ChrW(1604) Then SAY = SAY + 1
        Case 3
            If counter = CA And counter > 2 Then
                If choosen = met And Mid(metin, counter - 2, 2) = ChrW(1575) & ChrW(1604) Then SAY = SAY + 1
            ElseIf counter < CA And counter > 3 Then
                If Mid(metin, counter + Len(met), 1) = ChrW(32) Then
                    If Mid(metin, counter - 3, 3) = ChrW(1575) & ChrW(1604) & ChrW(32) And choosen = met Then SAY = SAY + 1
                Else
                End If
            Else
            End If
        End Select
    Next
End Function
Function TEKSIR(ByVal metin As String, Optional ayrac As String, Optional shadda As Integer) As String
    Dim counter, produce, inverse, LengthDouble As Integer: LengthDouble = 0
    Dim newmetin, IKSIR, result As String
    Select Case shadda
    Case 2: newmetin = SAF(metin, 0, 2)
    Case Else: newmetin = SAF(metin, 0)
    End Select
    result = SAF(newmetin, ayrac) & ChrW(10)
    IKSIR = newmetin
    For produce = 1 To Len(newmetin) - 1
        If Len(newmetin) / 2 = DUZLE(Len(newmetin) / 2) Then LengthDouble = 1
        IKSIR = ""
        For counter = 1 To DUZLE(Len(newmetin) / 2)
            inverse = Len(newmetin) + 1 - counter
            IKSIR = IKSIR & Mid(newmetin, inverse, 1)
            IKSIR = IKSIR & Mid(newmetin, counter, 1)
        Next counter
        If LengthDouble <> 1 Then IKSIR = IKSIR & Mid(newmetin, DUZLE(Len(newmetin) / 2) + 1, 1)
        TEKSIR = result & SAF(IKSIR, ayrac) & ChrW(10)
        result = TEKSIR
        newmetin = SAF(IKSIR, 0)
    Next produce
End Function
Function TESBIH(ByVal zkr As Variant, minimum As Double, boncuk As Double, bolum As Double) As String
    Dim outp        As String
    Dim turn, part, rest(1) As Double
    zkr = CDbl(zkr): If zkr < minimum Then zkr = zkr * zkr
    turn = DUZLE(zkr / boncuk)
    rest(0) = (zkr - (turn * boncuk))
    part = DUZLE(rest(0) / bolum)
    rest(1) = (rest(0) - (part * bolum))
    If turn > 0 Then outp = ChrW(91) & turn & " tur" & ChrW(93)
    If part > 0 Then outp = outp & ChrW(91) & part & ChrW(88) & bolum & ChrW(93)
    If rest(1) > 0 Then outp = outp & ChrW(91) & rest(1) & " kalan" & ChrW(93)
    TESBIH = outp
End Function
Function UNSUR(ByVal metin As String, Optional otabiat As Variant, Optional otype As Variant, Optional shadda As Integer, Optional guide As Variant) As Variant
    Dim counter, adet As Integer
    Dim choosen, liste As String
    For counter = 1 To Len(metin)
        choosen = Mid(metin, counter, 1)
        If shadda = 2 Then
            C = 1
            If choosen = ChrW(1617) Then
                Do
                    choosen = Mid(metin, counter - C, 1)
                    C = C + 1
                Loop Until SAF(CStr(choosen), "") <> ""
            Else
            End If
        End If
        Select Case UCase(choosen)
        Case ChrW(1575), ChrW(1576), ChrW(1580), ChrW(1587), ChrW(1589), ChrW(1585), ChrW(1582), ChrW(1607), ChrW(1586), ChrW(1581), ChrW(1591), ChrW(1610), ChrW(1740), ChrW(1604), ChrW(1577), ChrW(1579), ChrW(1583), ChrW(1603), ChrW(1593), ChrW(1601), ChrW(1602), ChrW(1588), ChrW(1590), ChrW(1608), ChrW(1605), ChrW(1606), ChrW(1578), ChrW(1584), ChrW(1592), ChrW(1594): selected = selected & choosen
        Case ChrW(1571), ChrW(1573), ChrW(1570), ChrW(1569), ChrW(1609): selected = selected & ChrW(1575)
        Case ChrW(1572): selected = selected & ChrW(1608) & ChrW(1575)
        Case ChrW(1728): selected = selected & ChrW(1607) & ChrW(1610)
        Case ChrW(1574): selected = selected & ChrW(1610) & ChrW(1575)
        Case ChrW(1488), ChrW(1489), ChrW(1490), ChrW(1491), ChrW(1492), ChrW(1493), ChrW(1494), ChrW(1495), ChrW(1496), ChrW(1497), ChrW(1499), ChrW(1500), ChrW(1502), ChrW(1504), ChrW(1505), ChrW(1506), ChrW(1508), ChrW(1510), ChrW(1511), ChrW(1512), ChrW(1513), ChrW(1514), ChrW(1501), ChrW(1503), ChrW(1507), ChrW(1509), ChrW(1498): selected = selected & choosen
        Case "A", "B", "C", "Ç", "D", "E", "F", "G", "Ğ", "H", "I", "İ", "J", "K", "L", "M", "N", "O", "Ö", "P", "R", "S", "Ş", "T", "U", "Ü", "V", "Y", "Z": selected = selected & UCase(choosen)
        End Select
    Next counter
    Select Case guide
    Case "TURKCE", 0
        Select Case otype
        Case "fire", "ateş", 0
            For counter = 1 To Len(selected)
                choosen = Mid(selected, counter, 1)
                Select Case choosen
                Case "A", "D", "Ğ", "J", "N", "R", "U", "Z"
                    liste = liste & choosen & ChrW(32)
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "air", "hava", 1
            For counter = 1 To Len(selected)
                choosen = Mid(selected, counter, 1)
                Select Case choosen
                Case "B", "E", "H", "K", "O", "S", "Ü"
                    liste = liste & choosen & ChrW(32)
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "water", "su", 2
            For counter = 1 To Len(selected)
                choosen = Mid(selected, counter, 1)
                Select Case choosen
                Case "C", "F", "I", "L", "Ö", "Ş", "V"
                    liste = liste & choosen & ChrW(32)
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "earth", "toprak", 3
            For counter = 1 To Len(selected)
                choosen = Mid(selected, counter, 1)
                Select Case choosen
                Case "Ç", "G", "İ", "M", "P", "T", "Y"
                    liste = liste & choosen & ChrW(32)
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        End Select
    Case "ARABI", 1
        Select Case otype
        Case "fire", "ateş", 0
            For counter = 1 To Len(selected)
                choosen = Mid(selected, counter, 1)
                Select Case choosen
                Case ChrW(1575), ChrW(1607), ChrW(1591), ChrW(1605), ChrW(1601), ChrW(1588), ChrW(1584)
                    liste = liste & choosen & ChrW(32)
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "air", "hava", 1
            For counter = 1 To Len(selected)
                choosen = Mid(selected, counter, 1)
                Select Case choosen
                Case ChrW(1583), ChrW(1581), ChrW(1604), ChrW(1593), ChrW(1585), ChrW(1582), ChrW(1594)
                    liste = liste & choosen & ChrW(32)
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "water", "su", 2
            For counter = 1 To Len(selected)
                choosen = Mid(selected, counter, 1)
                Select Case choosen
                Case ChrW(1576), ChrW(1608), ChrW(1606), ChrW(1610), ChrW(1740), ChrW(1589), ChrW(1578), ChrW(1590)
                    liste = liste & choosen & ChrW(32)
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "earth", "toprak", 3
            For counter = 1 To Len(selected)
                choosen = Mid(selected, counter, 1)
                Select Case choosen
                Case ChrW(1580), ChrW(1586), ChrW(1603), ChrW(1587), ChrW(1602), ChrW(1579), ChrW(1592)
                    liste = liste & choosen & ChrW(32)
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        End Select
    Case "BUNI", 2
        Select Case otype
        Case "fire", "ateş", 0
            For counter = 1 To Len(selected)
                choosen = Mid(selected, counter, 1)
                Select Case choosen
                Case ChrW(1575), ChrW(1607), ChrW(1591), ChrW(1605), ChrW(1601), ChrW(1588), ChrW(1584)
                    liste = liste & choosen & ChrW(32)
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "air", "hava", 1
            For counter = 1 To Len(selected)
                choosen = Mid(selected, counter, 1)
                Select Case choosen
                Case ChrW(1576), ChrW(1608), ChrW(1606), ChrW(1610), ChrW(1740), ChrW(1589), ChrW(1578), ChrW(1590)
                    liste = liste & choosen & ChrW(32)
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "water", "su", 2
            For counter = 1 To Len(selected)
                choosen = Mid(selected, counter, 1)
                Select Case choosen
                Case ChrW(1583), ChrW(1581), ChrW(1604), ChrW(1593), ChrW(1585), ChrW(1582), ChrW(1594)
                    liste = liste & choosen & ChrW(32)
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "earth", "toprak", 3
            For counter = 1 To Len(selected)
                choosen = Mid(selected, counter, 1)
                Select Case choosen
                Case ChrW(1580), ChrW(1586), ChrW(1603), ChrW(1587), ChrW(1602), ChrW(1579), ChrW(1592)
                    liste = liste & choosen & ChrW(32)
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        End Select
    Case "HUSEYNI", 3
        Select Case otype
        Case "fire", "ateş", 0
            For counter = 1 To Len(selected)
                choosen = Mid(selected, counter, 1)
                Select Case choosen
                Case ChrW(1575), ChrW(1607), ChrW(1591), ChrW(1605), ChrW(1601), ChrW(1588), ChrW(1584)
                    liste = liste & choosen & ChrW(32)
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "air", "hava", 1
            For counter = 1 To Len(selected)
                choosen = Mid(selected, counter, 1)
                Select Case choosen
                Case ChrW(1580), ChrW(1586), ChrW(1603), ChrW(1587), ChrW(1602), ChrW(1579), ChrW(1592)
                    liste = liste & choosen & ChrW(32)
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "water", "su", 2
            For counter = 1 To Len(selected)
                choosen = Mid(selected, counter, 1)
                Select Case choosen
                Case ChrW(1583), ChrW(1581), ChrW(1604), ChrW(1593), ChrW(1585), ChrW(1582), ChrW(1594)
                    liste = liste & choosen & ChrW(32)
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "earth", "toprak", 3
            For counter = 1 To Len(selected)
                choosen = Mid(selected, counter, 1)
                Select Case choosen
                Case ChrW(1576), ChrW(1608), ChrW(1610), ChrW(1740), ChrW(1606), ChrW(1589), ChrW(1578), ChrW(1590)
                    liste = liste & choosen & ChrW(32)
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        End Select
    Case "HEBREW", 4
        Select Case otype
        Case "fire", "ateş", 0
            For counter = 1 To Len(selected)
                choosen = Mid(selected, counter, 1)
                Select Case choosen
                Case ChrW(1488), ChrW(1492), ChrW(1496), ChrW(1502), ChrW(1508), ChrW(1513), ChrW(1507)
                    liste = liste & choosen & ChrW(32)
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "air", "hava", 1
            For counter = 1 To Len(selected)
                choosen = Mid(selected, counter, 1)
                Select Case choosen
                Case ChrW(1489), ChrW(1493), ChrW(1497), ChrW(1504), ChrW(1510), ChrW(1514), ChrW(1509)
                    liste = liste & choosen & ChrW(32)
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "water", "su", 2
            For counter = 1 To Len(selected)
                choosen = Mid(selected, counter, 1)
                Select Case choosen
                Case ChrW(1490), ChrW(1494), ChrW(1499), ChrW(1505), ChrW(1511), ChrW(1501), ChrW(1498)
                    liste = liste & choosen & ChrW(32)
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "earth", "toprak", 3
            For counter = 1 To Len(selected)
                choosen = Mid(selected, counter, 1)
                Select Case choosen
                Case ChrW(1491), ChrW(1495), ChrW(1500), ChrW(1506), ChrW(1512), ChrW(1503)
                    liste = liste & choosen & ChrW(32)
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        End Select
    Case Else
        Select Case otype
        Case "fire", "ateş", 0
            For counter = 1 To Len(selected)
                choosen = Mid(selected, counter, 1)
                Select Case choosen
                Case ChrW(1575), ChrW(1576), ChrW(1580), ChrW(1587), ChrW(1589), ChrW(1585), ChrW(1582)
                    liste = liste & choosen & ChrW(32)
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "air", "hava", 1
            For counter = 1 To Len(selected)
                choosen = Mid(selected, counter, 1)
                Select Case choosen
                Case ChrW(1607), ChrW(1586), ChrW(1581), ChrW(1591), ChrW(1610), ChrW(1604), ChrW(1577), ChrW(1579), ChrW(1740)
                    liste = liste & choosen & ChrW(32)
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "water", "su", 2
            For counter = 1 To Len(selected)
                choosen = Mid(selected, counter, 1)
                Select Case choosen
                Case ChrW(1583), ChrW(1603), ChrW(1593), ChrW(1601), ChrW(1602), ChrW(1588), ChrW(1590)
                    liste = liste & choosen & ChrW(32)
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        Case "earth", "toprak", 3
            For counter = 1 To Len(selected)
                choosen = Mid(selected, counter, 1)
                Select Case choosen
                Case ChrW(1608), ChrW(1605), ChrW(1606), ChrW(1578), ChrW(1584), ChrW(1592), ChrW(1594)
                    liste = liste & choosen & ChrW(32)
                    adet = adet + 1
                Case Else
                End Select
            Next counter
        End Select
    End Select
    Select Case otabiat
    Case "liste", "list", 1: UNSUR = liste
    Case "adet", "amount", 0: UNSUR = adet
    End Select
End Function
Function WORDBYWORD(ByVal klmmetin As String, Optional tablo As Integer, Optional shadda As Integer = 1, Optional detail As Integer) As String
    'Bu fonksiyonu kullandığınız hücreler için metin Kaydır seçeneğini etkinleştirirseniz daha düzgün çalışıyor, parametreleri ABJAD() fonksiyonuyla aynı'
    Dim content, word As String
    content = ""
    word = ""
    klmmetin = klmmetin & ChrW(32)
    For counter = 1 To Len(klmmetin)
        klmchoosen = Mid(klmmetin, counter, 1)
        word = word + klmchoosen
        Select Case klmchoosen
        Case ChrW(32), ChrW(10)
            calculation = ChrW(40) & ABJAD(word, tablo, shadda, detail) & ChrW(41) & klmchoosen
            If calculation <> "(0) " Then content = content & word & ALTAYAZ(calculation)
            word = ""
            calculation = ""
        Case Else
        End Select
    Next
    WORDBYWORD = content
End Function

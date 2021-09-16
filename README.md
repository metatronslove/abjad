# abjad
Abjad Calculation Macro Commands To Use Custom Functions For Google Sheets And LibreOffice Calc

Function by function description of custom functions...

###    abjad("text to find abjad value"; abjad table code; shadda option; detail option)

####        "text to find abjad value"

            Arabic or Hebrew text or cell including that text.

####        abjad table code

            0 - 5 table codes for both Arabic and Hebrew
            
            0 Minimum Abjad
            1 Small Abjad (Cumel-i Kebir)
            2 Big Abjad
            3 Maximum Abjad
            4 Small Abjad + Letter Quantity
            5 Letter Quantity
            
            6 - 15 table codes for Arabic only
            
            6 Minimum Frequency Order
            7 Small Frequency Order
            8 Big Frequency Order
            9 Maximum Frequency Order
            10 Small Frequency Order + Letter Quantity
            11 Minimum Frequency Abjad
            12 Small Frequency Abjad
            13 Big Frequency Abjad
            14 Maximum Frequency Abjad
            15 Small Frequency Abjad + Letter Quantity

####        shadda option

            Unnecessary to give for texts does not contain shadda; in order to calculate 
            letters with shadda "double times" give 2, for single time give 1.

####        detail option

            giving this option is optional,  if you give  1  here, it lists every letter 
            with value according to given table code.
        
        
I will continue telling about other functions, soon.

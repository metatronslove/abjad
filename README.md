# abjad
Abjad Calculation Macro Commands To Use Custom Functions For Google Sheets And LibreOffice Calc

Function by function description of custom functions...

>###         abjad("text to find abjad value"; abjad table code; shadda option; detail option)

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
            
>###         bastet(“text or number”; number of bast repetitions; table code; shadda option; “language option”)

####        "text or number"

            If you enter Arabic or Hebrew text, you can set the abjad value according to the table
            code. uses it, even if you give a number directly, it does the operation.

####        number of bast repetitions

            In terms of the method-ul bast method, how many times will the spread operation be
            applied to the abjad value? you must indicate that how many times it will repeat.

####        table code

            You must specify according to which abjad table you will apply the method-ul bast
            method, this The table codes contain the table codes in the abjad() function, the table
            codes in the abjad() function the process of adding the amount of letters at the end of
            the spreading operations in addition to the codes You can use negative abjad table
            codes to avoid these negative codes. To keep in mind, it can be found by multiplying
            positive abjad codes by -1 and adding -1. we can say, for example, the number of
            letters for the small abjad whose abjad table code is 1 If it will not be added, you enter
            -2 as the table code.

####        shadda option

            You can enter 2 for double calculation and 1 for odd calculation, if there is no shadda.
            It is optional, not required.

####        "language option"

            "ARABIC", Hebrew if printing operations will be done according to Arabic numeral
            readings. If it is to be made according to the readings, it is entered as "HEBREW".            
        
        
I will continue telling about other functions, soon.

Instant Download : https://github.com/metatronslove/abjad/archive/refs/heads/main.zip

A google spread sheet pre-added some macro code sets is here:
    https://tinyurl.com/bl4nksh33t

[![https://github.com/metatronslove/abjad](https://github.com/metatronslove/abjad/blob/7558f99fd7b9300247d6cbea14448231987d1ebf/The%20Abjad%20Code%20Matrix.png)](https://github.com/metatronslove/abjad)
Abjad Calculation Macro Commands To Use Custom Functions For Google Sheets, LibreOffice Calc, MS Excel and Web Pages

NO CERTAIN CALCULATION IS OFFERED:
RECREATE YOUR OWN FUNCTIONS TO REACH ANY CERTAINITY !!!

[![Running LibreOffice Calc Macro On AndrOpen Office IS POSSIBLE](https://img.youtube.com/vi/H1VLp7zScys/maxresdefault.jpg)](https://youtu.be/H1VLp7zScys "Running LibreOffice Calc Macro On AndrOpen Office IS POSSIBLE")

[![wordbyword() function](https://i.ytimg.com/vi/FWqtQP_V5u4/maxresdefault.jpg)](https://youtu.be/FWqtQP_V5u4 "wordbyword() function")

Function by function description of custom functions... 
***
### abjad("text to find abjad value"; abjad table code; shadda option; detail option)
### wordbyword("text to find abjad value"; abjad table code; shadda option; detail option)
***
>#### "text to find abjad value"

Arabic or Hebrew text or cell including that text.

>#### abjad table code

0 - 5 table codes for Arabic, Hebrew and Turkish
    
* 0 Minimum Abjad
* 1 Small Abjad (Cumel-i Kebir)
* 2 Big Abjad
* 3 Maximum Abjad
* 4 Small Abjad + Letter Quantity
* 5 Letter Quantity

6 - 35 table codes for Arabic only

![ebced tabloları - abjad tables](https://github.com/metatronslove/abjad/blob/1b8fb33d7611926237c2ee0c4fc884918030dc76/Ebced%20Tablosu%20Kodlar%C4%B1%20-%20Abjad%20Table%20Codes.jpg)

>#### shadda option

It is not necessary to enter anything for texts which do not contain 
shadda; in order to calculate letters with shadda "double times" give 2,
for adding letters only once give 1.

>#### detail option

if you enter 1  here, it lists every letter with value according to
given table code.

[![https://tinyurl.com/t3stc0d3](https://i.ibb.co/Jp19XXS/Ekran-g-r-nt-s-2021-10-08-14-47-23.png)](https://tinyurl.com/t3stc0d3)

***
###  bastet(“text or number”; bast repetitions; table code; shadda option; “language”; detail option)
***
>#### "text or number"

If you enter Arabic, Hebrew or Turkish text, you can set the abjad value 
according to the table code. uses it, even if you give a number directly
it does the operation.

>#### bast repetitions

In terms of the usul-ul bast method, how many times will the spread
operation be applied to the abjad value? you must indicate that how many
times it will repeat.

>#### table code

You must specify according to which abjad table you will apply the
usul-ul bast method, this The table codes contain the table codes in the
abjad() function, the table codes in the abjad() function the process of
adding the amount of letters at the end of the spreading operations in 
addition to the codes You can use negative abjad table codes to use 
these tables. To keep in mind, it can be found by multiplying positive 
abjad codes by -1 and adding -1. we can say, for example, the number of
letters for the small abjad whose abjad table code is 1 If it will not 
be added, you enter -2 as the table code.

>#### shadda option

You can enter 2 for double calculation and 1 for odd calculation, if
there is no shadda. It is optional, not required.

>#### "language"

"ARABIC", if "bastet" operations will be done according to Arabic 
numeral readings. If it is to be made according to Hebrew the readings, 
it is entered as "HEBREW". If Turkish it is "TURKCE".
 
***
### nutket(number; language)
***

>#### number

Numbers between 0 - 999999999999999.

>#### language

"ARABIC" for arabic
"HEBREW" for hebrew
"TURKCE" for turkish

***
### unsur(text; output type code; element code; shadda option; guide option)
***

>#### text

Arabic or Hebrew text whose letters are to be sorted by element

>#### output type code

* 0 letter quantity
* 1 letter list

>#### element code

* 0 fire
* 1 air
* 2 water
* 3 earth

>#### shadda option

* 1-letters are counted once
* 2-shadda letters count twice

>#### guide

* 0 "TURKCE" elements for TURKISH latin alphabet
* 1 "ARABI" elements according to Muhiyyiddin Ibn Arabi
* 2 "BUNI" elements according to Ahmed Al Buni
* 3 "HUSEYNI" elements according to Suleyman Al Huseyni
* 4 "HEBREW" elements for HEBREW alphabet
* not given or anything else "Regular guiding"

***
### saf(text; separator; shadda option)
***

>#### text

From the characters that do not contribute to the abjad analysis and 
from the actions including the shaddas. Arabic or Hebrew text to be 
purified

>#### separator

If 0 is entered, it purifies the text and the spaces stay where they 
were in the original. If " " is entered, the letters that may be 
included in the analysis are displayed with spaces between them, lists

If necessary, other characters can be entered instead of spaces.

>#### shadda option

When shadda is entered as 2; doubles letters with shadda.

***
### numbers2arab(cell to convert numbers)
***

>#### cell to convert numbers

Numbers consisting of Arabic numerals [0-9] are in the entered cell, 
these are Indian numerals. turns into It is very useful when spreading 
formulas.

[![https://tinyurl.com/1v3fk](https://i.ibb.co/bK80X5H/Ekran-g-r-nt-s-2021-10-11-19-55-02.png)](https://tinyurl.com/1v3fk)

***
### huddam(calculated number; duty type specifier; method option)
***

>#### calculated number

The magic square has a number calculated for the tasked spiritual being 
required to work.

>#### duty type specifier

is the suffix selection for the task name to be generated

* If "ULVI" is entered, the suffix is ayeel.
* If "SUFLI" is entered, the suffix is yush.
* If "ŞER" is entered, the suffix will be teesh.

any other desired suffix in Arabic letters between double quotation 
marks for this token. Can be entered. For "ULVI" type for a reason due 
to our abjad calculation method The abjad value of the given ayil suffix
was calculated as 51, the amount of 41 given in the books. If you are 
targeting, instead of typing "ULVI", use the letter "hemze" or "alif" 
instead of the letter "ulvi". Enter your own type identifier using
Arabic Letters as string.

>#### method option

Now Method Option is the Saghir Abjad Table CODE for abjad() function,
gives the duty name depending to the table code entered as method.

1, 7 and 12 !

There is another mode for defined methods which Saghir Abjad Table CODE 
PLUS ONE (+1) is the method option; you may test the code to find out
the difference: 

2, 8 and 13 !

***
### rakamtopla(number to reduce; number of digits)
***

>#### number to reduce

any number

>#### number of digits

* If 3 is entered, add the digits of the number to be reduced until you 
reach a 3-digit number, continues to collect.
* If 2 is entered, 2 digits,
* If 1 is entered, it reduces to one digit!
* If 0 is entered, it lists all the stages it encounters in the 
reduction process.

***
### teksir("text to duplicate"; "separator"; shadda option)
***

>#### "text to duplicate"

For the Arabic or Hebrew text you enter here, type all letters from the 
beginning to the end. It allows the letters in the text to be reproduced
in different order by taking the space up to the area.

>#### "separator"

During the duplication process, I recommend using the " " space as a 
separator for visual purposes, Other characters can also be selected.

>#### "shadda option"

If entered 2, doubles letters under shadda.

***
### tesbeh(target number; minimum value; number of rosary beads; rosary sections)
***

>#### target number

If a number determined by the abjad calculation is to be reached while 
using the beaded rosary, it is entered here.
    
>#### minimum value

value to be calculated ie target numbers entered less than 25 when the 
minimum value of 25 is entered treats the SQUARE of the target number as
the target number.
    
>#### number of rosary beads

In order to give a recommendation for the use of the rosary, we need to 
give the characteristics of the rosary to be used. It's like entering 99
for a 99 rosary.

>#### rosary sections

In order to give the recommendation for the use of the rosary, we need 
to give the characteristics of the rosary to be used, It's like having 
33 sections for a 99 rosary.

[![https://t.me/+A54IrLGrHhowNzA8](https://github.com/metatronslove/abjad/blob/4536f1f4d24c4180f17ff972b8af5d27bdf86806/Telegram%20Room%20Abjad.png)](https://t.me/+A54IrLGrHhowNzA8)

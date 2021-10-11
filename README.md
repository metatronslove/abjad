# Join us here to participate these codes as open source, I believe in finding common points. Use Discussions tab.

# abjad https://github.com/metatronslove/abjad
Abjad Calculation Macro Commands To Use Custom Functions For Google Sheets And LibreOffice Calc

I DO NOT OFFER ANY CERTAIN CALCULATION; CHECK THE CODE AND RECREATE YOUR FUNCTIONS TO REACH
YOUR CERTAINITY !!!

[![wordbyword() function](https://i.ytimg.com/vi/FWqtQP_V5u4/maxresdefault.jpg)](https://youtu.be/FWqtQP_V5u4 "wordbyword() function")

Function by function description of custom functions... 
***
### abjad("text to find abjad value"; abjad table code; shadda option; detail option)
### wordbyword("text to find abjad value"; abjad table code; shadda option; detail option)
***
>#### "text to find abjad value"

Arabic or Hebrew text or cell including that text.

>#### abjad table code

0 - 5 table codes for both Arabic and Hebrew
    
* 0 Minimum Abjad
* 1 Small Abjad (Cumel-i Kebir)
* 2 Big Abjad
* 3 Maximum Abjad
* 4 Small Abjad + Letter Quantity
* 5 Letter Quantity

6 - 15 table codes for Arabic only

* 6 Minimum Frequency Order
* 7 Small Frequency Order
* 8 Big Frequency Order
* 9 Maximum Frequency Order
* 10 Small Frequency Order + Letter Quantity
* 11 Minimum Frequency Abjad
* 12 Small Frequency Abjad
* 13 Big Frequency Abjad
* 14 Maximum Frequency Abjad
* 15 Small Frequency Abjad + Letter Quantity

>#### shadda option

Unnecessary to give for texts do not contain shadda; in order to calculate 
letters with shadda "double times" give 2, for single time give 1.

>#### detail option

giving this option is optional,  if you give  1  here, it lists every letter 
with value according to given table code.
![https://www.hizliresim.com/7ba8muh](https://i.hizliresim.com/7ba8muh.png)

***
###  bastet(“text or number”; bast repetitions; table code; shadda option; “language”)
***
>#### "text or number"

If you enter Arabic or Hebrew text, you can set the abjad value according to the table
code. uses it, even if you give a number directly, it does the operation.

>#### bast repetitions

In terms of the method-ul bast method, how many times will the spread operation be
applied to the abjad value? you must indicate that how many times it will repeat.

>#### table code

You must specify according to which abjad table you will apply the usul-ul bast
method, this The table codes contain the table codes in the abjad() function, the table
codes in the abjad() function the process of adding the amount of letters at the end of
the spreading operations in addition to the codes You can use negative abjad table
codes to use these tables. To keep in mind, it can be found by multiplying
positive abjad codes by -1 and adding -1. we can say, for example, the number of
letters for the small abjad whose abjad table code is 1 If it will not be added, you enter
-2 as the table code.

>#### shadda option

You can enter 2 for double calculation and 1 for odd calculation, if there is no shadda.
It is optional, not required.

>#### "language"

"ARABIC", if "bastet" operations will be done according to Arabic numeral
readings. If it is to be made according to Hebrew the readings, it is entered as "HEBREW".
 
***
### unsur(text; output type code; element code; feature option)
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

***
### saf(text; separator)
***

>#### text

From the characters that do not contribute to the abjad analysis and from the actions
including the shaddas. Arabic or Hebrew text to be purified

>#### separator

If 0 is entered, it purifies the text and the spaces stay where they were in the original.
If " " is entered, the letters that may be included in the analysis are displayed with 
spaces between them, lists

If necessary, other characters can be entered instead of spaces.

***
### numbers2arab(cell to convert numbers)
***

>#### cell to convert numbers

Numbers consisting of Arabic numerals [0-9] are in the entered cell, these are Indian 
numerals. turns into It is very useful when spreading formulas.

![https://tinyurl.com/1v3fk](https://i.ibb.co/bK80X5H/Ekran-g-r-nt-s-2021-10-11-19-55-02.png)

***
### huddam(calculated number; duty type specifier; method option)
***

>#### calculated number

The magic square has a number calculated for the tasked spiritual being required to work.

>#### duty type specifier

is the suffix selection for the task name to be generated

* If "ULVI" is entered, the suffix is ayeel.
* If "SUFLI" is entered, the suffix is yush.
* If "ŞER" is entered, the suffix will be teesh.

any other desired suffix in Arabic letters between double quotation marks for this token.
can be entered. For "ULVI" type for a reason due to our abjad calculation method The abjad value
of the given ayil suffix was calculated as 51, the amount of 41 given in the books. If you are
targeting, instead of typing "ULVI", use the letter "hemze" or "alif" instead of the letter "ulvi".
Enter your own type identifier using

>#### method option

Optional if you want to produce a name with an abjad technique that fits the Cümel-i Kebir table.
do not enter this method option. When you enter 1 for this option, the Cümel-i Kebir table is
replaced with Experimental Frequency Abjad Table begins to produce names that fit the Abjad table.

***
### rakamtopla(number to reduce; number of digits)
***

>#### number to reduce

any number

>#### number of digits

* If 3 is entered, add the digits of the number to be reduced until you reach a 3-digit number.
continues to collect.
* If 2 is entered, 2 digits,
* If 1 is entered, it reduces to one digit!
* If 0 is entered, it lists all the stages it encounters in the reduction process.

***
### teksir("text to duplicate"; "separator")
***

>#### "text to duplicate"

For the Arabic or Hebrew text you enter here, type all letters from the beginning to the end.
It allows the letters in the text to be reproduced in different order by taking the space up to
the area.

>#### "separator"

During the duplication process, I recommend using the " " space as a separator for visual
purposes, Other characters can also be selected.

***
### tesbeh(target number; minimum value; number of rosary beads; rosary sections)
***

>#### target number

If a number determined by the abjad calculation is to be reached while using the beaded rosary, it
is entered here.
    
>#### minimum value

value to be calculated ie target numbers entered less than 25 when the minimum value of 25 is
entered treats the SQUARE of the target number as the target number.
    
>#### number of rosary beads

In order to give a recommendation for the use of the rosary, we need to give the characteristics
of the rosary to be used. It's like entering 99 for a 99 rosary.

>#### rosary sections

In order to give the recommendation for the use of the rosary, we need to give the characteristics
of the rosary to be used, It's like having 33 sections for a 99 rosary. 

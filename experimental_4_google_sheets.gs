function wordbyword(klmmetin, tablow, shaddaw, detailw) {
    if(klmmetin !== undefined) {
      var calculation = "";
      var content = "";
      var word = "";
      var klmchoosen;
      for (counter = 0; counter < klmmetin.length; counter++) {
          klmchoosen = klmmetin[counter];
          word = word + klmchoosen;
          switch (klmchoosen) {
            case " ":
            calculation = "(" + abjad(word, tablow, shaddaw, detailw) + ") ";
            content += word + altayaz(calculation);
            word = "";
            calculation = "";
            break;
            default:
            if (counter == klmmetin.length - 1) {
                calculation = "(" + abjad(word, tablow, shaddaw, detailw) + ") ";
                content += word + altayaz(calculation);
                word = "";
                calculation = "";
          }
        }
      }
    }
    return content;
}
function altayaz(girdi) {
    var ss, counter, choosenalta;
    girdi = girdi.toString();
    ss = "";
    for (counter = 0; counter < girdi.length; counter++) {
        choosenalta = girdi[counter - 1];
        switch (choosenalta) {
            case "1":
                ss = ss + "₁";
                break;
            case "2":
                ss = ss + "₂";
                break;
            case "3":
                ss = ss + "₃";
                break;
            case "4":
                ss = ss + "₄";
                break;
            case "5":
                ss = ss + "₅";
                break;
            case "6":
                ss = ss + "₆";
                break;
            case "7":
                ss = ss + "₇";
                break;
            case "8":
                ss = ss + "₈";
                break;
            case "9":
                ss = ss + "₉";
                break;
            case "0":
                ss = ss + "₀";
                break;
            case " ":
                ss = ss + " ";
                break;
            case "+":
                ss = ss + "₊";
                break;
            case "-":
                ss = ss + "₋";
                break;
            case "=":
                ss = ss + "₌";
                break;
            case "(":
                ss = ss + "₍";
                break;
            case "[":
                ss = ss + "₍";
                break;
            case ")":
                ss = ss + "₎";
                break;
            case "]":
                ss = ss + "₎";
                break;
            case undefined:
                break;
            default:
                ss = ss + choosenalta;
        }
    }
    return ss;
}

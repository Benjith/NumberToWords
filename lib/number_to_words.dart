library number_to_words;

enum Locale {
  en_ind,
  ml,
}

class NumberToWord {
  ///Specify output language and digit that to convert
  ///Locale.en_ind is meant Indian English
  ///Locale.ml is meant Malayalam
  String convert(Locale locale, int digit) {
    final int number = digit;
    String numberString = '0000000000' + number.toString();
    numberString =
        numberString.substring(number.toString().length, numberString.length);
    var str = '';

    switch (locale) {
      case Locale.en_ind:
        List<String> ones = [
          '',
          'one ',
          'two ',
          'three ',
          'four ',
          'five ',
          'six ',
          'seven ',
          'eight ',
          'nine ',
          'ten ',
          'eleven ',
          'twelve ',
          'thirteen ',
          'fourteen ',
          'fifteen ',
          'sixteen ',
          'seventeen ',
          'eighteen ',
          'nineteen '
        ];
        List<String> tens = [
          '',
          '',
          'twenty',
          'thirty',
          'forty',
          'fifty',
          'sixty',
          'seventy',
          'eighty',
          'ninety'
        ];

        str += (numberString[0]) != '0'
            ? ones[int.parse(numberString[0])] + 'hundred '
            : ''; //hundreds
        if ((int.parse('${numberString[1]}${numberString[2]}')) < 20 &&
            (int.parse('${numberString[1]}${numberString[2]}')) > 9) {
          str += ones[int.parse('${numberString[1]}${numberString[2]}')] +
              'crore ';
        } else {
          str += (numberString[1]) != '0'
              ? tens[int.parse(numberString[1])] + ' '
              : ''; //tens
          str += (numberString[2]) != '0'
              ? ones[int.parse(numberString[2])] + 'crore '
              : ''; //ones
          str += (numberString[1] != '0') && (numberString[2] == '0')
              ? 'crore '
              : '';
        }
        if ((int.parse('${numberString[3]}${numberString[4]}')) < 20 &&
            (int.parse('${numberString[3]}${numberString[4]}')) > 9) {
          str +=
              ones[int.parse('${numberString[3]}${numberString[4]}')] + 'lakh ';
        } else {
          str += (numberString[3]) != '0'
              ? tens[int.parse(numberString[3])] + ' '
              : ''; //tens
          str += (numberString[4]) != '0'
              ? ones[int.parse(numberString[4])] + 'lakh '
              : ''; //ones
          str += (numberString[3] != '0') && (numberString[4] == '0')
              ? 'lakh '
              : '';
        }
        if ((int.parse('${numberString[5]}${numberString[6]}')) < 20 &&
            (int.parse('${numberString[5]}${numberString[6]}')) > 9) {
          str += ones[int.parse('${numberString[5]}${numberString[6]}')] +
              'thousand ';
        } else {
          str += (numberString[5]) != '0'
              ? tens[int.parse(numberString[5])] + ' '
              : ''; //ten thousands
          str += (numberString[6]) != '0'
              ? ones[int.parse(numberString[6])] + 'thousand '
              : ''; //thousands
          str += (numberString[5] != '0') && (numberString[6] == '0')
              ? 'thousand '
              : '';
        }
        str += (numberString[7]) != '0'
            ? ones[int.parse(numberString[7])] + 'hundred '
            : ''; //hundreds
        if ((int.parse('${numberString[8]}${numberString[9]}')) < 20 &&
            (int.parse('${numberString[8]}${numberString[9]}')) > 9) {
          str += ones[int.parse('${numberString[8]}${numberString[9]}')];
        } else {
          str += (numberString[8]) != '0'
              ? tens[int.parse(numberString[8])] + ' '
              : ''; //tens
          str += (numberString[9]) != '0'
              ? ones[int.parse(numberString[9])]
              : ''; //ones
        }
        break;
      case Locale.ml:
        List<String> ones = [
          '',
          'ഒന്ന് ',
          'രണ്ട് ',
          'മൂന്ന് ',
          'നാല് ',
          'അഞ്ച് ',
          'ആറ് ',
          'ഏഴ് ',
          'എട്ട് ',
          'ഒൻപത് ',
          'പത്ത് ',
          'പതിനൊന്ന് ',
          'പത്രണ്ട് ',
          'പതിമൂന്ന് ',
          'പതിനാല് ',
          'പതിനഞ്ച് ',
          'പതിനാറ് ',
          'പതിനേഴ് ',
          'പതിനെട്ട് ',
          'പത്തൊൻപത് '
        ];
        List<String> tenMlSingle = [
          '',
          '',
          'ഇരുപത്',
          'മുപ്പത്',
          'നാൽപ്പത്',
          'അൻപത്',
          'അറുപത്',
          'എഴുപത്',
          'എൺപത്',
          'തൊണ്ണൂറ്'
        ];
        List<String> tens = [
          '',
          '',
          'ഇരുപത്തി',
          'മുപ്പത്തി',
          'നാൽപത്തി',
          'അൻപത്തി',
          'അറുപത്തി',
          'എഴുപത്തി',
          'എൺപത്തി',
          'തൊണ്ണൂറ്റി'
        ];
        List<String> hunderdsMl = [
          '',
          'നൂറ്റി',
          'ഇരുന്നൂറ്റി',
          'മുന്നൂറ്റി',
          'നാന്നൂറ്റി',
          'അഞ്ഞൂറ്റി',
          'അറുന്നൂറ്റി',
          'എഴുന്നൂറ്റി',
          'എണ്ണൂറ്റി',
          'തൊള്ളായിരത്തി'
        ];
        List<String> hunderdMlSingle = [
          '',
          'നൂറ്',
          'ഇരുന്നൂറ്',
          'മുന്നൂറ്',
          'നാന്നൂറ്',
          'അഞ്ഞൂറ്',
          'അറുനൂറ്',
          'എഴുനൂറ്',
          'എണ്ണൂറ്',
          'തൊള്ളായിരം'
        ];
        List<String> thousandsMl = [
          '',
          'ആയിരത്തി',
          'രണ്ടായിരത്തി',
          'മൂവായിരത്തി',
          'നാലായിരത്തി',
          'അയ്യായിരത്തി',
          'ആറായിരത്തി',
          'ഏഴായിരത്തി',
          'എണ്ണായിരത്തി',
          'ഒൻപതിനായിരത്തി',
          'പതിനായിരത്തി',
          'പതിനൊന്നായിരത്തി',
          'പത്രണ്ടായിരത്തി',
          'പതിമൂവായിരത്തി',
          'പതിനാലായിരത്തി',
          'പതിനഞ്ചായിരത്തി',
          'പതിനാറായിരത്തി',
          'പതിനേഴായിരത്തി',
          'പതിനെണ്ണായിരത്തി',
          'പത്തൊൻപതിനായിരത്തി',
        ];
        List<String> tenthousandsML = [
          '',
          '',
          'ഇരുപതിനായിരം',
          'മുപ്പതിനായിരം',
          'നാല്പതിനായിരം',
          'അൻപതിനായിരം',
          'അറുപതിനായിരം',
          'എഴുപതിനായിരം',
          'എൺപതിനായിരം',
          'തൊണ്ണൂറായിരം',
        ];
        List<String> thousandMlSingle = [
          '',
          'ആയിരം',
          'രണ്ടായിരം',
          'മൂവായിരം',
          'നാലായിരം',
          'അയ്യായിരം',
          'ആറായിരം',
          'ഏഴായിരം',
          'എണ്ണായിരം',
          'ഒമ്പതിനായിരം',
          'പതിനായിരം',
          'പതിനൊന്നായിരം',
          'പത്രണ്ടായിരം',
          'പതിമൂവായിരം',
          'പതിനാലായിരം',
          'പതിനയ്യായിരം',
          'പതിനാറായിരം',
          'പതിനേഴായിരം',
          'പതിനെണ്ണായിരം',
          'പത്തൊൻപതിനായിരം',
        ];

        // str += (numberString[0]) != '0'
        //     ? ones[int.parse(numberString[0])] + 'കോടി '
        //     : ''; //hundreds

        if ((int.parse('${numberString[1]}${numberString[2]}')) < 20 &&
            (int.parse('${numberString[1]}${numberString[2]}')) > 9) {
          str +=
              ones[int.parse('${numberString[1]}${numberString[2]}')] + 'കോടി ';
        } else {
          str += (numberString[1]) != '0'
              ? tens[int.parse(numberString[1])] + ' '
              : ''; //tens
          if (numberString[2] == '1' && numberString[1] == '0') {
            str += 'ഒരു കോടി ';
          } else {
            str += (numberString[2]) != '0'
                ? ones[int.parse(numberString[2])] + 'കോടി '
                : '';
          } //ones
          str += (numberString[1] != '0') && (numberString[2] == '0')
              ? 'കോടി '
              : '';
        }

        // lakh
        if ((int.parse('${numberString[3]}${numberString[4]}')) < 20 &&
            (int.parse('${numberString[3]}${numberString[4]}')) > 9) {
          str += ones[int.parse('${numberString[3]}${numberString[4]}')] + '';
        } else {
          str += (numberString[3]) != '0'
              ? tens[int.parse(numberString[3])] + ''
              : ''; //tens
          if (numberString[4] == '1' && numberString[3] == '0') {
            str += 'ഒരു ';
          } else {
            str += (numberString[4]) != '0'
                ? ones[int.parse(numberString[4])] + ''
                : '';
          }
          //ones
          str += (numberString[3] != '0') && (numberString[4] == '0') ? '' : '';
        }
        if ((numberString[3] != '0' || numberString[4] != '0') &&
            numberString[5] == '0' &&
            numberString[6] == '0' &&
            numberString[7] == '0' &&
            numberString[8] == '0' &&
            numberString[9] == '0') {
          str += "ലക്ഷം ";
        } else if ((numberString[3] != '0' || numberString[4] != '0')) {
          str += 'ലക്ഷത്തി ';
        }

        //10000-1000
        if ((int.parse('${numberString[5]}${numberString[6]}')) < 20 &&
            (int.parse('${numberString[5]}${numberString[6]}')) > 9) {
          if (numberString[5] != '0' &&
              (numberString[6] != '0' || numberString[6] == '0') &&
              numberString[7] == '0' &&
              numberString[8] == '0' &&
              numberString[9] == '0') {
            str += thousandMlSingle[
                int.parse('${numberString[5]}${numberString[6]}')];
          } else {
            str +=
                thousandsMl[int.parse('${numberString[5]}${numberString[6]}')] +
                    ' ';
          }
        } else if ((int.parse('${numberString[5]}${numberString[6]}')) > 19 &&
            (int.parse('${numberString[5]}${numberString[6]}')) < 100) {
          if (numberString[5] != '0' &&
              numberString[6] == '0' &&
              numberString[7] == '0' &&
              numberString[8] == '0' &&
              numberString[9] == '0') {
            str += tenthousandsML[int.parse('${numberString[5]}')];
          } else if (numberString[5] != '0' &&
              numberString[6] != '0' &&
              numberString[7] == '0' &&
              numberString[8] == '0' &&
              numberString[9] == '0') {
            numberString[6] == '1'
                ? str +=
                    tens[int.parse('${numberString[5]}')] + ' ' + 'ഒന്നായിരം'
                : str += tens[int.parse('${numberString[5]}')] +
                    ' ' +
                    thousandMlSingle[int.parse('${numberString[6]}')] +
                    ' ';
            // str +=
            //     tens[int.parse('${numberString[5]}')] +' '+ thousandMlSingle[int.parse('${numberString[6]}')];
          } else {
            numberString[6] == '1'
                ? str += tens[int.parse('${numberString[5]}')] +
                    ' ' +
                    'ഒന്നായിരത്തി '
                : str += tens[int.parse('${numberString[5]}')] +
                    ' ' +
                    thousandsMl[int.parse('${numberString[6]}')] +
                    ' ';
          }
        } else {
          if (numberString[6] != '0' &&
              numberString[7] == '0' &&
              numberString[8] == '0' &&
              numberString[9] == '0') {
            str += thousandMlSingle[int.parse(numberString[6])];
          } else {
            str += (numberString[5]) != '0'
                ? thousandsMl[int.parse(numberString[5])] + ' '
                : ''; //ten thousands
            str += (numberString[6]) != '0'
                ? thousandsMl[int.parse(numberString[6])] + ' '
                : ''; //thousands
          }
        }

        //100
        if (numberString[7] != '0' &&
            numberString[8] == '0' &&
            numberString[9] == '0') {
          str += hunderdMlSingle[int.parse(numberString[7])];
        } else {
          str += (numberString[7]) != '0'
              ? hunderdsMl[int.parse(numberString[7])] + ' '
              : ''; //hundreds
        }
        //10
        if ((int.parse('${numberString[8]}${numberString[9]}')) < 20 &&
            (int.parse('${numberString[8]}${numberString[9]}')) > 9) {
          str += ones[int.parse('${numberString[8]}${numberString[9]}')];
        } else {
          if ((numberString[8] != '0') && (numberString[9] == '0')) {
            str += tenMlSingle[int.parse(numberString[8])];
          } else {
            str += (numberString[8]) != '0'
                ? tens[int.parse(numberString[8])] + ' '
                : ''; //tens
            str += (numberString[9]) != '0'
                ? ones[int.parse(numberString[9])]
                : ''; //ones
          }
        }
        break;
      default:
        str += 'not acceptable format';
    }

    return str;
  }
}

import 'package:number_to_words/number_to_words.dart';

void main(List<String> arguments) {
  print(NumberToWord().convert(Locale.ml, 21)); //ഇരുപത്തി ഒന്ന്
  print(NumberToWord().convert(Locale.ml, 10)); //പത്ത്
  print(NumberToWord().convert(Locale.ml, 1000)); //ആയിരം

  print(NumberToWord().convert(Locale.en_ind, 1000)); //thousand
  print(NumberToWord().convert(Locale.en_ind, 100)); //hundred
  print(NumberToWord().convert(Locale.en_ind, 10)); //ten
}

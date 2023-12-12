# number_to_words

 API convert number to words by `localeID`. Now only support English And Malayalam. please contribute  .

## Usage
To use this plugin, add number_to_words as a [dependency in your pubspec.yaml](https://flutter.io/docs/development/packages-and-plugins/using-packages) file.

## Example

```
import 'package:number_to_words/number_to_words.dart';

void main() {

   print(NumberToWord().convert(Locale.ml, 21)); //ഇരുപത്തിയൊന്ന്
   print(NumberToWord().convert(Locale.ml, 10)); //പത്ത്
   print(NumberToWord().convert(Locale.ml, 1000)); //ആയിരം
   print(NumberToWord().convert(Locale.en_ind, 1000)); //thousand
   print(NumberToWord().convert(Locale.en_ind, 100)); //hundred
   print(NumberToWord().convert(Locale.en_ind, 10)); //ten
}

```

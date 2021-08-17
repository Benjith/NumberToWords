import 'package:flutter_test/flutter_test.dart';

import 'package:number_to_words/number_to_words.dart';

void main() {
  test('adds one to input values', () {
    final numberToWord = NumberToWord();
    expect(numberToWord.convert(Locale.ml, 2), 'two');
    expect(numberToWord.convert(Locale.en_ind, 5), 'five');
  });
}

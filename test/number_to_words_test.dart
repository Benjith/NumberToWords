import 'package:flutter_test/flutter_test.dart';

import 'package:number_to_words/number_to_words.dart';

void main() {
  test('adds one to input values', () {
    final numberToWord = NumberToWord();
    expect(numberToWord.convert('en-in',2), 'two');
    expect(numberToWord.convert('en-in',5), 'five');
  });
}

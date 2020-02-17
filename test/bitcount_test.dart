import 'dart:math';

import 'package:bitcount/bitcount.dart';
import 'package:test/test.dart';

void main() {
  test('physics (the day this fails our JS numbers detection is broken)', () {
    expect(1 << 32, anyOf(0, 1));
  }, testOn: 'js');

  group('.bitCount()', () {
    void checkBitCount(int number, int expectedCount) {
      test('$expectedCount for $number', () {
        expect(number.bitCount(), expectedCount);
      });
    }

    group('returns', () {
      for (var shift = 0; shift < 53; shift += 1) {
        checkBitCount(_shiftLeft(1, shift), 1);
        checkBitCount(_shiftLeft(1, shift) - 1, shift);
      }
    });

    group('returns', () {
      for (var shift = 53; shift < 64; shift += 1) {
        checkBitCount(_shiftLeft(1, shift), 1);
        checkBitCount(_shiftLeft(1, shift) - 1, shift);
      }
    }, testOn: '!js'); // see .bitCount() docs
  });
}

int _shiftLeft(int n, int shift) {
  return n * pow(2, shift);
}

import 'package:bitcount/bitcount.dart';

void main() {
  print('one bits in 32: ${32.bitCount()}'); // 1
  print('one bits in 31: ${(32 - 1).bitCount()}'); // 5
}

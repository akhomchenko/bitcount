import 'package:bitcount/src/common.dart';

int bitCount(int n) {
  return bitCount32(n >> 32) + bitCount32(n);
}

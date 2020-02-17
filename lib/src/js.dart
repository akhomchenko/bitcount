import 'package:bitcount/src/common.dart';

const _30Bits = (1 << 30);

int bitCount(int n) {
  var lo30Bits = n & (_30Bits - 1);
  var hi22Bits = (n - lo30Bits) ~/ _30Bits;
  return bitCount32(lo30Bits) + bitCount32(hi22Bits);
}

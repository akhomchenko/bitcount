import 'package:bitcount/src/native.dart' as native;
import 'package:bitcount/src/js.dart' as js;

//// dart2js will truncate number with more than 31 bits
//// second or operand is a fallback in case dart2js implementation changes:
//// JS bitwise operators work only with lower 32 bits
const _isJs = (1 << 32) == 0 || (1 << 32) == 1;
const impl = _isJs ? js.bitCount : native.bitCount;

/// Extends [int] with [bitCount] method that returns number of one-bits.
extension BitCountInt on int {
  /// Returns number of one-bits.
  ///
  /// NOTE: in JS is safe to use with up to 53 bits. See [int].
  int bitCount() {
    return impl(this);
  }
}

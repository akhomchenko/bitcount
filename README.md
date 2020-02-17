bitcount
===

## Description

More or less fast bit count (also known as popcount) extension for default `int`.

### How to use

```dart
import 'package:bitcount/bitcount.dart';

void main() {
  print(32.bitCount());        // 1
  print((32 - 1).bitCount());  // 5
}
```

## License

MIT

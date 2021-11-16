import 'package:bitcount/bitcount.dart';
import 'package:benchmark_harness/benchmark_harness.dart';

class BitCountBenchmark extends BenchmarkBase {
  const BitCountBenchmark() : super('BitCount');

  static void main() {
    BitCountBenchmark().report();
  }

  @override
  void exercise() {
    for (var i = 0; i < 100000; i++) {
      run();
    }
  }

  @override
  void run() {
    ((1 << 42) - 1).bitCount();
  }
}

void main() {
  BitCountBenchmark.main();
}

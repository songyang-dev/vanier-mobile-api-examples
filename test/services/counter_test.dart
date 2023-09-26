import 'package:api_examples/services/counter.dart';
import 'package:test/test.dart';

void main() {
  test("Test the counter", () {
    final counter = Counter();

    // from 0 to 1
    counter.increment();

    expect(counter.value, 8);
  });
}

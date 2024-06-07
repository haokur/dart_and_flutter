import 'package:cli/cli.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    print("calculate run");
    expect(calculate(), 42);
  });
}

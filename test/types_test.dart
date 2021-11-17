import 'package:test/test.dart';

void main() {
  test('inference', () {
    // You van use ver for inference in mutable variables
    var thisIsAnInt = 10;
    var thisIsADouble = 10.0;
    expect(thisIsAnInt.runtimeType, int);
    expect(thisIsADouble.runtimeType, double);
  });
  test('dynamic typing', () {
    // Dynamic typing is available for dart, so dynamic variables can
    // change their type during runtime
    dynamic dynamicVariable = 10;
    expect(dynamicVariable.runtimeType, int);
    dynamicVariable = '10';
    expect(dynamicVariable.runtimeType, String);
  });
  test('null-safety', () {
    // By default variables doesn't accept null values, for that we need to
    // define the type with '?' at the end
    int? canBeNull;
    int canNotBeNUll = 10;
    try {
       // '!' forces a nullable type cast to non-null type
      int canNotBeNUll = canBeNull!;
    } on TypeError catch (e) {
      print(e.toString());
    }
  });
}

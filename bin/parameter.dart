// Positional, Optional Named and Required Named
void function1(int positional, {int? optionalNamed, required int requiredNamed}) {}

// Positional and Optional Positional
void function2(int positional, [int? optional]) {}

void main(List<String> arguments) {
  // Calling functions without sending optional attributes
  function1(1, requiredNamed: 1);
  function2(1);
}

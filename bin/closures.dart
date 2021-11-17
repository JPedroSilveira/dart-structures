// Receives an integer value and return a function that sum
// this value with another one
Function partialSum(int a) {
  return (int b) {
    return a + b; // Keeps "a" reference from outside scope
  };
}

void main(List<String> arguments) {
  final pSum = partialSum(10);
  print(pSum(20));
}


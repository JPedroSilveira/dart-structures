enum Grade { A, B, C, D, F }

// Create an extension to add a function to Grade enumerator
extension on Grade {
  bool isGood() {
    switch (this) {
      case Grade.A:
      case Grade.B:
      case Grade.C:
        return true;
      case Grade.D:
      case Grade.F:
        return false;
    }
  }
}

// Calls extension method using only Grade enumerator
void main(List<String> arguments) {
  final a = Grade.A;
  print(a.isGood());
}


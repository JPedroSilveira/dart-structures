class Person {
  // Attribute non-null that is defined later (late)
  late String _name;

  // Getter that will retrieve the name value
  String get name => _name;

  // Setter that will save only valid names
  set name(String name) {
    if (_isValidName(name)) {
      _name = name;
    } else {
      throw Exception('Invalid name');
    }
  }

  Person(String personName) {
    // Constructor can also use the setter
    name = personName;
  }

  bool _isValidName(String name) {
    return name.isNotEmpty;
  }
}


void main(List<String> arguments) {
  // Try with an empty string to see the error
  final person = Person('Joao');
  print(person.name);
}



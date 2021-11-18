const UNIT_PRICE = 2.50;

class Person {
  // It's a final variable but the value is assigned later (late)
  late final String name;

  // We are declaring the value of name inside constructor
  Person({required String name}) {
    this.name = name;
  }
}

void main(List<String> arguments) {
  final person = Person(name: 'Joao');
  print(person.name);
}

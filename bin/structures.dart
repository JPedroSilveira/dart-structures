// Abstract class
abstract class Person {
  final String name;
  Person(this.name);
  void talk();
}

// Abstract class that will be implemented as a interface
abstract class Animal {
  void walk();
}

abstract class Thing {
  void doNothing();
}

// Class extending one abstract class (limit of 1) and implementing
// two abstract classes (unlimited)
class Student extends Person implements Animal, Thing {
  Student(String name) : super(name);
  @override
  void talk() {
    print('Hello!');
  }

  @override
  void walk() {
    print('Walking...');
  }

  @override
  void doNothing() {}
}

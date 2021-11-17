// Your Analizer should warn you that the private values are never used
// It's because they can only be used inside this file

// Private values are created using naming convention
class _PrivateClass {}

// Private variable that can be only accessed inside this file
int _privateVariable = 0;

// Private funcion
void _privateFunction() {}

class Class {
  // Private attribute
  int _privateAttribute = 0;
  int get attribute => _privateAttribute;
}



// Throw a exception
void throwException() {
  throw 'Exception'; // Any non-null object can be throw
}

void main(List<String> arguments) {
  try {
    throwException();
  } on String catch (e) { 
    // on let's us to treat a specific typed exception
    // catch let's us to catch the error value
    print('Choose a better type to throw exceptions!');
    print(e);
  } catch (e) {
    // catch without on will catch all types of errors
    // it's the same of:
    // on Object catch(e)
    print(e);
  }
}


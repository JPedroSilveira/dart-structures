// Mixin that adds a new field to other classes
mixin VersionMixin {
  int _version = 0;
  int get version => _version;

  void incrementVersion() {
    _version += 1;
  }
}

// A class that has the mixin features without inherit it from another class
class Program with VersionMixin {
  // ... code
  Program() {
    // We also can access the mixin attributes inside the Program class
    _version = 1;
  }
}

// We can use generics with mixin dependency
void updateVersion<V extends VersionMixin>(V versionedObject) {
  versionedObject.incrementVersion();
}

void main(List<String> arguments) {
  // We can access the mixin attribute inside Program in the same way
  // of any other Program attribute
  final program = Program();
  updateVersion(program);
  print(program.version);
}

void main(List<String> arguments) {
  // Manually typed mutable variable
  int mutableTyped = 10;

  // Typed mutable variable by inference
  var mutableInferred = 10;

  // Constant with value defined in compilation time
  const imutableConstantDefinedDuringCompilation = 10;

  // Final variable with imutable reference after first declaration
  // The late keyword let us defined the velue in another line (just on time)
  // The late keyword only works because final variables are defined during
  // runtime
  late final imutableReferenceDefinedDuringRuntime;

  void init() {
    imutableReferenceDefinedDuringRuntime = 10;
  }

  void printVariables() {
    print(mutableTyped);
    print(mutableInferred);
    print(imutableConstantDefinedDuringCompilation);
    print(imutableReferenceDefinedDuringRuntime);
  }

  // As we are using late in imutableReferenceDefinedDuringRuntime, and defining
  // the value inside init, if we call the printVariables first a runtime
  // error will happen because we are trying to access a not initialized late
  // variable
  init();
  printVariables();
}

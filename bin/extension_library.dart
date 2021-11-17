// Simulation of an external library class
class Exoplanet {
  // Temperature in Kelvin and we need it in celsius
  late double temperature;
  Exoplanet(this.temperature);
}

// Our extension over external class
extension on Exoplanet {
  // We can add new methods, including getter and setters
  // We can access the class original attributes and methods
  double get temperatureInCelsius => temperature - 273.15;
}

void main(List<String> arguments) {
  // Finally we can use the external type without change anything
  // and it will have the extension methods and attributes 
  final exoplanet = Exoplanet(0);
  print(exoplanet.temperatureInCelsius);
}


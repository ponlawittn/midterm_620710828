import 'dart:math';
class Convert {
  double celsiusToFahrenheit(double temp) {
    return temp * 1.8 + 32.0;
  }

  double celsiusToKelvin(double temp) {
    return temp + 273.15;
  }


  double fahrenheitToCelsius(double temp) {
    return (temp - 32.0) / 1.8;
  }

  double fahrenheitToKelvin(double temp) {
    return (temp + 459.67) * (5.0 / 9.0);
  }


  double kelvinToCelsius(double temp) {
    return temp - 273.15;
  }

  double kelvinToFahrenheit(double temp) {
    return temp * (9.0 / 5.0) - 459.67;
  }
}
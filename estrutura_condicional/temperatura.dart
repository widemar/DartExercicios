import 'dart:io';

void main(List<String> arguments) {
  try {
    stdout.write("Você vai digitar a temperatura em qual escala (C/F)? ");
    String temperatura = stdin.readLineSync()!.toUpperCase();

    if (temperatura == "F") {
      double celsius = conversaoParaCelsius();
      stdout.write(
          "Temperatura equivalente em Celsius: ${celsius.toStringAsFixed(2)}");
    } else if (temperatura == "C") {
      double fahrenheit = conversaoParaFahrenheit();
      stdout.write(
          "Temperatura equivalente em Fahrenheit: ${fahrenheit.toStringAsFixed(2)}");
    } else {
      stdout.write("Temperatura inválida");
    }
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

double conversaoParaCelsius() {
  stdout.write("Digite a temperatura em Fahrenheit: ");
  double fahrenheit = double.parse(stdin.readLineSync()!);
  return (fahrenheit - 32) / 1.8;
}

double conversaoParaFahrenheit() {
  stdout.write("Digite a temperatura em Celsius: ");
  double celsius = double.parse(stdin.readLineSync()!);
  return (celsius * 1.8) + 32;
}

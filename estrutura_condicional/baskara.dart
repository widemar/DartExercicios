import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  try {
    stdout.write("Coeficiente a: ");
    double coeficienteA = double.parse(stdin.readLineSync()!);
    stdout.write("Coeficiente b: ");
    double coeficienteB = double.parse(stdin.readLineSync()!);
    stdout.write("Coeficiente c: ");
    double coeficienteC = double.parse(stdin.readLineSync()!);

    double delta = pow(coeficienteB, 2) - 4 * coeficienteA * coeficienteC;
    double x1 = (-coeficienteB + sqrt(delta)) / (2 * coeficienteA);
    double x2 = (-coeficienteB - sqrt(delta)) / (2 * coeficienteA);

    if (delta < 0) {
      stdout.write("Esta equação não possui raízes reais.");
    } else {
      stdout.writeln("X1 = ${x1.toStringAsFixed(4)}");
      stdout.writeln("X2 = ${x2.toStringAsFixed(4)}");
    }
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

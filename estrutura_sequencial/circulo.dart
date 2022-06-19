import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  try {
    stdout.write("Digite o valor do raio do círculo: ");
    double raio = double.parse(stdin.readLineSync()!);

    double area = pi * pow(raio, 2);

    stdout.write("Area = ${area.toStringAsFixed(3)}".toUpperCase());
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

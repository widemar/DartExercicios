import 'dart:io';

void main(List<String> arguments) {
  try {
    stdout.write("Distância percorrida: ");
    double distanciaPercorrida = double.parse(stdin.readLineSync()!);
    stdout.write("Combustível gasto: ");
    double combustivelGasto = double.parse(stdin.readLineSync()!);

    double consumoMedio = distanciaPercorrida / combustivelGasto;

    stdout.write("Consumo médio = ${consumoMedio.toStringAsFixed(3)}");
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

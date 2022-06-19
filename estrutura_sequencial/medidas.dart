import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  try {
    stdout.write("Digite a medida A:");
    double medidaA = double.parse(stdin.readLineSync()!);
    stdout.write("Digite a medida B:");
    double medidaB = double.parse(stdin.readLineSync()!);
    stdout.write("Digite a medida C:");
    double medidaC = double.parse(stdin.readLineSync()!);

    double areaQuadrado = pow(medidaA, 2).toDouble();
    double areaTriangulo = medidaA * medidaB / 2;
    double areaTrapezio = (medidaA + medidaB) * medidaC / 2;

    stdout.writeln(
        "Area do quadrado = ${areaQuadrado.toStringAsFixed(4)}".toUpperCase());
    stdout.writeln("Area do triângulo = ${areaTriangulo.toStringAsFixed(4)}"
        .toUpperCase());
    stdout.writeln(
        "Area do trapézio = ${areaTrapezio.toStringAsFixed(4)}".toUpperCase());
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

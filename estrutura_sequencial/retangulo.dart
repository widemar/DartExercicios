import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  stdout.write("Base do retângulo: ");
  double base = double.tryParse(stdin.readLineSync()!) ?? 0.0;
  stdout.write("Altura do retângulo: ");
  double altura = double.tryParse(stdin.readLineSync()!) ?? 0.0;

  double area = base * altura;
  double perimetro = 2 * (base + altura);
  double diagonal = sqrt(pow(base, 2) + pow(altura, 2));

  stdout.writeln("Area = ${area.toStringAsFixed(4)}".toUpperCase());
  stdout.writeln("Perímetro = ${perimetro.toStringAsFixed(4)}".toUpperCase());
  stdout.writeln("Diagonal = ${diagonal.toStringAsFixed(4)}".toUpperCase());

}
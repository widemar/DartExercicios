import 'dart:io';

void main(List<String> arguments) {
  try {
    bool coordenadaValida = true;
    while (coordenadaValida) {
      stdout.writeln("Digite os valores das coordenadas X e Y:");
      int x = int.parse(stdin.readLineSync()!);
      int y = int.parse(stdin.readLineSync()!);

      if (x == 0 || y == 0) {
        coordenadaValida = false;
      } else if (x > 0 && y > 0) {
        stdout.writeln("Quadrante Q1".toUpperCase());
      } else if (x < 0 && y > 0) {
        stdout.writeln("Quadrante Q2".toUpperCase());
      } else if (x < 0 && y < 0) {
        stdout.writeln("Quadrante Q3".toUpperCase());
      } else if (x > 0 && y < 0) {
        stdout.writeln("Quadrante Q4".toUpperCase());
      }
    }
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

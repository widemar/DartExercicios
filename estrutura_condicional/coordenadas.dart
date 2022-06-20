import 'dart:io';

void main(List<String> arguments) {
  try {
    stdout.write("Valor de X: ");
    double x = double.parse(stdin.readLineSync()!);
    stdout.write("Valor de Y: ");
    double y = double.parse(stdin.readLineSync()!);

    String quadrante = encontrarQuadrante(x, y);

    stdout.write(quadrante);
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

String encontrarQuadrante(double x, double y) {
  if (x == 0 && y == 0) {
    return "Origem";
  } else if (x > 0 && y > 0) {
    return "Q1";
  } else if (x < 0 && y > 0) {
    return "Q2";
  } else if (x < 0 && y < 0) {
    return "Q3";
  } else if (x > 0 && y < 0) {
    return "Q4";
  } else if (x == 0) {
    return "Eixo Y";
  } else {
    return "Eixo X";
  }
}

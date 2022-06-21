import 'dart:io';

import 'entidades/Retangulo.dart';

void main(List<String> arguments) {
  try {
    stdout.writeln("Entre com a largura e altura do retângulo: ");
    double largura = double.parse(stdin.readLineSync()!);
    double altura = double.parse(stdin.readLineSync()!);

    Retangulo retangulo = Retangulo(largura, altura);
    stdout.write(retangulo);
    retangulo.area();
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}
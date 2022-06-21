import 'dart:io';

void main(List<String> arguments) {
  try {
    stdout.write("Quantos casos você vai digitar: ");
    int qtdCasos = int.parse(stdin.readLineSync()!);

    for (var i = 0; i < qtdCasos; ++i) {
      stdout.write("Entre com o numerador: ");
      int numerador = int.parse(stdin.readLineSync()!);
      stdout.write("Entre com o denominador: ");
      int denominador = int.parse(stdin.readLineSync()!);

      if (denominador == 0) {
        stdout.writeln("Divisão impossível".toUpperCase());
      } else {
        double divisao = numerador / denominador;
        stdout.writeln("Divisao = ${divisao.toStringAsFixed(2)}");
      }
    }
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

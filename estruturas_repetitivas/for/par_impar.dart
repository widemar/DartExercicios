import 'dart:io';

void main(List<String> arguments) {
  try {
    stdout.write("Quantos números você vai digitar: ");
    int qtdNumeros = int.parse(stdin.readLineSync()!);

    for (var i = 0; i < qtdNumeros; ++i) {
      stdout.write("Digite um número: ");
      int num = int.parse(stdin.readLineSync()!);
      if (num == 0) {
        stdout.writeln("Nulo".toUpperCase());
      } else if (num % 2 == 0 && num > 0) {
        stdout.writeln("Par Positivo".toUpperCase());
      } else if (num % 2 == 0 && num < 0) {
        stdout.writeln("Par Negativo".toUpperCase());
      } else if (num % 2 != 0 && num > 0) {
        stdout.writeln("Ímpar Positivo".toUpperCase());
      } else {
        stdout.writeln("Ímpar Negativo".toUpperCase());
      }
    }
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

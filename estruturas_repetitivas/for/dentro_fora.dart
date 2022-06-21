import 'dart:io';

void main(List<String> arguments) {
  try {
    stdout.write("Quantos números você vai digitar: ");
    int qtdNumeros = int.parse(stdin.readLineSync()!);

    int contaDentro = 0, contaFora = 0;
    for (var i = 0; i < qtdNumeros; ++i) {
      stdout.write("Digite um número: ");
      int num = int.parse(stdin.readLineSync()!);

      if (num >= 10 && num <= 20) {
        contaDentro++;
      } else {
        contaFora++;
      }
    }
    stdout.writeln("$contaDentro dentro".toUpperCase());
    stdout.writeln("$contaFora fora".toUpperCase());
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

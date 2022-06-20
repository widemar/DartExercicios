import 'dart:io';

void main(List<String> arguments) {
  try {
    bool idadeMaiorQueZero = true;
    int somaIdade = 0;
    int contador = 0;
    while (idadeMaiorQueZero) {
      stdout.write("Digite as idades: ");
      int idade = int.parse(stdin.readLineSync()!);
      if (idade < 0 && contador == 0) {
        stdout.writeln("Impossível calcular");
        idadeMaiorQueZero = false;
      } else if (idade < 0) {
        idadeMaiorQueZero = false;
      } else {
        somaIdade += idade;
        contador++;
      }
    }

    double media = somaIdade / contador;
    if (!media.isNaN) {
      stdout.write("Média = ${media.toStringAsFixed(2)}".toUpperCase());
    }
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

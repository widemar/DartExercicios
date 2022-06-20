import 'dart:io';

void main(List<String> arguments) {
  try {
    int contaNotaValida = 0;
    double soma = 0.0;
    while (contaNotaValida < 2) {
      stdout.write("Digite a primeira nota: ");
      double notaUm = double.parse(stdin.readLineSync()!);
      while (notaUm < 0 || notaUm > 10) {
        stdout.write("Valor inválido: Tente novamente: ");
        notaUm = double.parse(stdin.readLineSync()!);
      }
      stdout.write("Digite a segunda nota: ");
      double notaDois = double.parse(stdin.readLineSync()!);
      while (notaDois < 0 || notaDois > 10) {
        stdout.write("Valor inválido: Tente novamente: ");
        notaDois = double.parse(stdin.readLineSync()!);
      }
      soma = notaUm + notaDois;
      contaNotaValida += 2;
    }

    double media = soma / contaNotaValida;
    stdout.write("Media = ${media.toStringAsFixed(2)}");
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

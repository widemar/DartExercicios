import 'dart:io';

void main(List<String> arguments) {
  try {
    stdout.write("Digite a medida da glicose: ");
    double medida = double.parse(stdin.readLineSync()!);

    String classificacao;

    if (medida <= 100) {
      classificacao = "normal";
    } else if (medida <= 140) {
      classificacao = "elevado";
    } else {
      classificacao = "diabetes";
    }

    stdout.write("Classificação: $classificacao");
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

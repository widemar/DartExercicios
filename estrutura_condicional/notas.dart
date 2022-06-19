import 'dart:io';

void main(List<String> arguments) {
  try {
    stdout.write("Digite a primeira nota: ");
    double nota1 = double.parse(stdin.readLineSync()!);
    stdout.write("Digite a segunda nota: ");
    double nota2 = double.parse(stdin.readLineSync()!);

    double notaFinal = nota1 + nota2;

    String mensagem =
        notaFinal > 60.0 ? "Aprovado".toUpperCase() : "Reprovado".toUpperCase();

    stdout.write(mensagem);
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

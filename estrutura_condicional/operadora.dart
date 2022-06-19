import 'dart:io';

void main(List<String> arguments) {
  try {
    stdout.write("Digite a quantidade de minutos: ");
    int qtdMinutos = int.parse(stdin.readLineSync()!);

    double valorPagar = qtdMinutos <= 100 ? 50 : (qtdMinutos - 100) * 2.00 + 50;

    stdout.write("Valor a pagar: R\$ ${valorPagar.toStringAsFixed(2)}");
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

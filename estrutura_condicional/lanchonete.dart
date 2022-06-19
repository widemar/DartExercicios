import 'dart:io';

void main(List<String> arguments) {
  try {
    stdout.write("Código do produto comprado: ");
    int codigo = int.parse(stdin.readLineSync()!);
    stdout.write("Quantidade comprada: ");
    int qtdComprada = int.parse(stdin.readLineSync()!);

    double valorPagar = 0.0;
    switch (codigo) {
      case 1:
        valorPagar = qtdComprada * 5.00;
        break;
      case 2:
        valorPagar = qtdComprada * 3.50;
        break;
      case 3:
        valorPagar = qtdComprada * 4.80;
        break;
      case 4:
        valorPagar = qtdComprada * 8.90;
        break;
      case 5:
        valorPagar = qtdComprada * 7.32;
        break;
      default:
        stdout.write("Código inválido");
    }

    stdout.write("Valor a pagar: R\$ ${valorPagar.toStringAsFixed(2)}");
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

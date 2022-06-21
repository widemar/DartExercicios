import 'dart:io';

import 'utilitarios/ConversorDeMoeda.dart';

void main(List<String> arguments) {
  try {
    stdout.write("Qual o valor do dólar: ");
    double valor = double.parse(stdin.readLineSync()!);
    stdout.write("Quantos dólares serão comprados: ");
    double qtdDolares = double.parse(stdin.readLineSync()!);

    double conversao =
        ConversorDeMoeda.conversao(valorDolar: valor, qtdDolares: qtdDolares);
    stdout.write("Valor a ser pago em reais = ${conversao.toStringAsFixed(2)}");
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

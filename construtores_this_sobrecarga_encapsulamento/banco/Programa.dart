import 'dart:io';

import 'entidades/ContaBancaria.dart';

void main(List<String> arguments) {
  try {
    ContaBancaria contaBancaria;

    stdout.write("Informe o número da conta: ");
    int numero = int.parse(stdin.readLineSync()!);
    stdout.write("Informe o titular da conta: ");
    String titular = stdin.readLineSync()!;
    stdout.write("Existe um depósito inicial? sim ou nao: ");
    String escolha = stdin.readLineSync()!.toLowerCase();

    if (escolha == "sim") {
      stdout.write("Informe o valor do depósito: ");
      double valor = double.parse(stdin.readLineSync()!);
      contaBancaria = ContaBancaria(numero, titular, valor);
    } else {
      contaBancaria = ContaBancaria(numero, titular);
    }

    stdout.writeln("Dados da conta:");
    stdout.writeln(contaBancaria);

    stdout.write("Informe o valor do depósito: ");
    double quantia = double.parse(stdin.readLineSync()!);
    contaBancaria.depositar(quantia);
    stdout.writeln("Dados da conta atualizados:");
    stdout.writeln(contaBancaria);

    stdout.write("Informe o valor do saque: ");
    quantia = double.parse(stdin.readLineSync()!);
    contaBancaria.sacar(quantia);
    stdout.writeln("Dados da conta atualizados:");
    stdout.writeln(contaBancaria);
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

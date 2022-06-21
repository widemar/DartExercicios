import 'dart:io';

import 'entidades/Conta.dart';

void main(List<String> arguments) {
  try {
    stdout.write("Sexo: ");
    String sexo = stdin.readLineSync()!;
    stdout.write("Quantidade de cervejas: ");
    int qtdCervejas = int.parse(stdin.readLineSync()!);
    stdout.write("Quantidade de refrigerantes: ");
    int qtdRefrigerantes = int.parse(stdin.readLineSync()!);
    stdout.write("Quantidade de espetinhos: ");
    int qtdEspetinhos = int.parse(stdin.readLineSync()!);

    Conta conta = Conta(sexo, qtdCervejas, qtdRefrigerantes, qtdEspetinhos);

    stdout.writeln("Relatório:".toUpperCase());
    stdout.write(conta);
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

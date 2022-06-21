import 'dart:io';

import 'entidades/Funcionario.dart';

void main(List<String> arguments) {
  try {
    stdout.write("Nome: ");
    String nome = stdin.readLineSync()!;
    stdout.write("Salário bruto: ");
    double salarioBruto = double.parse(stdin.readLineSync()!);
    stdout.write("Imposto: ");
    double imposto = double.parse(stdin.readLineSync()!);

    Funcionario funcionario = Funcionario(nome, salarioBruto, imposto);

    stdout.writeln("Funcionário: $funcionario");

    stdout.write("Qual a porcentagem para aumentar o salário? ");
    double porcentagem = double.parse(stdin.readLineSync()!);
    funcionario.aumentarSalario(porcentagem: porcentagem);

    stdout.write("Dados atualizados: $funcionario");
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

import 'dart:io';

void main(List<String> arguments) {
  try {
    stdout.write("Digite o salário da pessoa: ");
    double salario = double.parse(stdin.readLineSync()!);

    double novoSalario, aumento;
    int porcentagem;
    if (salario <= 1000.00) {
      porcentagem = 20;
      novoSalario = newSalario(porcentagem, salario);
      aumento = aumentoSalario(salario, porcentagem);
    } else if (salario <= 3000.00) {
      porcentagem = 15;
      novoSalario = newSalario(porcentagem, salario);
      aumento = aumentoSalario(salario, porcentagem);
    } else if (salario <= 8000.00) {
      porcentagem = 10;
      novoSalario = newSalario(porcentagem, salario);
      aumento = aumentoSalario(salario, porcentagem);
    } else {
      porcentagem = 5;
      novoSalario = newSalario(porcentagem, salario);
      aumento = aumentoSalario(salario, porcentagem);
    }

    stdout.writeln("Novo salário = R\$ ${novoSalario.toStringAsFixed(2)}");
    stdout.writeln("Aumento = R\$ ${aumento.toStringAsFixed(2)}");
    stdout.writeln("Porcentagem = $porcentagem %");
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

double newSalario(int porcentagem, double salario) {
  return salario + salario * (porcentagem / 100);
}

double aumentoSalario(double salario, int porcentagem) {
  return salario * (porcentagem / 100);
}

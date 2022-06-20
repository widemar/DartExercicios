import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  try {
    stdout.write("Renda anual com salário: ");
    double raSalario = double.parse(stdin.readLineSync()!);
    stdout.write("Renda anual com prestação de serviço: ");
    double raServico = double.parse(stdin.readLineSync()!);
    stdout.write("Renda anual com ganho de capital: ");
    double raCapital = double.parse(stdin.readLineSync()!);
    stdout.write("Gastos médicos: ");
    double gastosMedicos = double.parse(stdin.readLineSync()!);
    stdout.write("Gastos educacionais: ");
    double gastosEducacionais = double.parse(stdin.readLineSync()!);

    double impostoSalario = impostoSobreSalario(raSalario);

    double impostoServico = 0.0;
    if (raServico > 0) {
      impostoServico = raServico * 0.15;
    }

    double impostoCapital = 0.0;
    if (raCapital > 0) {
      impostoCapital = raCapital * 0.20;
    }

    double impostoBruto = impostoSalario + impostoServico + impostoCapital;
    double maximoDedutivel = impostoBruto * 0.30;
    double gastosDedutiveis = gastosMedicos + gastosEducacionais;

    double abatimento = min(maximoDedutivel, gastosDedutiveis);
    double impostoDevido = impostoBruto - abatimento;

    stdout.writeln("Relatório de imposto de renda".toUpperCase());
    stdout.writeln("Consolidado de renda".toUpperCase());
    if (impostoSalario == 0.0) {
      stdout.writeln("Imposto sobre salário: Isento");
    } else {
      stdout.writeln(
          "Imposto sobre salário: ${impostoSalario.toStringAsFixed(2)}");
    }
    stdout.writeln(
        "Imposto sobre serviços: ${impostoServico.toStringAsFixed(2)}");
    stdout.writeln(
        "Imposto sobre ganho de capital: ${impostoCapital.toStringAsFixed(2)}");
    stdout.writeln("Deduções: ".toUpperCase());
    stdout.writeln("Máximo dedutível: ${maximoDedutivel.toStringAsFixed(2)}");
    stdout.writeln("Gastos dedutíveis: ${gastosDedutiveis.toStringAsFixed(2)}");
    stdout.writeln("Resumo".toUpperCase());
    stdout.writeln("Imposto bruto total: ${impostoBruto.toStringAsFixed(2)}");
    stdout.writeln("Abatimento: ${abatimento.toStringAsFixed(2)}");
    stdout.writeln("Imposto devido: ${impostoDevido.toStringAsFixed(2)}");
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

double impostoSobreSalario(double raSalario) {
  double salarioMensal = raSalario / 12;
  if (salarioMensal < 3000.00) {
    return 0.0;
  } else if (salarioMensal < 5000.00) {
    return raSalario * 0.10;
  } else {
    return raSalario * 0.20;
  }
}

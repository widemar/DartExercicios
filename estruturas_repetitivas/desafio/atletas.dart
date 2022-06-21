import 'dart:io';

void main(List<String> arguments) {
  try {
    stdout.write("Qual a quantidade de atletas: ");
    int qtdAtletas = int.parse(stdin.readLineSync()!);

    String nomeMaisAlto = "";
    double atletaMaisAlto = 0.0;
    double somaPesos = 0.0;
    double somaAlturaMulheres = 0.0;
    int contaHomens = 0;
    int contaMulheres = 0;
    for (var i = 1; i <= qtdAtletas; ++i) {
      stdout.writeln("Digite os dados do atleta número $i:");
      stdout.write("Nome: ");
      String nome = stdin.readLineSync()!;
      stdout.write("Sexo: ");
      String sexo = stdin.readLineSync()!.toUpperCase();
      while (sexo != "M" && sexo != "F") {
        stdout.write("Valor inválido! Favor digitar F ou M: ");
        sexo = stdin.readLineSync()!.toUpperCase();
      }
      stdout.write("Altura: ");
      double altura = double.parse(stdin.readLineSync()!);
      while (altura <= 0) {
        stdout.write("Valor inválido! Favor digitar um valor positivo: ");
        altura = double.parse(stdin.readLineSync()!);
      }
      if (altura > atletaMaisAlto) {
        atletaMaisAlto = altura;
        nomeMaisAlto = nome;
      }
      if (sexo == "M") {
        contaHomens++;
      } else {
        somaAlturaMulheres += altura;
        contaMulheres++;
      }
      stdout.write("Peso: ");
      double peso = double.parse(stdin.readLineSync()!);
      while (peso <= 0) {
        stdout.write("Valor inválido! Favor digitar um valor positivo: ");
        peso = double.parse(stdin.readLineSync()!);
      }
      somaPesos += peso;
    }
    double pesoMedio = somaPesos / qtdAtletas;
    double porcentagemHomens = contaHomens / qtdAtletas * 100;
    double alturaMediaMulheres = somaAlturaMulheres / contaMulheres;

    stdout.writeln("Relatório:".toUpperCase());
    stdout.writeln("Peso médio dos atletas: ${pesoMedio.toStringAsFixed(2)}");
    stdout.writeln("Atleta mais alto: $nomeMaisAlto");
    stdout.writeln(
        "Porcentagem de homens: ${porcentagemHomens.toStringAsFixed(1)} %");
    if (contaMulheres == 0) {
      stdout.writeln("Não a mulheres cadastradas");
    } else {
      stdout.writeln(
          "Altura médias das mulheres: ${alturaMediaMulheres.toStringAsFixed(2)}");
    }
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

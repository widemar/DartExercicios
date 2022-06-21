import 'dart:io';

void main(List<String> arguments) {
  try {
    stdout.write("Quantos casos de testes serão digitados: ");
    int qtdTestes = int.parse(stdin.readLineSync()!);

    int somaCobaias = 0;
    int somaCoelhos = 0;
    int somaRatos = 0;
    int somaSapos = 0;
    for (var i = 0; i < qtdTestes; ++i) {
      stdout.write("Quantidade de cobaias: ");
      int qtdCobaias = int.parse(stdin.readLineSync()!);
      stdout.write("Tipo de cobaia: ");
      String tipoCobaia = stdin.readLineSync()!.toUpperCase();
      somaCobaias += qtdCobaias;
      if (tipoCobaia == "C") {
        somaCoelhos += qtdCobaias;
      } else if (tipoCobaia == "R") {
        somaRatos += qtdCobaias;
      } else if (tipoCobaia == "S") {
        somaSapos += qtdCobaias;
      }
    }

    double percentualCoelhos = somaCoelhos / somaCobaias * 100;
    double percentualRatos = somaRatos / somaCobaias * 100;
    double percentualSapos = somaSapos / somaCobaias * 100;

    stdout.writeln("Relatório final:".toUpperCase());
    stdout.writeln("Total: $somaCobaias");
    stdout.writeln("Total coelhos: $somaCoelhos");
    stdout.writeln("Total ratos: $somaRatos");
    stdout.writeln("Total sapos: $somaSapos");
    stdout.writeln(
        "Percentual de coelhos: ${percentualCoelhos.toStringAsFixed(2)}");
    stdout
        .writeln("Percentual de ratos: ${percentualRatos.toStringAsFixed(2)}");
    stdout
        .writeln("Percentual de sapos: ${percentualSapos.toStringAsFixed(2)}");
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

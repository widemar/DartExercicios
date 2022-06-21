import 'dart:io';

void main(List<String> arguments) {
  try {
    stdout.write("Quantos casos você vai digitar: ");
    int qtdCasos = int.parse(stdin.readLineSync()!);

    for (var i = 0; i < qtdCasos; ++i) {
      stdout.writeln("Digite três números:");
      double numUm = double.parse(stdin.readLineSync()!);
      double numDois = double.parse(stdin.readLineSync()!);
      double numTres = double.parse(stdin.readLineSync()!);

      double mediaPonderada = (numUm * 2 + numDois * 3 + numTres * 5) / 10;
      stdout.writeln("Media = ${mediaPonderada.toStringAsFixed(1)}");
    }
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

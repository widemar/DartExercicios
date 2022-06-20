import 'dart:io';

void main(List<String> arguments) {
  try {
    stdout.writeln("Digite dois números inteiros: ");
    int numUm = int.parse(stdin.readLineSync()!);
    int numDois = int.parse(stdin.readLineSync()!);

    String isMultiplo = numUm % numDois == 0 || numDois % numUm == 0
        ? "São múltiplos"
        : "Não são múltiplos";

    stdout.write(isMultiplo);
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

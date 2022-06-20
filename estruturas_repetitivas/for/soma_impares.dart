import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  try {
    stdout.writeln("Digite dois números: ");
    int numUm = int.parse(stdin.readLineSync()!);
    int numDois = int.parse(stdin.readLineSync()!);

    int menor = min(numUm, numDois);
    int maior = max(numUm, numDois);
    int somaImpares = 0;
    for (var i = menor + 1; i < maior; ++i) {
      if (i % 2 != 0) {
        somaImpares += i;
      }
    }

    stdout.write("Soma dos ímpares = $somaImpares".toUpperCase());
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

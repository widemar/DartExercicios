import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  try {
    stdout.writeln("Digite as três distâncias: ");
    double distanciaUm = double.parse(stdin.readLineSync()!);
    double distanciaDois = double.parse(stdin.readLineSync()!);
    double distanciaTres = double.parse(stdin.readLineSync()!);

    double maiorDistancia =
        distanciaUm > distanciaDois && distanciaUm > distanciaTres
            ? distanciaUm
            : max(distanciaDois, distanciaTres);

    stdout.write("Maior distância = ${maiorDistancia.toStringAsFixed(2)}");
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

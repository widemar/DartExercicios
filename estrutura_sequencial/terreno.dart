import 'dart:io';

void main(List<String> arguments) {
  try {
    stdout.write("Digite a largura do terreno: ");
    double largura = double.parse(stdin.readLineSync()!);
    stdout.write("Digite o comprimento do terreno: ");
    double comprimento = double.parse(stdin.readLineSync()!);
    stdout.write("Digite o valor do metro quadrado: ");
    double valorMetroQuadrado = double.parse(stdin.readLineSync()!);

    double areaDoTerreno = largura * comprimento;
    double precoDoTerreno = areaDoTerreno * valorMetroQuadrado;

    stdout.writeln("Area do terreno ${areaDoTerreno.toStringAsFixed(2)}");
    stdout.writeln("Preço do terreno = ${precoDoTerreno.toStringAsFixed(2)}");
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

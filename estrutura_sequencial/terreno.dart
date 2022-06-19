import 'dart:io';

void main(List<String> arguments) {
  stdout.write("Digite a largura do terreno: ");
  double largura = double.tryParse(stdin.readLineSync()!) ?? 0.0;
  stdout.write("Digite o comprimento do terreno: ");
  double comprimento = double.tryParse(stdin.readLineSync()!) ?? 0.0;
  stdout.write("Digite o valor do metro quadrado: ");
  double valorMetroQuadrado = double.tryParse(stdin.readLineSync()!) ?? 0.0;

  double areaDoTerreno = largura * comprimento;
  double precoDoTerreno = areaDoTerreno * valorMetroQuadrado;

  stdout.writeln("Area do terreno ${areaDoTerreno.toStringAsFixed(2)}");
  stdout.writeln("Preço do terreno = ${precoDoTerreno.toStringAsFixed(2)}");
}

import 'dart:io';

void main(List<String> arguments) {
  try {
    stdout.write("Preço unitário do produto: ");
    double preco = double.parse(stdin.readLineSync()!);
    stdout.write("Quantidade comprada: ");
    int quantidade = int.parse(stdin.readLineSync()!);
    stdout.write("Dinheiro recebido: ");
    double dinheiroRecebido = double.parse(stdin.readLineSync()!);

    double troco = dinheiroRecebido - preco * quantidade;

    stdout.write("Troco = ${troco.toStringAsFixed(2)}".toUpperCase());
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

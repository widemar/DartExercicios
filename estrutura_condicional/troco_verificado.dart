import 'dart:io';

void main(List<String> arguments) {
  try {
    stdout.write("Preço unitário do produto: ");
    double preco = double.parse(stdin.readLineSync()!);
    stdout.write("Quantidade comprada: ");
    int qtdComprada = int.parse(stdin.readLineSync()!);
    stdout.write("Dinheiro recebido: ");
    double dinheiroRecebido = double.parse(stdin.readLineSync()!);

    double precoTotal = preco * qtdComprada;

    if (dinheiroRecebido > precoTotal) {
      double troco = dinheiroRecebido - precoTotal;
      stdout.write("Troco = ${troco.toStringAsFixed(2)}");
    } else {
      stdout.write(
          "Dinheiro Insuficiente. Faltam ${(precoTotal - dinheiroRecebido).toStringAsFixed(2)} reais");
    }
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

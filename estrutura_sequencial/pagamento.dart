import 'dart:io';

void main(List<String> arguments) {
  try {
    stdout.write("Nome: ");
    String nome = stdin.readLineSync()!;
    stdout.write("Valor por hora: ");
    double valor = double.parse(stdin.readLineSync()!);
    stdout.write("Horas trabalhadas: ");
    int horas = int.parse(stdin.readLineSync()!);

    double pagamento = valor * horas;

    stdout.write(
        "O pagamento para $nome deve ser ${pagamento.toStringAsFixed(2)}");
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

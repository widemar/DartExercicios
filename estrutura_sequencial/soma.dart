import 'dart:io';

void main(List<String> arguments) {
  try {
    stdout.write("Digite o valor de X: ");
    int x = int.parse(stdin.readLineSync()!);
    stdout.write("Digite o valor de Y: ");
    int y = int.parse(stdin.readLineSync()!);

    int soma = x + y;

    stdout.write("Soma = $soma".toUpperCase());
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

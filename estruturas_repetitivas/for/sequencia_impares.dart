import 'dart:io';

void main(List<String> arguments) {
  try {
    stdout.write("Digite um valor: ");
    int valor = int.parse(stdin.readLineSync()!);

    for (var i = 1; i <= valor; ++i) {
      if (i % 2 != 0) {
        stdout.writeln(i);
      }
    }
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

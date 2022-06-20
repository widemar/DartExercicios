import 'dart:io';

void main(List<String> arguments) {
  try {
    bool numerosDiferentes = true;
    while (numerosDiferentes) {
      stdout.writeln("Digite dois números:");
      int primeiro = int.parse(stdin.readLineSync()!);
      int segundo = int.parse(stdin.readLineSync()!);

      if (primeiro == segundo) {
        numerosDiferentes = false;
      } else if (primeiro > segundo) {
        stdout.writeln("Decrescente!".toUpperCase());
      } else {
        stdout.writeln("Crescente!".toUpperCase());
      }
    }
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

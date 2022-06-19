import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  try {
    stdout.write("Primeiro valor: ");
    int primeiro = int.parse(stdin.readLineSync()!);
    stdout.write("Segundo valor: ");
    int segundo = int.parse(stdin.readLineSync()!);
    stdout.write("Terceiro valor: ");
    int terceiro = int.parse(stdin.readLineSync()!);

    int menor;
    if (primeiro < segundo && primeiro < terceiro) {
      menor = primeiro;
    } else {
      menor = min(segundo, terceiro);
    }

    stdout.write("Menor = $menor".toUpperCase());
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

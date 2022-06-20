import 'dart:io';

void main(List<String> arguments) {
  try {
    bool diferenteDeZero = true;
    while (diferenteDeZero) {
      stdout.write("Digite um número inteiro: ");
      int num = int.parse(stdin.readLineSync()!);
      if (num == 0) {
        diferenteDeZero = false;
      } else {
        double soma = 0;
        int contador = 0;
        while (contador < 5) {
          if (num % 2 == 0) {
            soma += num;
            contador++;
          }
          num++;
        }
        stdout.writeln("Soma = $soma".toUpperCase());
      }
    }
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

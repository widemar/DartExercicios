import 'dart:io';

void main(List<String> arguments) {
  try {
    stdout.write("Digite o valor de N: ");
    int n = int.parse(stdin.readLineSync()!);

    int fatorial = n;
    if (fatorial == 0) {
      fatorial = 1;
    } else {
      for (var i = n - 1; i > 0; --i) {
        fatorial *= i;
      }
    }

    stdout.write("Fatorial = $fatorial".toUpperCase());
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

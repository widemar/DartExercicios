import 'dart:io';

void main(List<String> arguments) {
  try {
    bool senhaErrada = true;
    while (senhaErrada) {
      stdout.write("Digite a senha: ");
      int senha = int.parse(stdin.readLineSync()!);
      if (senha == 2002) {
        senhaErrada = false;
      } else {
        stdout.writeln("Senha inválida! tente novamente. ");
      }
    }
    stdout.write("Acesso permitido!");
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

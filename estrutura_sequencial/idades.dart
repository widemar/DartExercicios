import 'dart:io';

void main(List<String> arguments) {
  try {
    stdout.writeln("Dados da primeira pessoa: ");
    stdout.write("Nome: ");
    String nome1 = stdin.readLineSync()!;
    stdout.write("Idade: ");
    int idade1 = int.parse(stdin.readLineSync()!);

    stdout.writeln("Dados da segunda pessoa:");
    stdout.write("Nome: ");
    String nome2 = stdin.readLineSync()!;
    stdout.write("Idade: ");
    int idade2 = int.parse(stdin.readLineSync()!);

    double idadeMedia = (idade1 + idade2) / 2;

    stdout.write("A idade média de $nome1 e $nome2 é de $idadeMedia anos");
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

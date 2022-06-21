import 'dart:io';

import 'entidades/Aluno.dart';

void main(List<String> arguments) {
  try {
    String nome = stdin.readLineSync()!;
    double notaUm = double.parse(stdin.readLineSync()!);
    double notaDois = double.parse(stdin.readLineSync()!);
    double notaTres = double.parse(stdin.readLineSync()!);

    Aluno aluno = Aluno(nome, notaUm, notaDois, notaTres);

    stdout.write(aluno);
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

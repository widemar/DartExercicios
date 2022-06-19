import 'dart:io';

void main(List<String> arguments) {
  try {
    stdout.write("Digite a duração em segundos: ");
    int duracao = int.parse(stdin.readLineSync()!);

    int horas = duracao ~/ 3600;
    int minutos = (duracao - (3600 * horas)) ~/ 60;
    int segundos = duracao - 3600 * horas - 60 * minutos;

    stdout.write("$horas:$minutos:$segundos");
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}
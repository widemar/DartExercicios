import 'dart:io';

void main(List<String> arguments) {
  try {
    stdout.write("Hora inicial: ");
    int horaInicial = int.parse(stdin.readLineSync()!);
    stdout.write("Hora final: ");
    int horaFinal = int.parse(stdin.readLineSync()!);

    int duracaoJogo = duracaoFinal(horaInicial, horaFinal);

    stdout.write("O jogo durou $duracaoJogo hora(s)".toUpperCase());
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

int duracaoFinal(int horaInicial, int horaFinal) {
  if (horaInicial > horaFinal) {
    return 24 - (horaInicial - horaFinal);
  } else if (horaFinal > horaInicial) {
    return horaFinal - horaInicial;
  } else {
    return 24 - horaInicial - horaFinal;
  }
}

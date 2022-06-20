import 'dart:io';

void main(List<String> arguments) {
  try {
    bool diferenteDeQuatro = true;
    int contaAlcool = 0, contaGasolina = 0, contaDiesel = 0;
    while (diferenteDeQuatro) {
      stdout.write("Informe um código (1, 2, 3) ou 4 para parar: ");
      int codigo = int.parse(stdin.readLineSync()!);
      if (codigo == 4) {
        diferenteDeQuatro = false;
      } else if (codigo < 1 || codigo > 4) {
        continue;
      } else if (codigo == 1) {
        contaAlcool++;
      } else if (codigo == 2) {
        contaGasolina++;
      } else {
        contaDiesel++;
      }
    }
    stdout.writeln("Muito Obrigado".toUpperCase());
    stdout.writeln("Álcool: $contaAlcool");
    stdout.writeln("Gasolina: $contaGasolina");
    stdout.writeln("Diesel: $contaDiesel");
  } on FormatException catch (e) {
    stdout.write(e);
  } catch (e) {
    stdout.write(e);
  }
}

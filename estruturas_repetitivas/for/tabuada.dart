import 'dart:io';

void main(List<String> arguments) {
  stdout.write("Deseja a tabuada para qual valor: ");
  int valor = int.parse(stdin.readLineSync()!);

  for (var i = 1; i <= 10; ++i) {
    stdout.writeln("$valor x $i = ${valor * i}");
  }
}
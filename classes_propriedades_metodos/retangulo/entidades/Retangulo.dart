import 'dart:math';

class Retangulo {
  double _largura;
  double _altura;

  Retangulo(this._largura, this._altura);

  double get altura => _altura;

  set altura(double value) {
    _altura = value;
  }

  double get largura => _largura;

  set largura(double value) {
    _largura = value;
  }

  double area() {
    return largura * altura;
  }

  double perimetro() {
    return 2 * (largura + altura);
  }

  double diagonal() {
    return sqrt(pow(largura, 2) + pow(altura, 2));
  }

  @override
  String toString() {
    return "Area = ${area().toStringAsFixed(2)}\n"
            "Perímetro = ${perimetro().toStringAsFixed(2)}\n"
            "Diagonal = ${diagonal().toStringAsFixed(2)}\n"
        .toUpperCase();
  }
}

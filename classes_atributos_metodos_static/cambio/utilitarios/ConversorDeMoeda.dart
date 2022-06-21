class ConversorDeMoeda {
  static double _iof = 0.06;

  static double get iof => _iof;

  static set iof(double value) {
    _iof = value;
  }

  static double conversao(
      {required double valorDolar, required double qtdDolares}) {
    return valorDolar * qtdDolares * iof + valorDolar * qtdDolares;
  }
}

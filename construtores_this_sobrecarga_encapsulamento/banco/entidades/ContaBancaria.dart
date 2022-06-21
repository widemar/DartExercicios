class ContaBancaria {
  int _numero;
  String _titular;
  double _saldo;

  ContaBancaria(this._numero, this._titular, [this._saldo = 0.0]);

  double get saldo => _saldo;

  String get titular => _titular;

  set titular(String value) {
    _titular = value;
  }

  int get numero => _numero;

  void depositar(double quantia) {
    _saldo += quantia;
  }

  void sacar(double quantia) {
    _saldo -= (quantia + 5.00);
  }

  @override
  String toString() {
    return "Conta: $numero, Titular: $titular, Saldo: R\$ ${saldo.toStringAsFixed(2)}";
  }
}

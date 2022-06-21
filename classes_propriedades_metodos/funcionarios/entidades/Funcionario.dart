class Funcionario {
  String _nome;
  double _salarioBruto;
  double _imposto;

  Funcionario(this._nome, this._salarioBruto, this._imposto);

  double get imposto => _imposto;

  set imposto(double value) {
    _imposto = value;
  }

  double get salarioBruto => _salarioBruto;

  set salarioBruto(double value) {
    _salarioBruto = value;
  }

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }

  double salarioLiquido() {
    return salarioBruto - imposto;
  }

  void aumentarSalario({required double porcentagem}) {
    salarioBruto += salarioBruto * (porcentagem / 100);
  }

  @override
  String toString() {
    return "$nome, R\$ ${salarioLiquido().toStringAsFixed(2)}";
  }
}

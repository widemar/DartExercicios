class Conta {
  String _sexo;
  int _cerveja;
  int _refrigerante;
  int _espetinho;

  Conta(this._sexo, this._cerveja, this._refrigerante, this._espetinho);

  int get espetinho => _espetinho;

  set espetinho(int value) {
    _espetinho = value;
  }

  int get refrigerante => _refrigerante;

  set refrigerante(int value) {
    _refrigerante = value;
  }

  int get cerveja => _cerveja;

  set cerveja(int value) {
    _cerveja = value;
  }

  String get sexo => _sexo;

  set sexo(String value) {
    _sexo = value;
  }

  double consumo() {
    return cerveja * 5 + refrigerante * 3 + espetinho * 7;
  }

  double cover() {
    return consumo() > 30 ? 0.0 : 4.00;
  }

  double ingresso() {
    return sexo == "M" ? 10.00 : 8.00;
  }

  double total() {
    return consumo() + cover() + ingresso();
  }

  @override
  String toString() {
    String couvert;
    if (cover() == 0) {
      couvert = "Isento de Couvert";
    } else {
      couvert = "R\$ 4.00";
    }
    return "Consumo = R\$ ${consumo().toStringAsFixed(2)}\n"
        "Couvert = $couvert \n"
        "Ingresso = R\$ ${ingresso().toStringAsFixed(2)}\n"
        "Valor a pagar = R\$ ${total().toStringAsFixed(2)}\n";
  }
}

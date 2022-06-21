class Aluno {
  String _nome;
  double _notaUm;
  double _notaDois;
  double _notaTres;

  Aluno(this._nome, this._notaUm, this._notaDois, this._notaTres);

  double get notaTres => _notaTres;

  set notaTres(double value) {
    _notaTres = value;
  }

  double get notaDois => _notaDois;

  set notaDois(double value) {
    _notaDois = value;
  }

  double get notaUm => _notaUm;

  set notaUm(double value) {
    _notaUm = value;
  }

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }

  double notaFinal() {
    return notaUm + notaDois + notaTres;
  }

  String situacaoAluno() {
    if (notaFinal() >= 60.00) {
      return "pass".toUpperCase();
    } else {
      return "Failed\nFaltaram ${(60 - notaFinal()).toStringAsFixed(2)} pontos";
    }
  }

  @override
  String toString() {
    return "Nota final = ${notaFinal().toStringAsFixed(2)}\n${situacaoAluno()}"
        .toUpperCase();
  }
}

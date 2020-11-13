class Aluno {
  int id;
  String _nome;
  String email;

  String get nome {
    return _nome;
  }

  void set nome(String nome) {
    this._nome = nome;
  }

  String toString() {
    return ('Aluno: ' + _nome + ' E-mail: ' + email);
  }
}

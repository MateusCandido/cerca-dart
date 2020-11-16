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
    return ('Id: ' +
        id.toString() +
        '\nAluno: ' +
        _nome +
        '\nE-mail: ' +
        email);
  }
}

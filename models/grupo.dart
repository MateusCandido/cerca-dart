class Grupo {
  int id;
  String nome;
  String descricao;
  List<Grupo> subGrupo = [];

  String toString() {
    return ('Grupo: $nome\nDescrição: $descricao\nsubgrupo: $subGrupo\n\n');
  }
}

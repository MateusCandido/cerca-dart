class Grupo {
  int id;
  String nome;
  String descricao;
  List<Grupo> subGrupo = [];

  String toString() {
    return ('Id: $id Grupo: $nome Descrição: $descricao subgrupo: {$subGrupo} ');
  }
}

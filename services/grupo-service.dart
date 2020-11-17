import '../models/grupo.dart';
import '../repositories/repository.dart';

class GrupoService {
  Repository<Grupo, int> repository;

  GrupoService(Repository<Grupo, int> repository) {
    this.repository = repository;
  }

  cadastrar(Grupo grupo) {
    if (grupo.nome == null) throw ("Nome é um campo obrigatório");

    repository.cadastrar(grupo);
  }

  List<Grupo> buscarTodos() {
    return repository.buscarTodos();
  }

  buscaGrupo(int idGrupo) {
    if (repository.buscaPorId(idGrupo) == null)
      throw ("Grupo não encontrado ou inexistente");
    return repository.buscaPorId(idGrupo);
  }

  excluirGrupo(Grupo grupo) {
    if (repository.buscaPorId(grupo.id) == null)
      throw ("Grupo não encontrado ou inexistente");
    repository.excluir(grupo);

    var listaGrupo = repository.buscarTodos();
    // Exclui grupo de subgrupos de outros grupos
    listaGrupo.forEach((element) {
      if (element.subGrupo.where((lixo) => grupo == lixo) != null) {
        element.subGrupo.remove(grupo);
      }
    });
  }
}

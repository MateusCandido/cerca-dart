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
}

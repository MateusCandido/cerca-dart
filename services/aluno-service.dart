import '../models/aluno.dart';
import '../repositories/repository.dart';

class AlunoService {
  Repository<Aluno, int> repository;

  AlunoService(Repository<Aluno, int> repository) {
    this.repository = repository;
  }

  cadastrar(Aluno aluno) {
    if (aluno.nome == null) throw ("Nome é um campo obrigatório");

    repository.cadastrar(aluno);
  }

  List<Aluno> buscarTodos() {
    return repository.buscarTodos();
  }

  buscaPorId(Aluno aluno) {
    return repository.buscaPorId(aluno.id);
  }

  excluir(Aluno aluno) {
    repository.excluir(aluno);
  }
}

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
}

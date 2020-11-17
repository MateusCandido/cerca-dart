import 'repositories/repository-impl.dart';
import 'repositories/repository.dart';
import 'services/aluno-service.dart';
import 'models/aluno.dart';
import 'services/grupo-service.dart';
import 'models/grupo.dart';

main() {
  //------------------------Aluno------------------------------
  Repository<Aluno, int> repositoryAluno = new RepositoryImpl();
  AlunoService alunoService = new AlunoService(repositoryAluno);

  Aluno alunoUm = new Aluno();
  Aluno alunoDois = new Aluno();
  Aluno alunoTres = new Aluno();
  Aluno alunoQuatro = new Aluno();
  //Cadastro Aluno 1
  alunoUm.id = 01;
  alunoUm.nome = 'Jubileu';
  alunoUm.email = 'jubileu@email.com';

  alunoService.cadastrar(alunoUm);
  //print(alunoUm);

  //Cadastro aluno 2
  alunoDois.id = 02;
  alunoDois.nome = 'Marineide';
  alunoDois.email = 'marineide@email.com';

  alunoService.cadastrar(alunoDois);
  //print(aluno);

  //Cadastro aluno 3
  alunoTres.id = 03;
  alunoTres.nome = 'Cleber';
  alunoTres.email = 'clebinho@email.com';

  alunoService.cadastrar(alunoTres);
  //print(aluno);

  //Aluno não cadastrado
  alunoQuatro.id = 04;
  alunoQuatro.nome = 'Otavio';
  alunoQuatro.email = 'otavio@email.com';

  //Lista de alunos cadastrados
  print("-----------Lista de Alunos Cadastrados-------------");
  alunoService.buscarTodos().forEach((element) {
    print(element);
  });

  //Busca de alunos por ID
  print("--------------Busca de Alunos por ID---------------");
  // Deve retornar aluno cadastrado
  print(alunoService.buscaAluno(alunoUm.id));
  // Deve retornar erro
  // print(alunoService.buscaAluno(alunoQuatro.id));
  /*
  //Exclusão de Alunos
  print("----------------Exclusão de Alunos-----------------");
  alunoService.excluirAluno(alunoUm);
  alunoService.excluirAluno(alunoDois);
  print("------------------Lista de Alunos------------------");
  alunoService.buscarTodos().forEach((element) {
    print(element);
  });
  */
  //------------------------Grupo------------------------------
  Repository<Grupo, int> repositoryGrupo = new RepositoryImpl();
  GrupoService grupoService = new GrupoService(repositoryGrupo);

  Grupo grupoUm = new Grupo();
  Grupo grupoDois = new Grupo();
  Grupo grupoTres = new Grupo();
  Grupo grupoQuatro = new Grupo();
  //Cadastrar Grupo 1
  grupoUm.id = 01;
  grupoUm.nome = 'Grupo 1';
  grupoUm.descricao = 'Descrição do grupo 1';

  grupoService.cadastrar(grupoUm);
  //print(grupo);

  //Cadastrar Grupo 2
  grupoDois.id = 02;
  grupoDois.nome = 'Grupo 2';
  grupoDois.descricao = 'Descrição do grupo 2';

  grupoService.cadastrar(grupoDois);
  //print(grupo);

  //Cadastrar Grupo 3 com sub-grupos
  grupoTres.id = 03;
  grupoTres.nome = 'Grupo 3';
  grupoTres.descricao = 'Descrição do grupo 3';
  grupoTres.subGrupo = [grupoUm, grupoDois];

  grupoService.cadastrar(grupoTres);
  //print(grupo);

  // Grupo não cadastrado
  grupoQuatro.id = 04;
  grupoQuatro.nome = 'Grupo 4';
  grupoQuatro.descricao = 'Descrição do grupo 4';

  //Lista de grupos cadastrados
  print("------------------Lista de Grupos------------------");
  grupoService.buscarTodos().forEach((element) {
    print(element);
  });

  //Busca de grupos por ID
  print("--------------Busca de Grupos por ID---------------");
  print(grupoService.buscaGrupo(grupoUm.id));
  // Deve retornar erro
  // print(grupoService.buscaGrupo(grupoQuatro.id));
  /*
  //Exclusão de grupos
  print("----------------Exclusão de Grupos-----------------");
  grupoService.excluirGrupo(grupoUm);
  grupoService.excluirGrupo(grupoDois);
  */
  print("--------Lista de Grupos depois da exclusão---------");
  grupoService.buscarTodos().forEach((element) {
    print(element);
  });
}

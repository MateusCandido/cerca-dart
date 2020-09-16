import 'repository.dart';

class RepositoryImpl<T, ID> implements Repository<T, ID> {
  List<T> _lista = List<T>();

  List<T> get lista => _lista;

  T cadastrar(T o) {
    _lista.add(o);
    return o;
  }

  @override
  T alterar(T o) {
    // TODO: implement alterar
    throw UnimplementedError();
  }

  @override
  T buscaPorId(ID o) {
    // TODO: implement buscaPorId
    throw UnimplementedError();
  }

  @override
  void excluir(T o) {
    // TODO: implement excluir
    throw UnimplementedError();
  }

  @override
  List<T> buscarTodos() {
    return lista;
  }
}

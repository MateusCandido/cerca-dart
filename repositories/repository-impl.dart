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
    var item;
    lista.forEach((element) {
      if (element.toString().indexOf(o.toString()) != -1) {
        item = element;
      }
    });
    return item;
  }

  @override
  void excluir(T o) {
    lista.remove(o);
  }

  @override
  List<T> buscarTodos() {
    return lista;
  }
}

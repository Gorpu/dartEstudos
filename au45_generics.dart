abstract class Comanda<T> {
  T? valor;

  T? get getByKey {
    return this.valor;
  }

  set setByKey(T key) {
    this.valor = key;
  }
}

class MyLista extends Comanda<List<int>> {}

class MyString extends Comanda<String> {}

void Lista() {
  var minhaString = MyString();
  var minhaListaInt = MyLista();

  minhaString.setByKey = "String";
  minhaListaInt.setByKey = [1, 2, 3, 4, 5, 6];

  print("Rodou");
}

void main() {
  Lista();
}

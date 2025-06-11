void getPegarUltimoElementoLista<T>(List<T> itens) {
  print(itens.last);
}

void main() {
  var numbersList = [0, 1, 2, 3, 4, 5];
  var stringList = ["Liedson", "Rocha"];
  getPegarUltimoElementoLista(numbersList);
  getPegarUltimoElementoLista(stringList);
}

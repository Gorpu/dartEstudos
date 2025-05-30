void Function(num) multiplicarItens = (p0) => print("$p0 * $p0 => ${p0 * p0}");
void somarItens(num p0) => print("$p0 + $p0 => ${p0 + p0}");
void main() {
  List<num> minhaLista1 = [1, 2, 3, 4, 5];
  List<num> minhaLista2 = [6, 7, 8, 9, 10];
  List<num> allMyLists = [...minhaLista1, ...minhaLista2];
  allMyLists.forEach(somarItens);
}

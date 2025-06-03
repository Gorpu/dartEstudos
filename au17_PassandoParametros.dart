void Function(num) multiplicarItens = somarItens;
//(p0) => print("$p0 * $p0 => ${p0 * p0}");
void somarItens(num p0) => print("$p0 + $p0 => ${p0 + p0}");
void main() {
  List<num> minhaLista1 = [1, 2, 3, 4, 5];
  List<num> minhaLista2 = [6, 7, 8, 9, 10];
  List<num> allMyLists = [];
  allMyLists.addAll(minhaLista1);
  allMyLists.addAll(minhaLista2);
  allMyLists.forEach(somarItens);
}

/**
 *Reduce => No dart o reduce é um método que acessamos em Lists,
 *serve para combinar valores entre si. caso sejam strings(Strings) ele realiza
 *concatenação caso sejam numeros(num, double, int) ele realiza operações matematicas.
 */

void main() {}

void ReduceString() {
  List<String> listaString = ["letra1", "teste2", "teste3"];
  print(
    listaString.reduce((a, b) => a + b),
  ); //Nesse caso ocorre concatenação, caso for strings só o "+" funciona
}

void ReduceNum() {
  List<num> listaNum = [3.0, 2, 1, 7];

  print(listaNum);
  listaNum.reduce((a, b) {
    print(
      "$a + $b = ${a + b}",
    ); //O "a" sempre é junção de todos os valores o "b" sempre será o proximo valor
    return a + b;
  });
}

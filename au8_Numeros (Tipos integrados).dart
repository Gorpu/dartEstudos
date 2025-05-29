void main() {
  //int => É um objeto no dart com seus diferentes metodos, ele recebe
  //numeros inteiros.

  //validacão impa ou par
  int num = 12;
  if (num.isEven == true) {
    print("Numero $num é par.");
  }
  if (num.isEven == false) {
    print("Número $num é impar.");
  }

  double num2 = num.toDouble();
  print("$num2");

  //verificação de tipo
  print("(1 + 2.0) is double : ${(1 + 2.0) is double}");
  print("2.4 is int : ${2.4 is int}");
}

abstract class Modulo {
  void calcular(int n1, int n2);
}

class ModuloCall extends Modulo {
  @override
  void calcular(int n1, int n2) {
    print(n1 + n2);
  }
}

void main() {
  var retorno = ModuloCall();
  retorno.calcular(5, 40);
}

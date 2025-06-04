/*Entidade*/
abstract class ModuloRepository {
  late final int n1;
  late final int n2;
  void somar(int n1, int n2);
  void subtracao(int n1, int n2);
  void divisao(double n1, double n2) {
    print("Demo");
  }
}

/**Implements => Sobrescreve todos os metodos, tanto abstratos quanto concretos, explicitos ou implicitos*/
class ModuloRefactor implements ModuloRepository {
  @override
  int get n1 => this.n1;

  @override
  int get n2 => this.n2;

  @override
  set n1(int n1) {
    this.n1 = n1;
  }

  @override
  set n2(int n2) {
    this.n2 = n2;
  }

  @override
  void somar(int n1, int n2) {
    print("Somar Implementation (1.2)\nResultado: ${n1 + n2}");
  }

  @override
  void subtracao(int n1, int n2) {
    print("Sutração Implementation (1.2)\nResultado: ${n1 - n2}");
  }

  @override
  void divisao(double n1, double n2) {
    print(
      "Divisão Implementation (1.2)\nResultado: $n1 / $n2 = ${n1 / n2}: (${n1 % n2})",
    );
  }
}

/**Extends =>Sobrescreve apenas os metodos abstratos*/
class ModuloCall extends ModuloRepository {
  @override
  void somar(int n1, int n2) {
    print("Somar Implementation (Legacy 1.1)\nResultado: ${n1 + n2}");
  }

  @override
  void subtracao(int n1, int n2) {
    print("Sutração Implementation (Legacy 1.1)\n Resultado: ${n1 - n2}");
  }
}

void main() {
  var calculadora = ModuloCall();
  calculadora.somar(50, 30);
}

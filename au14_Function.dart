import 'dart:io';

void main() {
  bool Function(bool) controlador = (controller) {
    return controller;
  };
  var controllerResult = controlador.call(true);

  while (controllerResult == true) {
    String Function() resposta = () {
      print("Deseja continuar?(S/n)");
      String? userInput = stdin.readLineSync();
      if (userInput?.toLowerCase() == "s") {
        controllerResult = controlador.call(true);
        return "Programa encerrado!";
      }
      if (userInput?.toLowerCase() == "n") {
        controllerResult = controlador.call(false);
        return "Continuando";
      }
      return "Continue";
    };

    print("*" * 20);
    print("Calculadora:\nValor 1:");

    num? valor = num.tryParse(stdin.readLineSync() ?? "");

    print("Valor 2:");
    num? valor2 = num.tryParse(stdin.readLineSync() ?? "");

    num Function(num, num) calculadora = (num n1, num n2) {
      return (n1 + n2);
    };
    print("*" * 20);
    print(calculadora(valor as num, valor2 as num));
    resposta.call();
    print("*" * 20);
    print("" * 5000);

    //Função Lambda ou anonima
    Map<String, int> Function(String, int) meuCADASTRO = (p0, p1) => {p0: p1};

    print(meuCADASTRO("20", 6));
  }
}

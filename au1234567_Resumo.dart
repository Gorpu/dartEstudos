import 'dart:io';

void main() {
  //Função
  void Function() nome = () {
    print("Nome");
    var n = stdin.readLineSync();
    print("Idade");
    var i = stdin.readLineSync();
    print("Nome:\n-$n\nIdade:\n-$i");
  };

  //Função Lambda ou anonima
  Map<String, int> Function(String, int) meuCADASTRO = (p0, p1) => {p0: p1};

  List<dynamic> Function(dynamic) Contador = (p0) {
    List<dynamic> listNumbers = [];
    for (int i in listNumbers) {
      listNumbers.add(i / 2);
      print(listNumbers);
      return listNumbers;
    }
  };
  print(Contador.call(10));
  print(meuCADASTRO("20", 6));
}

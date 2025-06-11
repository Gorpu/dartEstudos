void main() {
  var gato = Gato(nome: "Biden");
  gato.caminhar();

  var cachorro = Cachorro(nome: "Beto");
  cachorro.caminhar();

  var rato = Animal(nome: "Mikey");
  rato.caminhar();
}

class Animal {
  String nome;

  Animal({required this.nome});

  void caminhar() {
    print("${this.nome} caminhando");
  }
}

class Gato extends Animal {
  Gato({required String nome}) : super(nome: nome);
}

class Cachorro implements Animal {
  @override
  String nome;

  Cachorro({required this.nome});

  @override
  void caminhar() {
    print("${this.nome} caminhando");
  }
}

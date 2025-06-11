void main() {
  List<Animal> listAnimais = [
    Cachorro(4, "Predador"),
    Gato(2, "Chubinho"),
    Vaca(2, "Táis"),
  ];
  listAnimais.forEach((a) {
    print("*" * 20);
    a.apresentar();
    a.fazerSom();
  });
}

abstract class Animal {
  String _nome;
  int _idade;

  Animal(this._idade, this._nome);

  set setNome(String nome);
  set setIdade(int idade);

  get getNome;
  get getIdade;

  void fazerSom();

  void apresentar() {
    print("Nome .. Idade ..");
  }
}

class Cachorro extends Animal {
  Cachorro(int idade, String nome) : super(idade, nome);

  @override
  set setNome(String nome) {
    this._nome = nome;
  }

  set setIdade(int idade) {
    this._idade = idade;
  }

  get getNome {
    return this._nome;
  }

  get getIdade {
    return this._idade;
  }

  @override
  void apresentar() {
    print("Nome $getNome, Idade $getIdade");
  }

  void fazerSom() {
    print("Au Au!!!");
  }
}

class Gato extends Animal {
  Gato(int idade, String nome) : super(idade, nome);

  @override
  set setNome(String nome) {
    this._nome = nome;
  }

  set setIdade(int idade) {
    this._idade = idade;
  }

  get getNome {
    return this._nome;
  }

  get getIdade {
    return this._idade;
  }

  @override
  void apresentar() {
    print("Nome $getNome, Idade $getIdade");
  }

  void fazerSom() {
    print("Miau!!!");
  }
}

class Vaca extends Animal {
  Vaca(int idade, String nome) : super(idade, nome);
  @override
  set setNome(String nome) {
    this._nome = nome;
  }

  set setIdade(int idade) {
    this._idade = idade;
  }

  get getNome {
    return this._nome;
  }

  get getIdade {
    return this._idade;
  }

  @override
  void apresentar() {
    print("Nome $getNome, Idade $getIdade");
  }

  void fazerSom() {
    print("Muuu Muuuuuu!!!");
  }
}

import 'Animal.dart';

void main() {
  List<Animal> animais = [
    Cachorro(4, "Predador"),
    Gato(2, "Chubinho"),
    Vaca(2, "Táis"),
    Cachorro(4, "Cuscuz"),
    Gato(7, "Frajola"),
  ];

  for (Animal animal in animais) {
    print("*" * 20);
    animal.apresentar();
    animal.fazerSom();
  }
}

class Cachorro extends Animal {
  Cachorro(int idade, String nome) : super(idade, nome);

  void fazerSom() {
    print("Au Au!!!");
  }

  @override
  void apresentar() {
    print("Nome $getNome, Idade $getIdade");
  }
}

class Gato extends Animal {
  Gato(int idade, String nome) : super(idade, nome);

  void fazerSom() {
    print("Miau!!!");
  }

  @override
  void apresentar() {
    print("Nome $getNome, Idade $getIdade");
  }
}

class Vaca extends Animal {
  Vaca(int idade, String nome) : super(idade, nome);

  void fazerSom() {
    print("Muuu Muuuuuu!!!");
  }

  @override
  void apresentar() {
    print("Nome $getNome, Idade $getIdade");
  }
}

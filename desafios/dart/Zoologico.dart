void main() {
  List<Animal> listAnimais = [Cachorro(), Gato(), Vaca()];
  listAnimais.forEach((sonsAnimais) {
    print("*" * 10);
    for (int i = 0; i <= 2; i++) {
      sonsAnimais.fazerSom();
    }
  });
}

abstract class Animal {
  void fazerSom();
}

class Cachorro implements Animal {
  @override
  void fazerSom() {
    print("Au Au!!!");
  }
}

class Gato implements Animal {
  @override
  void fazerSom() {
    print("Miau!!!");
  }
}

class Vaca implements Animal {
  @override
  void fazerSom() {
    print("Muuu Muuuuuu!!!");
  }
}

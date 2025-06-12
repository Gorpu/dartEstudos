void main() {
  List<Animal> listAnimal = [Cachorro(), Gato(), Vaca()];

  for (Animal animal in listAnimal) {
    animal.fazerSom();
  }
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

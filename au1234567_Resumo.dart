class Aluguel {
  late String nome;
  late String sobrenome;

  String get getNome {
    return this.nome;
  }

  set setNome(String nome) {
    this.nome = nome;
  }

  set setSobrenome(String sobrenome) {
    this.sobrenome = sobrenome;
  }

  String get getSobrenome {
    return this.sobrenome;
  }
}

void main() {}
void alugar() {
  Aluguel aluguel = Aluguel();
  aluguel.setNome = "Liedson";
  aluguel.setSobrenome = "Rocha";
  print(aluguel.getNome);
  print(aluguel.getSobrenome);
}

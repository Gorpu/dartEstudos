class Passageiros {
  late String nome;
  late String sobrenome;
  late int cpf;

  Passageiros(this.nome, this.sobrenome, this.cpf);

  /*setter explicito */
  set setNome(String nome) {
    this.nome = nome;
  }

  /*getter explicito*/
  String get getNome {
    return this.nome;
  }
}

void main() {
  Cadastrar();
}

void Cadastrar() {
  Passageiros passageiro = Passageiros("Liedson", "Rocha", 56544520369);
  /*setter implicito*/
  passageiro.nome = "Maria";

  /*getter implicito*/
  print(passageiro.nome);
}

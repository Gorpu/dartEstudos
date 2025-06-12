abstract class Animal {
  String _nome;
  int _idade;

  Animal(this._idade, this._nome);

  /*Getters e Setters comuns para os atributos privados*/
  set setNome(String nome) {
    this._nome = nome;
  }

  set setIdade(int idade) {
    this._idade = idade;
  }

  get getNome => _nome;
  get getIdade => _idade;

  void fazerSom(); /*Método abstrato*/

  void apresentar() {
    print("Nome .. Idade ..");
  }
}

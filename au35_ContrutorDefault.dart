class Animais {
  late String nome;
  late String especie;
  late String raca;
  /*Construtores Default*/
  // Ex: 1 => Animais() : nome = "Zeus", especie = "Canis lupus familiaris";
  // Ex: 2 => Animais(){nome = "Zeus", especie= "Canis lupus familiaris"}
  // Ex: 3 => Animais(){String nome, String especie}{this.nome = nome, this.especie = especie}
  // Ex: 4 => Animais(this.nome, this.especie, this.raca);

  //Construtores Nomeados
  Animais.especie(this.especie);
  Animais.nome(this.nome);
  Animais.raca(this.raca);
}

void main() {
  var animal_nome = Animais.nome("Zeus");
  var animal_especie = Animais.especie("Canis lupus familiaris");
  var animal_raca = Animais.raca("Fila Brasileiro");

  assert(animal_nome.nome == "Zeus");
  assert(animal_raca.raca == "Fila Brasileiro");
  assert(animal_especie.especie == "Canis lupus familiaris");
}

import 'dart:io';

class Animal {
  String _nome;
  int _idade;
  bool _disponivel;
  String _expecie;

  Animal(this._nome, this._idade, this._disponivel, this._expecie);

  get getNome => this._nome;
  get getIdade => this._idade;
  get getDisponivel => this._disponivel;
  get getExpecie => this._expecie;

  set setNome(String nome) => this._nome = nome;
  set setIdade(int idade) => this._idade = idade;
  set setDisponivel(bool disponivel) => this._disponivel;
  set setExpecie(String expecie) => this._expecie;
}

class Cadastro {
  void funCatalogoAnimaisPrint() {
    print("""Expecies Permitidas
        [1]🐯 -Tigre (Panthera tigris)
        [2]🦘 -Canguru (Osphranter rufus)
        [3]🐿️ -Esquilo (Sciuridae) 
        [4]🦓 -Zebra (Equus quagga)""");
  }

  String funCatalogoAnimais(int numeroCorrespondente) {
    try {
      if (numeroCorrespondente == 1) {
        print("**🐯 Tigre (Panthera tigris)**");
        return "**🐯 Tigre (Panthera tigris)**";
      } else if (numeroCorrespondente == 2) {
        print("**🦘Canguru (Osphranter rufus)**");
        return "**🦘Canguru (Osphranter rufus)**";
      } else if (numeroCorrespondente == 3) {
        print("**🐿️ Esquilo (Sciuridae) **");
        return "**🐿️ Esquilo (Sciuridae) **";
      } else if (numeroCorrespondente == 4) {
        print("**🦓 -Zebra (Equus quagga) **");
        return "**🦓 -Zebra (Equus quagga) **";
      } else {
        print("** Valor inválido **");
        return "incorreto";
      }
    } catch (erro) {
      return "Ocorreu um erro";
    }
  }
}

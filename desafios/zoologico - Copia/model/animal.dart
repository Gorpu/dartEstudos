//O animal tem que ter nome, idade, cansado, tipoSom
//comportamentos: correr, caminhar, parar, fazer som
//mostrar os dados do animal.
class Animal {
  String _nome;
  int _idade;
  bool _cansado;
  String _tipoSom;

  Animal(this._nome, this._idade, this._cansado, this._tipoSom);

  get getNome => this._nome;
  get getIdade => this._idade;
  get getCansado => this._cansado;
  get getTipoSom => this._tipoSom;

  set setNome(String nome) {
    this._nome = nome;
  }

  set setIdade(int idade) {
    this._idade = idade;
  }

  set setCansado(bool cansado) {
    this._cansado = cansado;
  }
}

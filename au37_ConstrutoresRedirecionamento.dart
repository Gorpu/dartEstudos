class Clientes {
  String? nome;
  String? sobrenome;
  int level;

  Clientes.Cadastrar(this.nome, this.sobrenome, [this.level = 0]);

  factory Clientes(String nome, String sobrenome) {
    return ClientesUpScore.defaultsConf(nome, sobrenome);
  }
}

class ClientesUpScore extends Clientes {
  ClientesUpScore.defaultsConf(String nomeCliente, String sobrenomeCliente)
    : super.Cadastrar(nomeCliente, sobrenomeCliente) {
    level += 10;
  }
  // Level padrão 10 para VIP
}

void main() {
  var retorno = Clientes("Liedson", "Ferreira");
  print("Nome: ${retorno.nome}");
  print("Level: ${retorno.level}");
}

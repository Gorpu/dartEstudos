class Funcionarios {
  late final String nome;

  Funcionarios.cadastrar(String nome) {
    this.nome = nome;
  }
}

class Departamento extends Funcionarios {
  late String funcao = "Serviços Gerais";
  Departamento(String nome1) : super.cadastrar(nome1);
}

void main() {
  var departamento = Departamento("Liedson");
  print(departamento.funcao);
}

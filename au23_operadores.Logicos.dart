void main() {
  Sessoes cliente = Sessoes();
  /*Info pessoa */
  cliente.nome = "Maria";
  cliente.dataNasc = 2010 - 01 - 01;
  cliente.estudante = true;
  cliente.pagamento = false;

  int? autoriazacao = int.tryParse("${cliente.dataNasc}") ?? 0;
  if (autoriazacao <= 2007 - 01 - 01 && cliente.estudante == true) {
    cliente.verFilme = "Invocação do Mal";
    cliente.horarios = 14;
    cliente.valores = 22.99;
    cliente.assento = 42;
    print("""
    ${"-" * 20}
    -Sessão Estudante info-
    ${"-" * 20}
    filme: ${cliente.verFilme}
    horario: ${cliente.horarios}
    assento: ${cliente.assento}
    ${"-" * 20}""");
  }
  if (autoriazacao >= 2007 - 01 - 01) {
    print("*Proibido para menores*");
  }
  if (autoriazacao >= 2007 - 01 - 01 || cliente.pagamento != true) {
    print("""
    ${"-" * 20}
    *Não foi possivel concluir*
    ${"-" * 20}
    Idade: ${(autoriazacao <= 2007 - 01 - 01) ? "Ok..." : "Pendente..."}
    Pagamento: ${(cliente.pagamento == true) ? "Ok..." : "Pendente..."}""");
  }
  if (autoriazacao <= 2007 - 01 - 01 && cliente.estudante == false) {
    cliente.verFilme = "Invocação do Mal";
    cliente.horarios = 14;
    cliente.valores = 22.99;
    cliente.assento = 60;
    print("""
    ${"-" * 20}
    -Sessão Padrão info-
    ${"-" * 20}
    filme: ${cliente.verFilme}
    horario: ${cliente.horarios}
    acento: ${cliente.assento}
    ${"-" * 20}""");
  }
}

class Clientes {
  String? nome;
  int? cpf;
  int? dataNasc;
  int? cep;
  bool estudante = false;
}

class Sessoes extends Clientes {
  String? verFilme;
  int? horarios;
  double? valores;
  int? assento;
  bool? pagamento;
}

import 'dart:io';

void main() {
  print("O tipo num é int: ${num is int}");
  print("O numero 10 não é um int: ${10 is! int}");

  dynamic pessoa = Trabalho();
  print("""
Nome funcionario: ${(pessoa as Trabalho).funcionarios}
Idade: ${(pessoa as Cadastro).idade}""");
}

class Cadastro {
  var nome = "Liedson";
  var idade = 23;
}

class Trabalho extends Cadastro {
  var funcionarios = Cadastro().nome;
}

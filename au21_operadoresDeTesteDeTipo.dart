import 'dart:io';
/*
  ==	Igualdade
  !=	Diferença
  >	  Maior que
  <	  Menor que
  >=	Maior ou igual
  <=	Menor ou igual
  !   Negação
*/

void main() {
  print("Toda String é um Object: ${String is Object}");
  print("Nem todo Object é uma String: ${Object is! String}");

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

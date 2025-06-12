//no main dart colocar a ListAnimais
//o usuario deve colocar o nome, idade, cansado, tipoSom
import 'dart:io';
import '../zoologico 2/model/animal.dart';

void main() {
  bool executar = true;
  List<Animal> listAnimal = [];

  while (executar == true) {
    print("""""");
    print("\n" * 100 + "*" * 10 + "Quantum NatZoo (Cadastro)🐯🦍" + "*" * 10);

    Cadastro().funCatalogoAnimaisPrint();
    print("Selecione o Animal:");

    String expecie = stdin.readLineSync() ?? "(Nome inválido)";
    int expecieInt = int.parse(expecie);

    var catalogoExpecies = Cadastro().funCatalogoAnimais(expecieInt);

    print(">>Nome do Animal");
    String nome = stdin.readLineSync() ?? "(Nome inválido)".toUpperCase();

    print(">>Qual a idade do(a) $nome?");
    String? idade = stdin.readLineSync();
    int idadeParseada = int.parse(idade ?? "(Idade inválida)");

    late bool disponivel;
    print(">>Disponivel para visitantes: (S/n)");
    String? cansadoInput = stdin.readLineSync()?.toLowerCase() ?? "true";
    if (cansadoInput == "s") {
      disponivel = true;
    } else {
      disponivel = false;
    }
    //Ficha Cadastro
    Animal nomeCadastroGet = Animal(
      nome,
      idadeParseada,
      disponivel,
      catalogoExpecies,
    );

    listAnimal.add(nomeCadastroGet);

    void carregarLista() {
      for (Animal itens in listAnimal) {
        print("*" * 20);
        print("Nome: ${itens.getNome}");
        print("Idade: ${itens.getIdade}");
        print("Expecie: ${itens.getExpecie}");
        print("Disponivel a visitantes: ${itens.getDisponivel}");
      }
    }

    print("\n" * 100 + "**Seus Animais**");
    carregarLista();
    print("*" * 20);

    print("Digite Sim para cadastrar outro animal ou [ENTER] para encerar");
    String continuar = stdin.readLineSync()?.toLowerCase() ?? "";
    if (continuar == "sim") {
      executar = true;
    } else {
      print("O programa foi encerrado!!!");
      executar = false;
    }
  }
}

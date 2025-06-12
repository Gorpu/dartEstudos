//no main dart colocar a ListAnimais
//o usuario deve colocar o nome, idade, cansado, tipoSom
import 'dart:io';
import 'model/animal.dart';

void main() {
  bool executar = true;
  List<Animal> listAnimal = [];

  while (executar == true) {
    print("\n" * 100 + "*" * 10 + "Quantum NatZoo" + "*" * 10);
    print(">>Nome");
    String nome = stdin.readLineSync() ?? "(Nome inválido)";

    print(">>Qual a idade do $nome?");
    String? idade = stdin.readLineSync();
    int idadeParseada = int.parse(idade ?? "(Idade inválida)");

    late bool cansado;
    print(">>Cansado (S/n)");
    String? cansadoInput = stdin.readLineSync()?.toLowerCase() ?? "true";
    if (cansadoInput == "s") {
      cansado = true;
    } else {
      cansado = false;
    }

    print(">>Som Animal");
    String somAnimalInput = stdin.readLineSync() ?? "(Som inválido)";

    //Ficha Cadastro
    Animal nomeCadastroGet = Animal(
      nome,
      idadeParseada,
      cansado,
      somAnimalInput,
    );
    listAnimal.add(nomeCadastroGet);

    void carregarLista() {
      for (Animal itens in listAnimal) {
        print("*" * 20);
        print("Nome: ${itens.getNome}");
        print("Idade: ${itens.getIdade}");
        print("Cansado: ${itens.getCansado}");
        print("Som Animal: ${itens.getTipoSom}");
      }
    }

    print("\n" * 100 + "**Seus Animais**");
    carregarLista();
    print("*" * 20);

    print("Digite Sim para cadastrar outro animal ou [ENTER] para encerrar");
    String continuar = stdin.readLineSync()?.toLowerCase() ?? "";
    if (continuar == "sim") {
      executar = true;
    } else {
      print("O programa foi encerrado!!!");
      executar = false;
    }
  }
}

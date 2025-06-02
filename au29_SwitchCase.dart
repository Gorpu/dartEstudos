import 'dart:io';

void main() {
  Estados.call();
}

void Estados() {
  /*O Switch -> Case -> Break*/
  print("Pesquisar estados:");
  String? userInput = stdin.readLineSync()?.toLowerCase();
  switch (userInput) {
    case "belem":
      print("->Pará");
      break;
    case "tocantins":
      print("->Palmas");
      break;
    case "goiás":
      print("->Goiânia");
      break;
    default:
      print("Nome desconhecido ou incorreto: \n$userInput");
  }
}

num somar(num v1, num v2) {
  return v1 + v2;
}

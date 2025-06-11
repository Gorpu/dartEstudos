void main() {
  /*Carregando lista com for*/
  List<String> carros = ["Golf GTI '97'", "Gurgel X-15", "Corolla XEI '93'"];
  for (var i in carros) {
    if (i == "Golf GTI '97'") {
      print("Carro: $i");
      //Se encontrar o modelo o break é assionado
      break;
    } else {
      print("Modelo não encontrado");
    }
    ;
  }
}

void main() {
  //Função anônima ou lambda são funções que não recebem
  //nome ex:

  //1-Criamos uma list que recebe strings
  List<String> carros = ["Civic", "Chevette", "Caravan"];

  //2-As listas tem um método chamado forEach()

  carros.forEach(
    //3- O for each recebe uma função anônima dentro dele
    (meusCarros) {
      print("${carros.indexOf(meusCarros)}: $meusCarros");
    },
  );
}

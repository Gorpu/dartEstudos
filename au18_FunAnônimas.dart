//1-Criamos uma list que recebe strings
List<String> carros = ["Civic", "Chevette", "Caravan"];

void main() {
  //Função anônima ou lambda são funções que não recebem
  //nome ex:

  //2-As listas tem um método chamado forEach()
  /*Usando função anônima*/
  carros.forEach(
    //3- O for each recebe uma função anônima dentro dele
    (meusCarros) {
      print("${carros.indexOf(meusCarros)}: $meusCarros");
    },
  );

  /*Usando a variavel função*/
  void Function(String) actions = (p0) {
    print("${carros.indexOf(p0)}: $p0");
  };
  carros.forEach(actions);

  carros.forEach(action2);
}

/*Usando função padrão*/
void action2(String v1) {
  print("${carros.indexOf(v1)}: $v1");
}

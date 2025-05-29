void main() {
  Map<String, Map<String, String>> colectionMapDart =
      Map<String, Map<String, String>>();
  Map<String, String> sintaxeInstuctions = Map<String, String>();
  sintaxeInstuctions["const"] =
      "\nRecebe valores conhecidos no escopo em que\né executado (não pode receber retorno de funções por\nexemplo pois ele assume que mesmo não mudando\n esse valor podem mudar) não podendo fazer\n alterações";
  sintaxeInstuctions["final"] =
      "\nPode receber valor fora do escopo como o retorno\nde uma função por exemplo porém imutáveis no tempo\nde execução";
  colectionMapDart["Dart Dictionary"] = sintaxeInstuctions;
  print(colectionMapDart);
  colectionMapDart.forEach((key, value) {
    print("\n${key}:\n-$value\n");
  });
}

List<dynamic> valoresDiversos = [
  1,
  2.0,
  3.0,
  5,
  6,
  10,
  6.0,
  3,
  5,
  8,
  "Gustavo Lima",
  "Caneta Azul",
  "Lula",
  "Bolsonaro",
  intIsNotNum,
  numIsNotInt,
  numIsBool,
  objectIsString,
  boolIsString,
];

List<num> numList = [];
List<num> numListOrdenada = [...numList]..sort();
List<double> doubleList = [];
List<int> intList = [];
List<String> stringsList = [];
List<String> stringsListOrdenada = [...stringsList]..sort();

//Bools Listas
List<bool> boolListTrue = [];
List<bool> boolListFalse = [];

//Variaveis bools
bool intIsNotNum = int is! num;
bool numIsNotInt = num is! int;
bool numIsBool = num is bool;
bool objectIsString = Object is String;
bool boolIsString = bool is String;

List<dynamic> valoresDiversosOrdenados = [];
Map<String, dynamic> processarListaMista(List<dynamic> lista) {
  Map<String, dynamic> mapListaMista = {};
  num contadorNum = 0;
  var contadorInt = 0;
  var contadorDouble = 0.0;

  print("*" * 20);
  for (var item in lista) {
    if (item is int) {
      intList.add(item);
      numList.add(item);
      contadorInt += item;
      contadorNum += item;
    } else if (item is double) {
      doubleList.add(item);
      numList.add(item);
      contadorDouble += item;
      contadorNum += item;
    } else if (item is String) {
      stringsList.add(item);
    } else if (item is bool && item == true) {
      boolListTrue.add(item);
    } else if (item is bool && item == false) {
      boolListFalse.add(item);
    }
  }
  /*Separador Ints e soma*/
  valoresDiversosOrdenados.addAll([
    ...numList..sort(),
    stringsListOrdenada,
    ...boolListTrue,
    ...boolListFalse,
  ]);
  print("Valores ordenados");
  valoresDiversosOrdenados.forEach((element) {
    print(element);
  });
  print("*" * 20);

  mapListaMista = {
    "Lista ints": intList,
    "Lista double": doubleList,
    "Lista todos os numeros": numList,
    "Lista todos os numeros (Ordenados)": numListOrdenada,
    "somaNumeros": contadorNum,
    "Soma int": contadorInt,
    "Soma double": contadorDouble,
    "Strigs Concatenadas (Candidatos Presidencia)":
        "${stringsList[0]}, " + "${stringsList[1]}, " + "${stringsList[2]}, ",
    "Contagem True": boolListTrue.length,
    "Contagem False": boolListFalse.length,
    "Dados Lista Original": valoresDiversos,
    "Dados Lista Original (Ordenada)": valoresDiversosOrdenados,
  };
  print("*" * 10 + "Map" + "*" * 10);
  mapListaMista.forEach((k, v) {
    print("$k : $v");
  });
  return mapListaMista;
}

void main() {
  print(valoresDiversos);
  processarListaMista(valoresDiversos);
}

import '../au6_Modificador Late.dart';

Map<String, dynamic> processarListaMista(List<dynamic> lista) {
  List<dynamic> valoresDiversosOrdenados = [];
  //Separadores
  List<num> numList = [];
  List<String> stringsList = [];
  List<bool> boolsList = [];

  Map<String, dynamic> mapListaMista = {};
  for (var item in lista) {
    if (item is num) {
      numList.add(item);
    } else if (item is String) {
      stringsList.add(item);
    } else if (item is bool) {
      boolsList.add(item);
    }
  }
  boolsList = [
    ...boolsList.where((valor) => valor == false),
    ...boolsList.where((valor) => valor == true),
  ];

  //Aqui eu organizei a lista
  valoresDiversosOrdenados.add(boolsList);

  mapListaMista = {
    /**n1 é o "acumulador" funciona como contador interno e o n2 seria o proximo valor da lista*/
    "somaNumeros": numList.reduce((n1, n2) => n1 + n2),
    "textoConcatenado": '"${stringsList.join(' ')}"',
    "totalTrue": boolsList,
    "listaOrdenada": valoresDiversosOrdenados,
  };
  return mapListaMista;
}

void main() {
  List<dynamic> valoresDiversos = [
    7,
    3.5,
    10,
    "Olá",
    true,
    false,
    false,
    true,
    "Mundo",
    "Acerola",
  ];
  var resposta = processarListaMista(valoresDiversos);
  print(resposta);
}

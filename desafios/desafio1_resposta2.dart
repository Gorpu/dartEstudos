Map<String, dynamic> processarListaMista(List<dynamic> lista) {
  List<dynamic> valoresDiversosOrdenados = [];
  List<num> numList = [];
  List<String> stringsList = [];
  List<bool> boolsList = [];

  Map<String, dynamic> mapListaMista = {};
  for (var item in lista) {
    if (item is num) {
      numList.add(item);
      numList.sort();
    } else if (item is String) {
      stringsList.add(item);
      //stringsListOrdenada.add(item);
      //stringsListOrdenada.sort();
    } else if (item is bool) {
      boolsList.add(item);
    }
  }
  boolsList.forEach((v) => boolsList.where((valor) => valor == false));
  boolsList.forEach((v) => boolsList.where((valor) => valor == true));
  boolsList.sort((a, b) => b ? 1 : -1);
  valoresDiversosOrdenados.addAll(numList);
  //valoresDiversosOrdenados.addAll(//stringsListOrdenada);
  valoresDiversosOrdenados.addAll(boolsList);

  mapListaMista = {
    "somaNumeros": numList.reduce((acumulador, n1) => acumulador + n1),
    "textoConcatenado": '"${stringsList.join(' ')}"',
    "totalTrue": boolsList.where((b) => b).length,
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
    true,
    "Mundo",
  ];
  var resposta = processarListaMista(valoresDiversos);
  print(resposta);
}

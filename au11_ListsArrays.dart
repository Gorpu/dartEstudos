void main() {
  List<int> listInt = [1, 2, 3];
  List<String> listString = ["Quatro", "5"];
  List<dynamic> dynaList = [
    11,
    "10",
    9,
    "OITO".toUpperCase(),
    "Sete567".length,
    "SEIS",
  ];

  List<dynamic> allList = [
    ...listInt,
    listString[0],
    listString[1],
    dynaList.reversed,
  ];
  allList.addAll([12, 13]);
  print(allList);
}

String string1 = "Dart";
void main() {
  int retornoLength = RetornoQuantLetras();
  List<dynamic> retornoList = RetornoViceVersa();
  String retornoIndice =
      "\nIndices:\n${String.fromCharCode(retornoList[0]).toUpperCase()} -0\n${String.fromCharCode(retornoList[1]).toUpperCase()} -1\n${String.fromCharCode(retornoList[2]).toUpperCase()} -2\n${String.fromCharCode(retornoList[3]).toUpperCase()} -3\n";
  print("a palavra $string1 tem $retornoLength letras: ${retornoIndice}");
}

int RetornoQuantLetras() {
  return string1.length;
}

List<dynamic> RetornoViceVersa() {
  return string1.codeUnits;
}

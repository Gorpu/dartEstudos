void main() {
  num? value;
  //numero(numeroVar: value);
  numero(numeroVar: 50);
  numero();
  numero(numeroVar: null);
}

void numero({num? numeroVar = 10}) => print("Numero: $numeroVar");

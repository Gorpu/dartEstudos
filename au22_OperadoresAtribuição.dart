void main() {
  num? numero = NumeroReturn();
  print(numero is num?);
  print(numero ?? "valor diferente de null se mudar o tipo de 'numero'");
  print(numero is num);
}

int? NumeroReturn() => null;

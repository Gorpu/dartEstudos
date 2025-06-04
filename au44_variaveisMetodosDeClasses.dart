class MeuObjeto {
  //Quando usamos o static não precisamos usar um método construtor
  //para essa váriavel.
  static var objeto;
}

void main() {
  var resultado = MeuObjeto.objeto;
  resultado = "Casa";
  print(resultado);
}

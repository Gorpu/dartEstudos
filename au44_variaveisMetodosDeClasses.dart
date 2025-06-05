class MeuObjeto {
  //Quando usamos o static não precisamos usar um método construtor
  //para essa váriavel no costrutor. 
  static var objeto;
}

void main() {
  //Não precisamos aqui na linha abaixo criar o contrutor para essa classe
  //e sim já chamamos o atributo
  var resultado = MeuObjeto.objeto;
  resultado = "Casa";
  print(resultado);
}

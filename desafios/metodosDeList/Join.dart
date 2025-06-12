/**
 * Join => O join funciona como um separador de elementos ele é um método de List.
 * Com ele podemos adicionar outra string como separador. entre os valores da List. 
 */

void main() {
  JoinString();
}

void JoinString() {
  var listDynamic = [1, 2, "Mundo"];
  print(listDynamic.join(" "));
}

void main() {
  //final => Uma vez que a variavel recebe um valor ele
  //não muda até que o programa seja executado novamente
  //caso tenha alguma alteração. Ou seja não podemos
  //reatribuir valor a tal variavel "final".
  final finalValue = getValor();

  // const => No Dart, uma constante (`const`) é semelhante ao `final`,
  // porém com uma diferença importante: ela só pode receber valores
  // que são totalmente determinados em tempo de compilação.
  //
  // Ou seja, uma variável `const` não pode receber o retorno de uma função,
  // como em: const valor = getValor();
  // Isso resultaria em erro, pois o Dart assume que funções podem
  // retornar valores diferentes em tempo de execução.
  //
  // Em resumo, valores `const` devem ser completamente estáticos
  // e conhecidos no momento da compilação.
  const constValue = "Dart 20";
  final dynamic value;
  value = 1;
  print(value);
  print(finalValue);
  print(constValue);
}

//Nota: Em Dart, o operador => não significa "igual maior"
// (como >=, que é o operador de "maior ou igual").
//O => é chamado de "arrow syntax" (sintaxe de seta) e
// é usado para escrever funções ou métodos de forma mais
// concisa, quando há apenas uma expressão no corpo da função.
//Seria o mesmo que:
//String getValor() {
//  return "Dart 10";
//}
String getValor() => "Dart 10";

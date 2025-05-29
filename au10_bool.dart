void main() {
  var ativo = 10;

  if (ativo.runtimeType == bool) {
    print("É um ${ativo.runtimeType}");
  } else {
    print("Tipo incorreto, $ativo um ${ativo.runtimeType}");
  }
}

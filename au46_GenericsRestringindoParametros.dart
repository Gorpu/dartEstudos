abstract class Produtos<K, V> {
  void addProduto(K value);
}

class ProdutosConsumoInterno extends Produtos<String, String> {
  Map<String, String>? produtosMap = {};
  String? nome;
  String? tipo = "Consumo Interno";

  @override
  void addProduto(String value) {
    produtosMap?.addAll({"$nome": "$tipo"});
    print(produtosMap);
  }
}

class ProdutosPromocionais extends Produtos<String, String> {
  Map<String, String>? produtosMap = {};

  String? nome;
  String? tipo = "Promocionais";

  @override
  void addProduto(String value) {
    produtosMap?.addAll({"$nome": "$tipo"});
    print(produtosMap);
  }
}

class ProdutosEan extends Produtos<int, String> {
  Map<String, int?> produtosMap = {};
  String? nome;
  int? Ean;

  @override
  void addProduto(int value) {
    produtosMap.addAll({"$nome": Ean});
    print("**");
    produtosMap.forEach((key, value) {
      print("\n${key}:\n-$value\n");
    });
  }
}

void main() {
  var addNome = ProdutosConsumoInterno();
  addNome.addProduto("Frango Empanado");

  var addEan = ProdutosEan();
  addEan.addProduto(235);
  print("Nome: ${addNome}\nCodigo${addEan.Ean}");
}

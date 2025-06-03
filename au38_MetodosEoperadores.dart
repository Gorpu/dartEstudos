class Itens {
  int? id;
  String? nome;
  late double valor;

  void Produto(int id, String nome, double valor) {
    this.id = id;
    this.nome = nome;
    this.valor = valor;
    print("*" * 20);
    print("Nome: ${this.nome} R\$${this.valor}");
    print("*" * 20);
  }

  double operator +(Itens item) {
    return this.valor + item.valor;
  }
}

void main() {
  Caixa.call();
}

void Caixa() {
  Itens item1 = Itens();
  Itens item2 = Itens();

  item2.Produto(1, "MOLETOM M ADIDA", 119.99);
  item1.Produto(1, "Camisa M BOSS", 59.99);
  print("*" * 20);
  print("TOTAL: R\$ ${item1.valor * item2.valor}");
  print("*" * 20);
}

import 'dart:io';

abstract class KambanRepositoty {
  void AddMercadoria();
  void RemoveMercadoria();
}

mixin PedidoDeCompraView {
  Map<String, String> _listPedidos = {};
  void VerPedido() {
    print("*" * 20);
    _listPedidos.forEach((key, value) {
      print("$key: R\$$value");
    });
  }

  void GerarPedido(Map<String, String> item) {
    print("**Item: Adcionado:");
    _listPedidos.addAll(item);
  }
}

class KambanModel extends KambanRepositoty with PedidoDeCompraView {
  @override
  void AddMercadoria() {}

  @override
  void RemoveMercadoria() {}
}

void main() {
  print("Nome do Item:");
  String? itemName = stdin.readLineSync();
  print("Valor do Item:");
  String? itemPrice = stdin.readLineSync();

  var pedidoCompra = KambanModel();
  pedidoCompra.GerarPedido({"$itemName": "$itemPrice"});
  pedidoCompra.VerPedido();
}

typedef itenFrutas = List<Map<String, dynamic>>;
typedef itenAcougue = List<Map<String, dynamic>>;

class Itens {
  List<String> itensListFrutas = ["Maça", "Laranja", "Pera"];
  List<String> itemsList = [];
}

class EsteiraRepository {
  var i = Itens().itensListFrutas;
  void Esteira() {
    itenFrutas itens = [];
    for (var iten in i) {
      itens.add({iten: "Frutas"});
    }
    itens.forEach(print);
  }
}

void main() {
  var retorno = EsteiraRepository();
  retorno.Esteira();
}

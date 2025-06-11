class ItemClass {
  late final name;
  ItemClass(this.name);
  void ItemClassPrint(String name) {
    print("Nome: $name");
  }
}

class ItensRepository {
  Future<ItemClass> loadItem(String item) {
    return Future.value(ItemClass(item)); //ln 11
  }
}

void main() {
  var loadRepository = ItensRepository();
  loadRepository.loadItem("Maçã").then((item) {
    item.ItemClassPrint(item.name);
  });
}

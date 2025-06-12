void main() {
  Future.sync(() {
    print("Primeiro");
    return "Quarto";
  }).then(print);
  print("Segundo");
  print("Terceiro");
  Future.microtask(() {
    print("Quinto");
    return "Sexto";
  }).then(print);
}

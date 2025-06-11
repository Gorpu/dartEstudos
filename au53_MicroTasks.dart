void main() async {
  print("primeiro");
  print("segundo");
  Future(() => "sexto").then(print);
  Future.sync(() => "quarto").then(print);
  Future.microtask(() => "quinto").then(print);
  print("terceiro");
}

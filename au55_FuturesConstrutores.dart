void main() async {
  // Assíncrono - microtask, roda logo após o código síncrono terminar
  Future.microtask(() {
    print("Assíncrono 1: (Microtask 1) - 3"); // assíncrono
    return "Assíncrono 2: (Then Microtask 1) - 4"; // assíncrono (.then)
  }).then((v) => print(v)); // assíncrono

  // Síncrono - print direto na linha
  print("Síncrono 1: (Print) - 1");

  // Síncrono - Future.sync executa imediatamente o corpo
  Future.sync(() {
    print("Síncrono 2: (Future Sync 1) - 2"); // síncrono
    return "Assíncrono 3: (Then Sync 1) - 5"; // assíncrono (.then)
  }).then((v) => print(v)); // assíncrono

  // Assíncrono - Future padrão, roda no próximo event loop
  Future(() {
    print("Assíncrono 4: (Future 1) - 6"); // assíncrono
    return "Assíncrono 5: (Then Future 1) - 7"; // assíncrono (.then)
  }).then((v) => print(v)); // assíncrono

  // Await: pausa a execução aqui até o Future + then terminarem
  await Future(() {
    print("Assíncrono 6: (Await Future 1) - 8"); // assíncrono
    return "Assíncrono 7: (Then Await 1) - 9"; // assíncrono (.then)
  }).then((v) => print(v)); // assíncrono (await espera o .then também)

  // Assíncrono - microtask
  Future.microtask(() {
    print("Assíncrono 8: (Microtask 2) - 12"); // assíncrono
    return "Assíncrono 9: (Then Microtask 2) - 13"; // assíncrono (.then)
  }).then((v) => print(v)); // assíncrono

  // Síncrono - print direto
  print("Síncrono 3: (Print) - 10");

  // Síncrono - Future.sync executa corpo imediatamente
  Future.sync(() {
    print("Síncrono 4: (Future Sync 2) - 11"); // síncrono
    return "Assíncrono 10: (Then Sync 2) - 14"; // assíncrono (.then)
  }).then((v) => print(v)); // assíncrono

  // Await - espera Future + then terminarem
  await Future(() {
    print("Assíncrono 11: (Await Future 2) - 15"); // assíncrono
    return "Assíncrono 12: (Then Await 2) - 16"; // assíncrono (.then)
  }).then((v) => print(v)); // assíncrono

  // Assíncrono - Future padrão
  Future(() {
    print("Assíncrono 13: (Future 2) - 18"); // assíncrono
    return "Assíncrono 14: (Then Future 2) - 19"; // assíncrono (.then)
  }).then((v) => print(v)); // assíncrono

  // Síncrono - print direto
  print("Síncrono 5: (Print) - 17");
}

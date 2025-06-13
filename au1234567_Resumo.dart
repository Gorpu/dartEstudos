void main() async {
  cadastroUsuario();
}

Future<bool> cadastroUsuario() async {
  int incrementOneSecond = 1;
  List<String> listaNomes = ["Emanoel", "Maria", "João"];
  String usuario = "Liedson";

  await Future.delayed(Duration(seconds: incrementOneSecond++));
  print("(25%) Carregando Informações...");

  await Future.delayed(Duration(seconds: incrementOneSecond++));
  print("(50%) Carregando Informações...");
  print("(60%) Carregando Informações...");

  await Future.delayed(Duration(seconds: incrementOneSecond++));
  print("(70%) Carregando Informações...");
  if (listaNomes.contains(usuario)) {
    throw Exception("Usúario Cadastrado");
  }
  if (listaNomes.contains(" ")) {
    throw Exception("Nome não deve ter espaços");
  }
  if (usuario.length >= 4) {
    throw Exception("Usúario deve ter no minimo 5 caracteres");
  } else {
    listaNomes.add(usuario);
    print("Usuario Cadastrado");
    await Future.delayed(Duration(seconds: incrementOneSecond++));
    print("Programa Finalizado");
  }
  return true;
}

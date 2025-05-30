void main() {
  cadastros(id: 1, "Liedson", email: "liedson@gmail.com");
}

void cadastros(
  String nome, {
  required id,
  String? sobrenome,
  String telefone = "Número não informado",
  required email,
}) {
  print(
    "\nId: $id" +
        "\nNome: $nome" +
        "\nSobrenome: ${sobrenome ?? "*Sobrenome Vazio*"}" +
        "\nTelefone: $telefone",
  );
}

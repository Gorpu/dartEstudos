void main {
  cadastro("liedson@gmail.com", 63,id: 1, nome: "Liedson", sobrenome: "Rocha");
}
void cadastro(
  String email,
  num cep,
  {required id,
  required String nome,
  required String sobrenome,
  dynamic telefone = "Sem Número",
   }
){
  print(
    "Id: $id"
    +" Nome: $nome"
    +" Sobrenome: $sobrenome"
    +" Telefone: $telefone"
    +" Email: $email"
    );
}
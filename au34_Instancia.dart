class Aluno {
  late String nome; //  <-Variaveis de Instância
  late String turma; //  <-Variaveis de Instância

  Aluno(this.nome, this.turma); // <-Método Construtor
}

void main() {
  Aluno aluno = Aluno("Ana", "2 Ano B matutino");
  print(aluno.nome);
  print(aluno.turma);
}

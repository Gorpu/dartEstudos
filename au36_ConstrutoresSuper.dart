class Alunos {
  late String nome;
  late String sobrenome;

  Alunos.nome(String nome) : nome = nome;
  Alunos.sobrenome(String sobrenome) : sobrenome = sobrenome;
}

class Turma extends Alunos {
  late String curso;
  late String turno;

  //Chamando construtores da super classe Alunos
  Turma.alunoNome(String TurmaNome) : super.nome(TurmaNome);
  Turma.alunoSobrenome(String TurmaSobrenome) : super.sobrenome(TurmaSobrenome);
}

void main() {
  var nome = Turma.alunoNome("Liedson");
  var sobrenome = Turma.alunoSobrenome("Rocha Ferreira");
  print("Nome : ${nome.nome}\nSobrenome : ${sobrenome.sobrenome}");
}

void main() async {
  try {
    final resposta1 = await Future.value(6);
    final resposta2 = await Future.value(2);
    print(resposta2 + resposta1);
  } catch (e) {
    print("Ocorreu um erro: $e");
  } finally {
    print("Processo foi finalizado");
  }
}

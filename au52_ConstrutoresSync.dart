/**
 * Sync = No dart os processos do tipo sync são empurrados para o final da fila mesmo que sejam
 * definidos antes de qualquer outra coisa no código já o await é executado primeiro.
 */

void main() {
  var name = "Liedson";
  var idade = 23;
  var resposta = Future.sync(() {
    var response = "...Resposta Carregada\nNome: $name\nIdade: $idade ";
    return response;
  }).then(print);
  print("fluxo...1");
  print("fluxo...2");
  print("fluxo...3");
}

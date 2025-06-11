/**
 * Alias => Os alias referenciam nossos import e evitam erros como classes com nomes igual.
 * Show => Show é para importar apenas o que eu desejo como uma função ou classe.
 * hide => Show é para esconder apenas o que eu desejo como uma função ou classe.
 */

import 'libraries/colored_latter.dart' as latters show Green;

void main() {
  latters.Green("Liedson Rocha");
}

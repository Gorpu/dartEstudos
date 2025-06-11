/**String buffer é uma jeito mas pratico para concatenação de strings
 *e faz isso de uma forma que poupa recurso da máquina
 */
void main() {
  const produtos = ["Laranja", "Banana", "Melancia"];
  const valores = [4.99, 6.99, 9.99];
  StringBuffer resultado = StringBuffer(); //String Buffer é instaciado
  for (int i = 0; i < valores.length; i++) {
    resultado.write(
      "Produtos ${produtos[i]} R\$${valores[i]}\n",
    ); //Chamamos o metodo write para
  }
  print(resultado);
}

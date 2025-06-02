void main() {
  var i = 0;
  while (i <= 11) {
    //While => Verifica a condição antes de executar.
    print("Indice (While): $i");
    i++;
  }

  //Do-While => Executa primeiro e verifica a condição depois
  do {
    print("Indice (do-while): $i");
    i++;
  } while (i < 20);
}

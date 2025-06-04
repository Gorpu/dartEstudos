enum Semaforo { green, red, yellow }

void main() {}
void verificarSemaforo() {
  var semaforo = Semaforo.red;
  if (semaforo == Semaforo.red) {
    print("Pare");
  }
  if (semaforo == Semaforo.yellow) {
    print("Atenção");
  }
  if (semaforo == Semaforo.green) {
    print("Siga");
  }
}

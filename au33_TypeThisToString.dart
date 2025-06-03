class Carro {
  @override
  String toString() {
    return "Tipo da Variável: ${this.runtimeType}";
  }
}

void main() {
  Carro civic = Carro();
  print(civic.toString());
}

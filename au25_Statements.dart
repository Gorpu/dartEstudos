void main() {
  String direcao = "tras";
  if (direcao == "direita") {
    print("Seguindo para o Centro");
  } else if (direcao == "esquerda") {
    print("Seguindo para Zona sul");
  } else if (direcao == 'frente') {
    print("Segindo para Porto Nacional");
  } else if (direcao == 'tras') {
    print("Segindo para Lajeado");
  } else {
    print("Rota desconhecida");
  }
}

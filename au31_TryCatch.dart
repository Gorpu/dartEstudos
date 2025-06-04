void main() {
  try {
    dynamic test = true;
    test++;
  } on NoSuchMethodError {
    print("Erro de método:");
  } catch (e) {
    print("Erro desconhecido");
  }
}

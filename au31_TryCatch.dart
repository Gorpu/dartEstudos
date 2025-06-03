void main() {
  try {
    dynamic test = true;
    test++;
  } on NoSuchMethodError catch (e) {
    print("Erro de método:");
  } catch (e) {
    print("Erro desconhecido");
  }
}

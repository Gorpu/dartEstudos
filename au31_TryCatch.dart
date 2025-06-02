void main() {
  try {
    dynamic test = true;
    test++;
  } on Exception catch (e) {
    print("Ocorreu um erro:");
  }
}

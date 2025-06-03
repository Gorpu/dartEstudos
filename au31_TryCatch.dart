void main() {
  try {
    dynamic test = true;
    test++;
  }on NoSuchMethodError catch (e) {
    print("Ocorreu um erro de método: Code error: 01");
  }catch(e){
    print("Erro desconhecido");
  }
}

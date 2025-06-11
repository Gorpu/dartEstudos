void futureThenCallback() async {
  try {
    final future = Future.value();
    //agurada com o then
    future
        //retorno esperado
        .then((value) => print(value))
        //retorno casó dê um erro
        .catchError((error) => print("Ocorreu um erro"))
        //continua a execução independente de erro no código ou não
        .whenComplete(() => print("Continuando"));
  } catch (e) {
    print("Ocorreu um erro");
  } finally {
    print("Fim da execução");
  }
}

//aguarda com o async e retorna a resposta no await
void asyncModoDeUso() async {
  final future2 = Future.value(5);
  final result = await future2;
  print(result);
}

void main() {
  futureThenCallback();
}

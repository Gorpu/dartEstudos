void main() {
  var v1 = Future.value(2);
  Future.value({"produto": v1.toString()}).then(print).then(print).then(print);
}

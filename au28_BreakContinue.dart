void main() {
  List<String> distros_Arch = [
    "Manjaro",
    "Steam OS",
    "Arch Linux",
    "Big Linux",
    "Arco Linux",
  ];
  for (var distro in distros_Arch) {
    if (distro.startsWith("A")) {
      //Imprime o que começa com a
      print(distro);
      continue;
    }
    //Contina imprimindo o que não começa com "A"
    print(distro);
  }

  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 12, 16, 13];
  var numPares = [];
  var numImpaes = [];
  for (int i in numeros) {
    if (i.isEven) {
      numPares.add(i);
      continue;
    }
    numImpaes.add(i);
  }
  ;
  print("Pares:$numPares Impares:$numImpaes");
}

  //distros_Arch.where((distro) => distro == "Manjaro").forEach((element) {
  //  print("Distro encontrada:\n$element");
  //});


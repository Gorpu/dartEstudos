library colored_latter; //Declaração explicita => Determina de forma explicita que esse arquivo é uma biblioteca
part 'cores.dart'; //Part => Indica que parte dessa biblioteca vem de outro arquivo

void Transform(String value) {
  List<String> colors = [
    "\x1b[31m",
    "\x1b[32m",
    "\x1b[33m",
    "\x1b[34m",
    "\x1b[37m",
    "\x1b[36m",
  ];
  final resetColor = "\x1b[0m";
  var valor = value.toUpperCase();

  int indexColorController = 0;
  StringBuffer valorTransform = StringBuffer();
  for (int i = 0; i < valor.length; i++) {
    if (indexColorController == colors.length) {
      indexColorController = 0;
    }
    valorTransform.write(
      "${colors[indexColorController]}${valor[i]}$resetColor",
    );
    indexColorController++;
  }
  print(valorTransform);
}



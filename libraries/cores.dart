part of 'colored_latter.dart'; //Part of => Indica que esse arquivo é uma parte de colored_latter.dart

class Part1 {}

class Part2 {}

void Green(String value) {
  var green = "\x1b[32m";
  var valor = value.toUpperCase();
  print(green + "$valor" + "\x1b[0m");
}

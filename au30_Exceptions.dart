import 'dart:io';

void main() {
  print("\$Login:\n");
  String? login = stdin.readLineSync();
  switch (login) {
    case "admin":
      print("#$login =>");
      break;
    default:
      throw Exception("Login Invalido!!!");
  }
}

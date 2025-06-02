import 'dart:io';

void main(List<String> args) {
  var userName = stdin.readLineSync();
  Map<String, dynamic> DartWikiSearchSearch = {"Strings": "Object"};
  for (var arg in args) {
    DartWikiSearchSearch.forEach((key, value) {
      if (arg == key) {
        print("$key\n - $value $userName");
      }
      ;
    });
  }
}

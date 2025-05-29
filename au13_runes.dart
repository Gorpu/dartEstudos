void main(List<String> args) {
  final Map<String, String> emojiCollection = Map<String, String>();
  List<String> emojis = ["😁", "😃", "😄"];
  for (String i in emojis) {
    String emoji = i;
    String code = "${i.runes}";
    emojiCollection["$emoji"] = "$code";
  }
  emojiCollection.forEach((key, value) {
    print("$key : code $value");
  });
}

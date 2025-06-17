void main() {
  var myList = List.generate(100, (index) => index + 1);

  for (int i in myList) {
    if (i <= 10) {
      print("$i :Kleine Zahl");
    } else if (i <= 60) {
      print("$i :Mittlere Zahl");
    } else {
      print("$i :Große Zahl");
    }
  }
}

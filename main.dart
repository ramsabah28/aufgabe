class Task {
  final gdStr = "Guten";
  final dayStr = "Tag";
  final worldStr = "Welt";
  final timeStr = "Zeit";
  final d_ = "!";
  final c = "Schöne";
  final morning = "Morgen";
  final S = "Heute";
  final spa = " ";

  final d = 20;
  final seven = 7;
  final twelve = 12;
  final a = 24;

  void printAll() {
    final strings = [gdStr, dayStr, worldStr, timeStr, d_, c, morning, S, spa];
    final numbers = [d, seven, twelve, a];

    for (var s in strings) print(s);
    for (var n in numbers) print(n);

  }

}

void main() => Task().printAll();

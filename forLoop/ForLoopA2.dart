List<int> points = [4, 5, 4, 2, 6, 6, 3];

void main() {
  int sum = 0;

  for (int point in points) {
    sum += point;
  }
  double average = sum / points.length;
  print('Der Durchschnitt ist: $average');
}

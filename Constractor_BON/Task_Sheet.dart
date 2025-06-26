class Person {
  static final String name = "Alex";
  static final int age = 22;
}

class Button {
  final String titel;
  final int width;
  final int height;
  final int radius;
  final int fontSize;
  final int padding;

  Button(
    this.titel,
    this.width,
    this.height,
    this.radius,
    this.fontSize,
    this.padding,
  );
}

class Rect {
  final int y;
  final int x;

  Rect({required this.y, required this.x});

  int calculatePerimeter() {
    return 2 * (this.x + this.y);
  }

  int calculateSpace() {
    return this.y * this.x;
  }
}

void main() {
  print(Person.name);
  print(Person.age);

  Button b = Button("In den Warenkorp", 96, 32, 4, 14, 8);

  print(
      "Button: ${b.titel}, ${b.width}, ${b.height}, ${b.radius}, ${b.fontSize}, ${b.padding}");
  Rect r = Rect(y: 5, x: 6);
  print(r.calculatePerimeter());
  print(r.calculateSpace());
}

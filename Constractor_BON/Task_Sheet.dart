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

void main() {
  print(Person.name);
  print(Person.age);


  Button b = Button("In den Warenkorp", 96, 32, 4, 14, 8);

  print("Button: ${b.titel}, ${b.width}, ${b.height}, ${b.radius}, ${b.fontSize}, ${b.padding}");
}

class Tool {
  String name;
  String material;
  double weight;

  Tool(this.name, this.material, this.weight);

  String info() {
    return '$name aus $material, Gewicht: ${weight}kg';
  }
}

class Hammer extends Tool {
  String hammerType;

  Hammer(String material, double weight, this.hammerType)
      : super('Hammer', material, weight);

  String use() {
    return 'Der $hammerType-Hammer schlägt einen Nagel ein.';
  }
}

class Saw extends Tool {
  double bladeLength;

  Saw(String material, double weight, this.bladeLength)
      : super('Säge', material, weight);

  String use() {
    return 'Die Säge mit ${bladeLength}cm Blattlänge sägt Holz.';
  }
}

// Superklasse Grocery
class Grocery {
  String name;
  String hersteller;
  double gewicht;
  double preis;

  Grocery(this.name, this.hersteller, this.gewicht, this.preis);

  String beschreibung() {
    return '$name von $hersteller, ${gewicht}g für ${preis}€';
  }
}

// Subklasse Milk
class Milk extends Grocery {
  double fettgehalt;

  Milk(String hersteller, double gewicht, double preis, this.fettgehalt)
      : super('Milch', hersteller, gewicht, preis);

  @override
  String beschreibung() {
    return '$name mit ${fettgehalt}% Fett von $hersteller, ${gewicht}ml für ${preis}€';
  }
}

// Subklasse Butter
class Butter extends Grocery {
  double salzgehalt;

  Butter(String hersteller, double gewicht, double preis, this.salzgehalt)
      : super('Butter', hersteller, gewicht, preis);

  @override
  String beschreibung() {
    return '$name mit ${salzgehalt}% Salz von $hersteller, ${gewicht}g für ${preis}€';
  }
}

void main() {
  Hammer hammer = Hammer('Stahl', 1.5, 'Schlosser');
  Saw saw = Saw('Metall', 2.0, 50);

  print(hammer.info());
  print(hammer.use());

  print(saw.info());
  print(saw.use());

  Milk milch = Milk('Müller', 1000, 1.49, 3.5);
  Butter butter = Butter('Kerrygold', 250, 2.29, 1.5);

  print(milch.beschreibung());
  print(butter.beschreibung());
}

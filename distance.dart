import 'dart:io';

enum Transportmittel { auto, zug, fahrrad, bus }

void main() {
  final Map<String, int> friendsInput = {};
  String? response;

  // Freunde eingeben
  while (response?.toUpperCase() != 'NO') {
    stdout.write('Name des Freundes: ');
    final name = stdin.readLineSync()?.trim();
    if (name == null || name.isEmpty) {
      print('Name darf nicht leer sein.');
      continue;
    }

    stdout.write('Entfernung zu $name (km): ');
    final distanceInput = stdin.readLineSync();
    final distance = int.tryParse(distanceInput ?? '');
    if (distance == null) {
      print('Ungültige Zahl.');
      continue;
    }

    friendsInput[name] = distance;

    stdout.write('Noch einen Freund hinzufügen? (NO zum Beenden): ');
    response = stdin.readLineSync();
  }

  // Transportmittel auswählen
  Transportmittel? mittel;
  do {
    stdout.write('Transportmittel (auto, zug, fahrrad, bus): ');
    final input = stdin.readLineSync()?.toLowerCase();
    try {
      mittel = Transportmittel.values.firstWhere((e) => e.name == input);
    } catch (_) {
      print('Ungültige Eingabe.');
    }
  } while (mittel == null);

  print('Du hast ausgewählt: ${mittel.name[0].toUpperCase()}${mittel.name.substring(1)}');

  // Freunde sortiert ausgeben
  print('\nFreunde und Entfernungen (sortiert):');
  friendsInput.entries
      .toList()
    ..sort((a, b) => a.value.compareTo(b.value))
    ..forEach((e) => print('${e.key}: ${e.value} km'));

  // Feste Reiseroute
  final reiseroute = {"Max": 120, "Peter": 90, "Anna": 270, "Lena": 180};

  // Geschwindigkeit nach Transportmittel
  final geschwindigkeit = {
    Transportmittel.auto: 90,
    Transportmittel.zug: 120,
    Transportmittel.fahrrad: 20,
    Transportmittel.bus: 60,
  }[mittel]!;

  // Fahrzeiten berechnen
  final result = reiseroute.map((k, v) => MapEntry(k, v / geschwindigkeit));
  final result_2 = friendsInput.map((k, v) => MapEntry(k, v / geschwindigkeit));
  final gesamtZeit = result.values.reduce((a, b) => a + b);
  final gesamtKm = reiseroute.values.reduce((a, b) => a + b);
  final gesamtKm_2 = friendsInput.values.reduce((a, b) => a + b);
  final durchschnittZeit = gesamtZeit / result.length;
  final durchschnittZeit_2 = gesamtZeit / result.length;

  // Ergebnisse ausgeben
  print('\nDeine Reiseroute bei $geschwindigkeit km/h (${mittel.name[0].toUpperCase()}${mittel.name.substring(1)}):');
  result.forEach((name, zeit) => print('$name: ${reiseroute[name]} km, Zeit: ${zeit.toStringAsFixed(2)} h'));
  print('Gesamtdistanz: $gesamtKm km');
  print('Gesamtfahrzeit: ${gesamtZeit.toStringAsFixed(2)} h');
  print('Durchschnittliche Fahrzeit: ${durchschnittZeit.toStringAsFixed(2)} h');
}

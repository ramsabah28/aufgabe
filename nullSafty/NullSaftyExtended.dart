void main() {

  List<Map<String, double?>> weatherData = [
    {'temp': 5.3, 'rain': 0.9, 'wind': null},
    {'temp': 4.5, 'rain': null, 'wind': 16.8},
    {'temp': null, 'rain': 3.8, 'wind': null},
  ];


  List<double> temps = [];
  List<double> rains = [];
  List<double> winds = [];

  for (var data in weatherData) {
    double? temp = data['temp'];
    double? rain = data['rain'];
    double? wind = data['wind'];

    if (temp != null) temps.add(temp);
    if (rain != null) rains.add(rain);
    if (wind != null) winds.add(wind);
  }


  double? avgTemp = temps.isNotEmpty ? temps.reduce((a, b) => a + b) / temps.length : null;
  double? avgRain = rains.isNotEmpty ? rains.reduce((a, b) => a + b) / rains.length : null;
  double? avgWind = winds.isNotEmpty ? winds.reduce((a, b) => a + b) / winds.length : null;


  print('Durchschnittstemperatur: ${avgTemp ?? "keine Daten"}');
  print('Durchschnittlicher Niederschlag: ${avgRain ?? "keine Daten"}');
  print('Durchschnittliche Windgeschwindigkeit: ${avgWind ?? "keine Daten"}');
}

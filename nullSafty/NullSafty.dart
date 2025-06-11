void main() {

  List<Map<String, double?>> weatherData = [
    {'temp': 5.3, 'rain': 0.9, 'wind': null},
    {'temp': 4.5, 'rain': null, 'wind': 16.8},
    {'temp': null, 'rain': 3.8, 'wind': null},
  ];


  List<double> temps = [];


  for (var data in weatherData) {
    double? temp = data['temp'];
    if (temp != null) {
      temps.add(temp);
    }
  }

  if (temps.isNotEmpty) {
    double avgTemp = temps.reduce((a, b) => a + b) / temps.length;
    print('Durchschnittstemperatur: $avgTemp');
  } else {
    print('Keine gültigen Temperaturdaten vorhanden.');
  }
}

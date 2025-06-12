void main() {
  String sex = 'male';
  int age = 28;

  switch (sex) {
    case 'male':
      switch (age) {
        case >= 20 && <= 25:
          print("Im Schnitt 181,4m");
          break;
        case > 25 && <= 30:
          print("Im Schnitt 181,3m");
          break;
        case > 30 && <= 35:
          print("Im Schnitt 180,4m");
          break;
        default:
          print("Keine Daten verfügbar für dieses Alter");
      }
      break;

    case 'female':
      switch (age) {
        case >= 20 && <= 25:
          print("Im Schnitt 167,5m");
          break;
        case > 25 && <= 30:
          print("Im Schnitt 167,3 m");
          break;
        case > 30 && <= 35:
          print("Im Schnitt 167,2");
          break;
        default:
          print("Keine Daten verfügbar für dieses Alter");
      }
      break;

    default:
      print("Geschlecht nicht erkannt");
  }
}

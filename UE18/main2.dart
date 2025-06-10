void main() {
  int? age;
  bool? hasParentalConsent;
  int? movieAgeRating;

  print("############# AUFGABE 2 ###############");
  print("Test 1");
  if (Aufgabe1.Zulassung(
      age = 15, hasParentalConsent = true, movieAgeRating = 16)) {
    print("Zugelassen");
  } else {
    print("Nicht zugelassen");
  }
  print("Test 2");

  if (Aufgabe1.Zulassung(
      age = 13, hasParentalConsent = false, movieAgeRating = 16)) {
    print("Zugelassen");
  } else {
    print("Nicht zugelassen");
  }
  print("############# AUFGABE 2 ###############");
  Aufgabe2().checker();
}

class Aufgabe1 {
  static bool Zulassung(int age, bool consent, int ageRating) {
    return age >= ageRating && consent;
  }
}

class Aufgabe2 {
  bool isLoggedIn = true;
  bool isBanned = false;
  bool isSubscribed = true;
  int age = 18;

  void checker() {
    if (!isLoggedIn)
      print("Bitte logge dich ein");
    else if (isBanned)
      print("Dein Account wurde gesperrt");
    else if (!isSubscribed)
      print("Bitte abonniere");
    else if (age < 18)
      print("Du bist zu jung");
    else
      print("Willkommen");
  }
}

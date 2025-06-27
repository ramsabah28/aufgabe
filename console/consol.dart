// Gruppenprojekt: Log-In Konsolenprogramm
import 'dart:io';

void main() async {
  await W.write();
  LogIn logIn = LogIn();
  print("🟢 Willkommen zum User Login System");

  bool running = true;

  while (running) {
    print("\nBitte gib einen Befehl ein: [login / register / exit]");
    stdout.write(">> ");
    String? input = stdin.readLineSync()?.toLowerCase();

    switch (input) {
      case "login":
        stdout.write("Benutzername: ");
        String? username = stdin.readLineSync();

        stdout.write("Passwort: ");
        String? password = stdin.readLineSync();

        if (username != null && password != null) {
          bool success = logIn.checkUser(username, password);
          if (success) {
            print("✅ Willkommen zurück, $username!");
          } else {
            print("❌ Login fehlgeschlagen. Benutzername oder Passwort falsch.");
          }
        }
        break;

      case "register":
        stdout.write("Benutzername: ");
        String? username = stdin.readLineSync();

        stdout.write("E-Mail: ");
        String? email = stdin.readLineSync();

        stdout.write("Passwort: ");
        String? password = stdin.readLineSync();

        if (username != null && email != null && password != null) {
          await logIn.addUser(username, email, password);
          print("✅ Registrierung erfolgreich!");
        }
        break;

      case "exit":
        print("👋 Programm wird beendet. Auf Wiedersehen!");
        running = false;
        break;

      default:
        print(
          "❗ Ungültiger Befehl. Bitte 'login', 'register' oder 'exit' eingeben.",
        );
    }
  }
}

class LogIn {
  Future<void> addUser(String username, String email, String password) async {
    String newUser =
        "[Name:" +
            username +
            ', ' +
            "email:" +
            email +
            ', ' +
            "password:" +
            password +
            "]\n";
    File source = File("../../DB.txt");

    try {
      String content = source.readAsStringSync();
      if (content.contains(username) || content.contains(email)) {
        print("Username or email ungültig");
        return;
      }
      content += newUser;
      await inputWriter(newUser);
    } catch (e) {}
  }

  Future<void> inputWriter(String user) async {
    final file = File("../../DB.txt");

    try {
      await file.writeAsString(user, mode: FileMode.append);
      print('File saved to ${file.path}');
    } catch (e) {
      print('Failed to save file: $e');
    }
  }

  String getFileAsString() {
    return File("../../DB.txt").readAsStringSync();
  }

  bool checkUser(String username, String password) {
    String content = getFileAsString();

    int startIndex = content.indexOf(username);
    if (startIndex == -1) return false;

    int endIndex = content.indexOf(']', startIndex);
    if (endIndex == -1) return false;

    String userBlock = content.substring(startIndex, endIndex);

    if (userBlock.contains(password)) {
      return true;
    }

    return false;
  }
}

class W {
  static Future<void> write() async {
    final file = File("../../DB.txt");
    if (!file.existsSync()) {
      try {
        await file.writeAsString("");
        print('File saved to ${file.path}');
      } catch (e) {
        print('Failed to save file: $e');
      }
    }
  }
}

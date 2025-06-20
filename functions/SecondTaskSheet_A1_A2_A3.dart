void main() {
  print(sumNumbers_A1(1, 2, 3));
  print(sumNumbers_A1(10, 20, 33));
  print(sumNumbers_A1(11, 22, 33));

  String text1 = "Hallo Welt!";
  String text2 = "Programmieren macht Spaß";
  String text3 = "Dart ist cool";
  print(charCount(text1));
  print(charCount(text2));
  print(charCount(text1 * 2));

  print("Vokale in '$text1': ${countVowels(text1)}");
  print("Vokale in '$text2': ${countVowels(text2)}");
  print("Vokale in '$text3': ${countVowels(text3)}");
}

int sumNumbers_A1(int a, int b, int c) {
  return a + b + c;
}

int charCount(String text) {
  return text.length;
}

int countVowels(String text) {
  const vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];
  int count = 0;

  for (int i = 0; i < text.length; i++) {
    if (vowels.contains(text[i])) {
      count++;
    }
  }

  return count;
}

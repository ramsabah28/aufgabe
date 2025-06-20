void main() {
  F_().printNumber(1);
  F_().printNumber(2);
  F_().printNumber(3);

  F_().triplePrint("me");
  F_().triplePrint("you");
  F_().triplePrint("him");

  F_().reverseInitials("Mia", "Fernado");
  F_().reverseInitials("Simon", "Berg");
}

class F_ {
  void printNumber(int number) {
    print(number);
  }

  void triplePrint(String in_) {
    print(in_);
    print(in_);
    print(in_);
  }

  void reverseInitials(String F_, String S_) {
    print(F_[F_.length - 1].toUpperCase() +
        "." +
        S_[S_.length - 1].toUpperCase());
  }
}

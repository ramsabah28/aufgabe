int _F(int n) {
  if (n < 0) {
    return 0;
  }
  return n <= 1 ? 1 : n * _F(n - 1);
}

void main() {
  print(_F(4));
}

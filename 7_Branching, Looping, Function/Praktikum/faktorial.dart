void main() {
  int faktorial = 1;
  print("Masukkan bilangan bulat : ");
  int n = 4;

  for (int i = 1; i <= n; i++) {
    faktorial *= i;

    print("Hasil faktorial dari " +
        n.toString() +
        " adalah " +
        faktorial.toString());
  }
}

void main() {
  int number = 10;
  List faktor = [];

  for (int i = 1; i <= number; i++) {
    if (number % i == 0) {
      faktor.add(i);
    }
  }
  if (faktor.length > 2) {
    print('$number bukan bilangan prima');
  } else {
    print('$number adalah bilangan prima');
  }
}

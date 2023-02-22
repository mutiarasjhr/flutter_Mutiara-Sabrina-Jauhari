void main() {
  String kata = '';
  String diBalik = '';

  for (int i = kata.length - 1; i >= 0; i--) {
    diBalik += kata[i];
  }
  if (kata == diBalik) {
    print('Palindrom');
  } else {
    print('Bukan Palindrom');
  }

  // int angka = 56;

  // print('Faktor dari $angka adalah ..');

  // for (int i = 1; i <= angka; i++) {
  //   if (angka % i == 0) {
  //     print(i);
  //   }
  // }
}

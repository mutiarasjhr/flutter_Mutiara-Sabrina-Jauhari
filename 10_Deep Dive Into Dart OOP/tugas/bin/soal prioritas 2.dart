class Matematika {
  hasil() {}
}

class KelipatanPersekutuanTerkecil implements Matematika {
  int x;
  int y;

  KelipatanPersekutuanTerkecil(this.x, this.y);

  @override
  hasil() {
    int total = x > y ? x : y;
    while (true) {
      if (total % x == 0 && total % y == 0) {
        return total;
      }
      total++;
    }
  }
}

class FPB implements Matematika {
  int x;
  int y;
  FPB(this.x, this.y);

  @override
  hasil() {
    while (y != 0) {
      final int t = y;
      y = x % y;
      x = t;
    }
    return x;
  }
}

void main() {
  Matematika hitung = Matematika();
  print(hitung);

  hitung = KelipatanPersekutuanTerkecil(2, 5);
  print('KPK dari $hitung adalah...');
  print(hitung.hasil());

  Matematika jumlah = Matematika();
  print(jumlah);

  jumlah = FPB(36, 48);
  print("FPB dari $jumlah adalah ...");
  print(jumlah.hasil());
}

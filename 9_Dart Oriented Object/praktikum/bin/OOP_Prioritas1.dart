class Hewan {
  int weight;

  Hewan(this.weight);
}

class Mobil {
  int kapasitas;
  List<Hewan> muatan = [];

  Mobil(this.kapasitas);

  int totalMuatan() {
    int total = 0;
    muatan.forEach((h) {
      total += h.weight;
    });
    return total;
  }

  tambahMuatan(Hewan h) {
    if (totalMuatan() >= kapasitas) {
      print('Full capacity!');
    } else {
      muatan.add(h);
    }
  }
}

void main() {
  Mobil kapasitas = Mobil(600);
  Hewan h1 = Hewan(100);
  Hewan h2 = Hewan(200);
  Hewan h3 = Hewan(300);

  kapasitas.tambahMuatan(h1);
  kapasitas.tambahMuatan(h2);
  kapasitas.tambahMuatan(h3);
  kapasitas.tambahMuatan(Hewan(100));

  print("Total muatan: ${kapasitas.totalMuatan()}");
}

class BangunRuang {
  int panjang;
  int lebar;
  int tinggi;

  BangunRuang(this.panjang, this.lebar, this.tinggi);

  int volume() {
    return panjang * lebar * tinggi;
  }
}

class Kubus extends BangunRuang {
  int sisi;

  Kubus(this.sisi) : super(0, 0, 0);

  @override
  int volume() {
    return sisi * sisi * sisi;
  }
}

class Balok extends BangunRuang {
  Balok(super.panjang, super.lebar, super.tinggi);

  @override
  int volume() {
    return panjang * lebar * tinggi;
  }
}

void main() {
  print("Volume Kubus adalah ...");
  print(Kubus(8).volume());

  print("Volume Balok adalah...");
  print(Balok(15, 8, 5).volume());
}

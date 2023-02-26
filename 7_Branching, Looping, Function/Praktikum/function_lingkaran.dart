String luasLingkaran({required double phi, int? r}) {
  return "Luas Lingkaran adalah $phi * $r * $r";
}

void main() {
  print(luasLingkaran(phi: 3.14, r: 5));
  print(3.14 * 5 * 5);
}

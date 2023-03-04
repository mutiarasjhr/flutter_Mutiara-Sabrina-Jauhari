// // No 1
// void main() {
//   List<String> BahasaPemrograman = [
//     'JS Racing',
//     'JS Racing',
//     'amuse',
//     'amuse',
//     'spoon',
//     'JS Racing',
//     'spoon',
//     'amuse'
//   ];
//   List<String> removeDuplicate = BahasaPemrograman.toSet().toList();
//   print('Data Awal : ');
//   print('$BahasaPemrograman');
//   print('Data Akhir : ');
//   print('$removeDuplicate');
// }

void main() {
  List<String> language = [
    'js',
    'js',
    'js',
    'golang',
    'phyton',
    'js',
    'js',
    'golang',
    'rust',
    'rust'
  ];

  print(language);

  Map<String, int> frekuensi = {};
  language.forEach((item) {
    frekuensi[item] = (frekuensi[item] ?? 0) + 1;
  });

  frekuensi.forEach((key, value) {
    print('$key: $value');
  });
}

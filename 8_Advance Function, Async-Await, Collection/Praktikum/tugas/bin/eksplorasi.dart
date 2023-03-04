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

// data = ['js', 'js', 'js', 'golang', 'python', 'js', 'js', 'golang', 'rust']

// # Menghitung frekuensi kemunculan setiap data
// freq = {}
// for item in data:
//     if item in freq:
//         freq[item] += 1
//     else:
//         freq[item] = 1

// # Menampilkan hasil
// for key, value in freq.items():
//     print(f'{key}: {value}')

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

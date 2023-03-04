// void main() {
//   final bahasaPemrograman = <String, String>{
//     'CSS': 'HTML',
//     'JavaScript': 'ReactJS',
//     'PHP': 'CodeIgniter',
//     'Dart': 'Flutter',
//   };
//   print(bahasaPemrograman);

//   var framework = bahasaPemrograman['Dart'];
//   print(framework);
// }

// int avarage() {
//   List<int> nilai = [7, 5, 3, 5, 2, 1];
//   int total = 0;
//   for (var hasil in nilai) {
//     total += hasil;
//   }
//   int totalAvarage = (total / nilai.length).round();
//   return totalAvarage;
// }

// void main() {
//   print(avarage());
// }

Future<int> faktorial(int num) async {
  await Future.delayed(Duration(seconds: 1));
  int hasil = 1;
  for (var i = 1; i <= num; i++) {
    hasil = hasil * i;
  }
  return hasil;
}

void main() async {
  print(await faktorial(5));
}

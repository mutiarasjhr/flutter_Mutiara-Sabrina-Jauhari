Future<List<int>> multiplyList(List<int> data, int pengali) async {
  List<int> result = [];
  for (int i = 0; i < data.length; i++) {
    await Future.delayed(Duration(seconds: 1));
    result.add(data[i] * pengali);
  }
  return result;
}

void main() async {
  List<int> data = [2, 4, 6, 8, 10];
  int pengali = 5;
  List<int> result = await multiplyList(data, pengali);
  print(result);
}

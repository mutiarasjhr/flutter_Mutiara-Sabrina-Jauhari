void main() {
  for (var i = 1; i <= 10; i += 1) {
    print(i);
  }

  var rows = 6;
  for (int i = 1; i < rows; i++) {
    print(' ' * (rows - 7 + i) + '0' * (13 - 2 * i));
  }
  for (int i = 1; i <= rows; i++) {
    print(' ' * (rows - i) + '0' * (2 * i - 1));
  }
}

void main() {
  for (int number = 1; number <= 100; number++) {
    print('''

---------------------------------
Multiplication Table for $number;
----------------------------------
      ''');
    for (int multiplier = 1; multiplier <= 100; multiplier++) {
      print('$number * $multiplier = ${number * multiplier}');
    }
  }
}

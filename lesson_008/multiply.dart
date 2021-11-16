import '../lesson_007/get_user_input.dart';

void main() {
  int numberInput = getUserInput('Enter a number');
  for (int number = 1; number <= numberInput; number++) {
    print('''

---------------------------------
Multiplication Table for $number;
----------------------------------
      ''');
    for (int multiplier = 1; multiplier <= numberInput; multiplier++) {
      print('$number * $multiplier = ${number * multiplier}');
    }
  }
}

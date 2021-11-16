import 'get_user_input.dart';

void main() {
  double firstNumber = getUserInput<double>('Enter the fist number');
  String sign = getUserInput<String>('Enter arithmatic sign');
  double secondNumber = getUserInput<double>('Enter the second number');
  late double result;
  if (sign == '+') {
    result = firstNumber + secondNumber;
  } else if (sign == '-') {
    result = firstNumber - secondNumber;
  } else if (sign == '*') {
    result = firstNumber * secondNumber;
  } else if (sign == '/') {
    result = firstNumber / secondNumber;
  } else {
    throw 'Sign was not recognized';
  }

  print('The Result of $firstNumber + $secondNumber is equal to: $result');
}

import 'packages/input_parser.dart';

void main() {
  double firstNumber = getDoubleInput('Enter the fist number');
  String? sign = getStringInput('Enter arithmatic sign');
  double secondNumber = getDoubleInput('Enter the second number');
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

import 'math_mixin.dart';

extension MathMixinExtention on MathMixin {
  double solveExponent(double num1, double num2) {
    double result = 1;
    for (int count = 1; count <= num2; count++) {
      result *= num1;
    }
    return result;
  }
}

class Calculator with MathMixin {
  @override
  double addNumbers(double num1, double num2) {
    return num1 + num2 + 20000;
  }

  void calculate(double num1, double num2, String operator) {
    if (operator == "+") {
      final result = addNumbers(num1, num2);
      print('$num1 + $num2 = $result');
    } else if (operator == "-") {
      final result = subtractNumbers(num1, num2);
      print('$num1 - $num2 = $result');
    } else if (operator == "*") {
      final result = multiplyNumbers(num1, num2);
      print('$num1 * $num2 = $result');
    } else if (operator == "/") {
      final result = divideNumbers(num1, num2);
      print('$num1 / $num2 = $result');
    } else if (operator == "e") {
      final result = solveExponent(num1, num2);
      print('$num1 e $num2 = $result');
    }
  }
}

void main() {
  final calculator = Calculator();
  calculator.calculate(2, 64, 'e');
}

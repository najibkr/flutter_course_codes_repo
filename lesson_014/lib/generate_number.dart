import 'dart:math';

double generateNumber(int min, int max) {
  int rondomNumber = Random().nextInt(max);
  if (rondomNumber < min) {
    rondomNumber += min;
  }
  return rondomNumber.toDouble();
}

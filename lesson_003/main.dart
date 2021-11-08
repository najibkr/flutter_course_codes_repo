void main() async {
  int myAge = 99999999999999999;
  String laugh = String.fromCharCode(128514);
  print(laugh);
}

double findSumBetween(int num1, int num2) {
  return (num2 + num1) * (num2 / 2);
}

void forLoopSum() async {
  int result = 0;
  for (int i = 1; i <= 100; i++) {
    await delay();
    print('Iterating');
    result += i;
  }
  print(result);
}

Future delay() {
  return Future.delayed(Duration(milliseconds: 1000));
}

import 'dart:io';

void main() {
  // User Name:
  stdout.write('Enter your name: ');
  String? userName = stdin.readLineSync();
// Score:
  stdout.write('Enter your score: ');
  double scoreInput = double.tryParse("${stdin.readLineSync()}") ?? 0;
  if (scoreInput > 100) {
    print("Wrong score");
  } else if (scoreInput >= 90 && scoreInput <= 100) {
    if (scoreInput < 95) {
      print('$userName your ranking is: A-');
    } else if (scoreInput == 95) {
      print('$userName your ranking is: A');
    } else {
      print('$userName your ranking is: A+');
    }
  } else if (scoreInput >= 80 && scoreInput < 90) {
    if (scoreInput < 85) {
      print('$userName your ranking is: B-');
    } else if (scoreInput == 85) {
      print('$userName your ranking is: A');
    } else {
      print('$userName your ranking is: A+');
    }
  } else if (scoreInput >= 70 && scoreInput < 80) {
    if (scoreInput < 75) {
      print('$userName your ranking is: C-');
    } else if (scoreInput == 75) {
      print('$userName your ranking is: C');
    } else {
      print('$userName your ranking is: c+');
    }
  } else if (scoreInput < 70) {
    print('$userName you have failed.');
  }
}

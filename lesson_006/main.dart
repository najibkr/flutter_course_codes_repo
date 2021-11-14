import 'dart:io';

void main() {
// Score:
  stdout.write('Enter your score: ');
  double scoreInput = double.tryParse("${stdin.readLineSync()}") ?? 0;
  if (scoreInput > 100) {
    print("Wrong score");
  } else if (scoreInput >= 90 && scoreInput <= 100) {
    if (scoreInput < 95) {
      print('A-');
    } else if (scoreInput == 95) {
      print('A');
    } else {
      print('A+');
    }
  } else if (scoreInput >= 80 && scoreInput < 90) {
    if (scoreInput < 85) {
      print('B-');
    } else if (scoreInput == 85) {
      print('B');
    } else {
      print('B+');
    }
  } else if (scoreInput >= 70 && scoreInput < 80) {
    if (scoreInput < 75) {
      print('C-');
    } else if (scoreInput == 75) {
      print('C');
    } else {
      print('C+');
    }
  } else if (scoreInput < 70) {
    print('Failed');
  }
}

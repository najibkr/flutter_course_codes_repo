import 'dart:io';

void main() {
  stdout.write("What is your name? ");
  String? input = stdin.readLineSync();
  print('Welcome, $input');
}

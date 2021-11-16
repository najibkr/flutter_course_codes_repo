import 'dart:io';

void main() {
  stdout.write("Enter your name: ");
  String? userName = stdin.readLineSync();
  print('Welcome, $userName');
}

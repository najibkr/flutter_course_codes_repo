import 'dart:io';

void welcomeUser() {
  stdout.write("Enter your name: ");
  String? userName = stdin.readLineSync();
  print('Welcome, $userName');
  print("How are you");
}

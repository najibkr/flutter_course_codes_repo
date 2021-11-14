import 'packages/input_parser.dart';

String? userName;
String? userEmail;
String? userPass;
void main() {
  print('''
  -------------------------------
  User Authentication Application
  -------------------------------
  ''');
  bool isProgrammRunning = true;
  while (isProgrammRunning) {
    String? command = getStringInput('Enter a command (signup, signin, exit)');
    if (command == 'exit') {
      isProgrammRunning = !isProgrammRunning;
    } else if (command == 'signup') {
      userName = getStringInput('Enter your name');
      userEmail = getStringInput('Enter your email');
      userPass = getStringInput('Enter your password');
      print('Successfully created account: for $userName');
    } else if (command == 'signin') {
      if (userName == null) {
        print("YOur must signup before signing in");
      } else {
        String? inputEmail = getStringInput('Enter your email');
        String? inputPass = getStringInput('Enter your password');
        if (inputEmail == userEmail && inputPass == userPass) {
          print('Wecome:$userName $userEmail $userPass');
        } else {
          print("Your password or email is wrong");
        }
      }
    }
  }
}

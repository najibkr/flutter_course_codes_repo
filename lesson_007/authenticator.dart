import 'get_user_input.dart';

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
    String? command =
        getUserInput<String>('Enter a command (signup, signin, exit)');
    if (command == 'exit') {
      isProgrammRunning = !isProgrammRunning;
    } else if (command == 'signup') {
      userName = getUserInput<String>('Enter your name');
      userEmail = getUserInput<String>('Enter your email');
      userPass = getUserInput<String>('Enter your password');
      print('Successfully created account: for $userName');
    } else if (command == 'signin') {
      if (userName == null) {
        print("YOur must signup before signing in");
      } else {
        String inputEmail = getUserInput<String>('Enter your email');
        String inputPass = getUserInput<String>('Enter your password');
        if (inputEmail == userEmail && inputPass == userPass) {
          print('Wecome:$userName $userEmail $userPass');
        } else {
          print("Your password or email is wrong");
        }
      }
    }
  }
}

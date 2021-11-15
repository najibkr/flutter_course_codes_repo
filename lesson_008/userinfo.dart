import 'packages/input_parser.dart';

void main(List<String> args) {
  // Name
  String userName = getUserInput<String>('Enter your name');

  // Age:
  int userAge = getUserInput<int>('Enter your age');

  // Height:
  double userHeight = getUserInput<double>('Enter your height');

  // Is the user a student:
  bool isUserStudent = getUserInput<bool>('Are you a student (yes, no)');
  print('''
Name: $userName\t${userName.runtimeType}
Age: $userAge\t${userAge.runtimeType}
Height: $userHeight\t${userHeight.runtimeType}
IsStudent: $isUserStudent\t${isUserStudent.runtimeType}
  ''');
}

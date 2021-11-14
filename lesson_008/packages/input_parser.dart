import 'dart:io';

String? getStringInput(String? messageToUser) {
  stdout.write("$messageToUser: ");
  return stdin.readLineSync();
}

double getDoubleInput(String? messageToUser) {
  stdout.write("$messageToUser: ");
  final stringInput = stdin.readLineSync();
  final doubleInput = double.tryParse(stringInput ?? '0');
  return doubleInput ?? 0;
}

bool? getBoolInput(String? messageToUser) {
  stdout.write("$messageToUser: ");
  final stringInput = stdin.readLineSync()?.toLowerCase();
  if (stringInput == "y" ||
      stringInput == 'yes' ||
      stringInput == 't' ||
      stringInput == 'true') {
    return true;
  } else {
    return false;
  }
}

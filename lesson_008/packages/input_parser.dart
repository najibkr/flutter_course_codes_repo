import 'dart:io';

/// this will get the user input based on the assigned generic type
/// to user this, here is an example
/// [String] userName = getUserInput<String>('Enter your name');]
/// [print(userName)]
T getUserInput<T>(String instruction) {
  String stringInput = _getStringInput(instruction);
  if (T == String) return stringInput as T;
  if (T == double) return _convertToDouble(stringInput) as T;
  if (T == int) return _convertToInt(stringInput) as T;
  if (T == bool) return _convertToBool(stringInput) as T;
  return stringInput as T;
}

String _getStringInput(String? instruction) {
  String? input;
  do {
    stdout.write("$instruction: ");
    input = stdin.readLineSync();
  } while (input == null || input.isEmpty);
  return input;
}

double _convertToDouble(String stringInput) {
  final doubleInput = double.tryParse(stringInput);
  return doubleInput ?? 0;
}

int _convertToInt(String stringInput) {
  final doubleInput = int.tryParse(stringInput);
  return doubleInput ?? 0;
}

bool? _convertToBool(String stringInput) {
  final lowered = stringInput.toLowerCase();
  if (lowered == "y" ||
      lowered == 'yes' ||
      lowered == 't' ||
      lowered == 'true') {
    return true;
  } else {
    return false;
  }
}

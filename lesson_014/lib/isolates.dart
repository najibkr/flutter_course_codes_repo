import 'dart:isolate';

import '../../lesson_007/get_user_input.dart';
import '../../lesson_009/guessing_game.dart';
import 'save_people.dart';

void main() async {
  // Secondary Isolate
  ReceivePort receivePort = ReceivePort();
  Isolate.spawn(spawnFunc, receivePort.sendPort);

  // Main Program:
  while (true) {
    runGuessingGame();
    if (await receivePort.first) {
      bool shouldExit = getUserInput<bool>(
          'The people file is created is created, do want to keep playing the game');
      if (shouldExit) break;
    }
  }
}

void spawnFunc(SendPort sendPort) {
  savePeople();
  return sendPort.send(true);
}

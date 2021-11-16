import 'dart:math';

import '../lesson_007/get_user_input.dart';

void main() {
  String chosenLevel = getUserInput('Enter Level (easy, medium, hard');
  print('Your chosen level is: $chosenLevel');
  if (chosenLevel == 'easy') {
    while (true) {
      int correctGuess = Random.secure().nextInt(11);
      int userInput = getUserInput('Guess a number between 0-10');
      if (correctGuess == userInput) {
        print("Congrats, you the game!");
        break;
      } else {
        print('Shame on you, try again');
      }
    }
  } else if (chosenLevel == 'medium') {
    while (true) {
      int correctGuess = Random.secure().nextInt(51);
      int userInput = getUserInput('Guess a number between 0-50');
      if (correctGuess == userInput) {
        print("Congrats, you the game!");
        break;
      } else {
        print('Shame on you, try again');
      }
    }
  } else if (chosenLevel == 'hard') {
    while (true) {
      int correctGuess = Random.secure().nextInt(101);
      int userInput = getUserInput('Guess a number between 0-100');
      if (correctGuess == userInput) {
        print("Congrats, you the game!");
        break;
      } else {
        print('Shame on you, try again');
      }
    }
  } else {
    print('Level not found');
  }
}

import '../lesson_007/get_user_input.dart';

void main() {
  List<double> myScores = [];
  int numberOfSubject = getUserInput<int>('How many subjects you took');

  for (int count = 0; count < numberOfSubject; count++) {
    double score = getUserInput<double>('Enter Subject ${count + 1} score');
    myScores.add(score);
  }
  var total = myScores.reduce((a, b) => a + b);
  print(
      'Your average score is: ${(total / numberOfSubject).toStringAsFixed(2)}');
}

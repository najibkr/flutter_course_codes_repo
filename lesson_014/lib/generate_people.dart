import 'generate_name.dart';
import 'generate_number.dart';

Iterable<Map<String, dynamic>> generatePeople(int numberOfPeople) sync* {
  for (int count = 0; count < numberOfPeople; count++) {
    yield <String, dynamic>{
      "id": "${count + 1000000}",
      "name": generateName(),
      "age": generateNumber(1, 120).toInt(),
      "height": generateNumber(50, 200),
      "income": generateNumber(5000, 100000),
    };
  }
}

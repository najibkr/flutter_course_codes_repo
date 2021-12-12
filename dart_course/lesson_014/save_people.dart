import 'dart:convert';
import 'dart:io';

import 'generate_people.dart';

void savePeople() {
  final people = generatePeople(1000000).toList();
  File('people.json').writeAsStringSync(jsonEncode(people));
}

import 'dart:convert';
import 'dart:io';

import '../lesson_007/get_user_input.dart';
import 'print_person.dart';

void searchPerson() {
  // final people = generatePeople(1000000).toList();
  String savedInfo = File('people.json').readAsStringSync();
  final people = List<Map<String, dynamic>>.from(jsonDecode(savedInfo));

  String query = getUserInput('Who are you looking for?');
  for (int index = 0, length = people.length; index < length; index++) {
    if (people[index]['id'] == query) {
      printPerson(people[index], 'Found Person');
      break;
    } else {
      print('Searching through the list...');
    }
  }
}

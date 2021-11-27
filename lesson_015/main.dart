import 'dart:convert';
import 'dart:io';

import '../lesson_007/get_user_input.dart';

void main() {
  final countries = File('countries.json').readAsStringSync();
  final json = List<Map<String, dynamic>>.from(jsonDecode(countries));
  print(json);

  // String searchInput = getUserInput('Search country or city');
  // if (keshwarHa.any((e) => e['name'] == searchInput)) {
  //   print('$searchInput wojod dardard');
  // } else if (keshwarHa.any((e) => e['cities'].contains(searchInput))) {
  //   print("$searchInput city exits");
  // }
}

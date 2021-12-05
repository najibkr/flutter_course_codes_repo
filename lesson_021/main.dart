import 'dart:convert';
import 'dart:io';

import 'todo.dart';

void main() {
  var newTod = Todo.init(
    id: "5",
    title: "Do something else",
  );

  String json = File('todos.json').readAsStringSync();
  var jsonMapped = List<Map<String, dynamic>>.from(jsonDecode(json));
  var todos = jsonMapped.map((json) => Todo.fromJson(json)).toList();
  todos.add(newTod);
  final mapped = todos.map((e) => e.toJson()).toList();
  File("todos.json").writeAsStringSync(jsonEncode(mapped));
  todos.forEach(print);
}

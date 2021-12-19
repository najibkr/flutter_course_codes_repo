import 'dart:convert';
import 'dart:io';

import '../lesson_007/get_user_input.dart';
import 'enum_completed.dart';

class User {
  String? name;
  String? email;
  int? age;
  UserRole? role;
  User({this.name, this.email, this.age, this.role});

  factory User.fromMap(Map<String, dynamic>? map) {
    if (map == null) return User();
    return User(
      name: map['name'],
      email: map['email'],
      age: ((map['age'] ?? 0) as num).toInt(),
      role: UserRoleParser.fromString(map['role']),
    );
  }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'name': name,
      "age": age,
      "role": role,
    };
    map.removeWhere((key, value) => value == null);
    return map;
  }
}

void main() {
  String command = getUserInput('Enter a command (signup, sigin, exit');
  if (command == 'exit') return;
  if (command == 'signup') {
    User user = User();
    user.name = getUserInput<String>('Enter your name');
    user.age = getUserInput<int>('Enter your age');
    user.email = getUserInput<String>('Enter your email');
    user.role =
        UserRoleParser.fromString(getUserInput<String>('What is your role'));
    saveUser(user);
    List<User> users = getUsers();
    users.forEach((user) {
      print(user.name);
    });
  }
}

void saveUser(User user) {
  File db = File('user.json');
  String data = db.readAsStringSync();
  List json = jsonDecode(data);
  json.add(user.toMap());
  db.writeAsStringSync(jsonEncode(json));
}

List<User> getUsers() {
  File db = File('user.json');
  String data = db.readAsStringSync();
  List json = jsonDecode(data);
  return json.map((e) => User.fromMap(e)).toList();
}

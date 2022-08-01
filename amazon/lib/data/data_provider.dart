import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class DataProvider {
  final SharedPreferences _prefs;
  DataProvider(SharedPreferences prefs) : _prefs = prefs;

  List<Map<String, dynamic>> getUsers() {
    try {
      final result = _prefs.getStringList('usersDB');
      final json =
          result?.map((e) => Map<String, dynamic>.from(jsonDecode(e))).toList();
      return json ?? [];
    } catch (e) {
      return [];
    }
  }

  Future<bool> signUpUser(Map<String, dynamic> userInfo) async {
    try {
      var result = getUsers();
      result.add(userInfo);
      final usersJson = result.map((e) => jsonEncode(e)).toList();
      final saved = await _prefs.setStringList('usersDB', usersJson);
      return saved;
    } catch (e) {
      rethrow;
    }
  }

  Map<String, dynamic> signInUser(Map<String, dynamic> user) {
    var usersJson = getUsers();
    final userExists = usersJson.any((e) {
      final correctPass = user['password'] == e['password'];
      final correctName = user['userName'] == e['userName'];
      return correctName && correctPass;
    });
    if (userExists) {
      return usersJson.firstWhere((e) => e['userName'] == user['userName']);
    }
    throw 'Incorrect password or username';
  }

  bool signOut(String? userID) {
    try {
      final users = getUsers();
      var currentUser = users.firstWhere((e) => e['id'] == userID);
      users.removeWhere((e) => e['id'] == userID);
      currentUser['isSignedIn'] = false;
      return true;
    } catch (_) {
      return false;
    }
  }
}

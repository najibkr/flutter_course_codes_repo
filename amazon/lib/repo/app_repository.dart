import 'package:amazon/data/data_provider.dart';
import 'package:uuid/uuid.dart';

import 'models/user.dart';

class AppRepository {
  final DataProvider _data;
  final Uuid _uuid = const Uuid();
  const AppRepository(DataProvider provider) : _data = provider;

  Future<bool> signupUser(User user) async {
    try {
      user = user.copyWith(id: _uuid.v1());
      final result = await _data.signUpUser(user.toJson());
      return result;
    } catch (e) {
      rethrow;
    }
  }

  Future<User> signInUser(User user) async {
    try {
      final userJson = _data.signInUser(user.toJson());
      return User.fromJson(userJson).copyWith(isSignedIn: true);
    } catch (e) {
      rethrow;
    }
  }

  bool signOutUser(String? userID) {
    return _data.signOut(userID);
  }
}

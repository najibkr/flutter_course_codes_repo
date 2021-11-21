import '../lesson_007/get_user_input.dart';

enum UserRole { admin, finance, student, teacher }

extension UserRoleParser on UserRole {
  String get value {
    return this.toString().split('.').last;
  }

  static UserRole? fromString(String value) {
    try {
      return UserRole.values.firstWhere((e) => e.value == value);
    } catch (_) {
      return null;
    }
  }
}

void main() {
  final role =
      UserRoleParser.fromString(getUserInput<String>('Enter your role'));

  print(role?.value);
}

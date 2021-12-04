void main() {
  // Immutable:
  String str = "Hello";
  str.substring(3);

  // Mutable
  var user1 = User("Ahmad", "Ahmadi", DateTime(2000, 1, 1));
  print(user1.fullName());
}

class User {
  final String firstName;
  final String lastName;
  final DateTime birthDate;
  User(this.firstName, this.lastName, this.birthDate);

  User copyWith({
    String? firstName,
    String? lastName,
    DateTime? birthDate,
  }) {
    return User(
      firstName ?? this.firstName,
      lastName ?? this.lastName,
      birthDate ?? this.birthDate,
    );
  }

  String fullName() {
    return "$firstName $lastName";
  }

  String getAge() {
    return dateTimeToYears(birthDate);
  }

  @override
  String toString() {
    return "$firstName $lastName";
  }

  @override
  dynamic noSuchMethod(Invocation invocation) {
    return "Go to hell " as dynamic;
  }

  @override
  bool operator ==(Object other) {
    return (other is User) &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        birthDate == other.birthDate;
  }

  @override
  int get hashCode =>
      firstName.hashCode ^ lastName.hashCode ^ birthDate.hashCode;

  static const String defaultFistName = 'Karim';
  static String dateTimeToYears(DateTime dateTime) {
    final diff = DateTime.now().difference(dateTime);
    return "${(diff.inDays) / 365}";
  }
}

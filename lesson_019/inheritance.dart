enum UserType { student, teacher, finance, marketing }

abstract class User {
  final String? id;
  final String? name;
  final int? age;
  User({this.id, this.name, this.age});
  factory User.fromStudent(UserType type) {
    if (type == UserType.student) return Student();
    return Student();
  }

  bool isActive();
}

class Student extends User {
  //
  double? fees;
  double? grades;
  String? rank;
  Student({
    String? id,
    String? name,
    int? age,
  }) : super(age: age, id: id, name: name);

  @override
  bool isActive() {
    return true;
  }
}

abstract class Employee extends User {
  double? salary;
  double? workHours;
}

class Teacher extends Employee {
  @override
  bool isActive() {
    throw UnimplementedError();
  }
}

class FinaceManager extends Employee {
  @override
  bool isActive() {
    throw UnimplementedError();
  }
}

class MarketingManager extends Employee {
  List<String>? skills;

  @override
  bool isActive() {
    throw UnimplementedError();
  }
}

void main() {
  // final marketemp = User.fromStudent(UserType.student);
}

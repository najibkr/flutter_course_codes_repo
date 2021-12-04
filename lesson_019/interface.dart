abstract class User {
  bool checkID();
  bool hasName();
  bool hasBirthDate();
}

class Student implements User {
  @override
  bool checkID() {
    return true;
  }

  @override
  bool hasBirthDate() {
    return false;
  }

  @override
  bool hasName() {
    return true;
  }
}

class Emplyee implements User {
  @override
  bool checkID() {
    return false;
  }

  @override
  bool hasBirthDate() {
    throw UnimplementedError();
  }

  @override
  bool hasName() {
    throw UnimplementedError();
  }
}

void main() {
  User user = Emplyee();
  final hasID = user.checkID();
  print(hasID);
}

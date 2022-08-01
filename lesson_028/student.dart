class User {
  String? name;
  User(this.name);

  void sayHello() {
    print("bybyw");
  }
}

class Student extends User {
  Student(String? name) : super(name);

  @override
  void sayHello() {
    print("Hell owrld");
  }
}

void main() {
  User main = Student('name');
  main.sayHello();
}

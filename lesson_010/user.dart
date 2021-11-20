enum UserRole { admin, finance, student }
void main() {
  UserRole enteredUserRole = UserRole.student;
  if (enteredUserRole == UserRole.admin) {
    print('Welcome admin');
  } else if (enteredUserRole == UserRole.finance) {
    print("Welcom Finance Direcotr");
  } else if (enteredUserRole == UserRole.student) {
    print('Welcome dear student');
  } else {
    print("You are not authorized to log in");
  }
}

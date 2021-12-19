class Student {
  double? _gpa;
  String? _degreeProgram;

  double? getGpa() {
    return _gpa;
  }

  void setGpa(double newGpa) {
    _gpa = newGpa;
  }

  String? getDegreeProgram() {
    return _degreeProgram;
  }

  void setDegreeProgram(String newDegreeProgram) {
    _degreeProgram = newDegreeProgram;
  }
}

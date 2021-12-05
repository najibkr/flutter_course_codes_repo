enum TodoType { work, personal, school }

extension TodoTypeParser on TodoType {
  String get value {
    return this.toString().split('.').last;
  }

  static TodoType? fromString(String? value) {
    if (value == null) return null;
    try {
      return TodoType.values.firstWhere((e) => e.value.contains(value));
    } catch (_) {
      return null;
    }
  }
}

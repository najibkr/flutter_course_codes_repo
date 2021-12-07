import 'todostep.dart';

class Todo {
  final String? id;
  final String? type;
  final String? title;
  final String? description;
  final List<TodoStep>? steps;
  final DateTime? creationDate;
  final DateTime? dueDate;

  const Todo({
    this.id,
    this.type,
    this.title,
    this.description,
    this.steps,
    this.creationDate,
    this.dueDate,
  });
  const Todo.init({
    this.id,
    this.type,
    this.title,
    this.description,
    this.steps,
    this.creationDate,
    this.dueDate,
  });

  Todo copyWith({
    String? id,
    String? type,
    String? title,
    String? description,
    List<TodoStep>? steps,
    DateTime? creationDate,
    DateTime? dueDate,
  }) {
    return Todo(
      id: id ?? this.id,
      type: type ?? this.type,
      title: title ?? this.title,
      description: description ?? this.description,
      steps: steps ?? this.steps,
      creationDate: creationDate ?? this.creationDate,
      dueDate: dueDate ?? this.dueDate,
    );
  }

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{
      "id": id,
      "type": type,
      "title": title,
      "description": description,
      "steps": steps?.map((e) => e.toJson()).toList(),
      "creationDate": creationDate.toString(),
      "dueDate": dueDate.toString(),
    };
    json.removeWhere((key, value) => value == null);
    return json;
  }
}

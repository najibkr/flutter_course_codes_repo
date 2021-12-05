import 'todo_type.dart';

class Todo {
  final String? id;
  final String? title;
  final TodoType? type;
  final String? description;
  final List<String> steps;
  final DateTime? creationDate;
  final DateTime? dueDate;
  const Todo({
    required this.id,
    required this.title,
    required this.type,
    required this.description,
    required this.steps,
    required this.creationDate,
    required this.dueDate,
  });

  const Todo.init({
    this.id,
    this.title,
    this.type,
    this.description,
    this.steps = const [],
    this.creationDate,
    this.dueDate,
  });

  Todo copyWith({
    String? id,
    String? title,
    TodoType? type,
    String? description,
    List<String>? steps,
    DateTime? creationDate,
    DateTime? dueDate,
  }) {
    return Todo(
      id: id ?? this.id,
      title: title ?? this.title,
      type: type ?? this.type,
      description: description ?? this.description,
      steps: steps ?? this.steps,
      creationDate: creationDate ?? this.creationDate,
      dueDate: dueDate ?? this.dueDate,
    );
  }

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{
      'id': id,
      'title': title,
      'type': type?.value,
      'description': description,
      'steps': steps,
      'creationDate': creationDate?.toIso8601String(),
      'dueDate': dueDate?.toIso8601String(),
    };
    json.removeWhere((key, value) => value == null);
    return json;
  }

  static Todo fromJson(Map<String, dynamic>? json) {
    if (json == null) return Todo.init();
    return Todo.init(
      id: json['id'],
      title: json['title'],
      type: TodoTypeParser.fromString(json['type']),
      description: json['description'],
      steps: _listOfString(json['steps']),
      creationDate: DateTime.tryParse(json['creationDate']),
      dueDate: DateTime.tryParse(json['dueDate']),
    );
  }

  @override
  String toString() {
    return '''
    
------------------------------
ID:\t$id
Type:\t$type 
Title:\t$title
Desc:\t$description
Steps:\t$steps
DueD:\t$dueDate
cDAte:\t$creationDate
------------------------------ 
    ''';
  }

  static List<String> _listOfString(List? list) {
    if (list == null) return [];
    return list.map((e) => e.toString()).toList();
  }
}

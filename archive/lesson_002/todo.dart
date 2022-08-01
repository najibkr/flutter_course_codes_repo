import 'dart:io';

class Todo {
  final String? title;
  final bool isCompleted;
  Todo({
    this.title,
    this.isCompleted = false,
  });

  @override
  String toString() {
    return "Todo: $title,  Is Completed: $isCompleted\n\n";
  }
}

List<Todo> todoDB = [];

void saveTodo(Todo todo) {
  todoDB.add(todo);
}

void editTodo(Todo todo) {
  todoDB.removeWhere((e) => e.title == todo.title);
  todoDB.add(todo);
}

List<Todo> getTodos() {
  return todoDB;
}

Todo fetchTodo(String title) {
  return todoDB.firstWhere((element) => element.title!.contains(title));
}

void deleteTodo(String? title) {
  todoDB.removeWhere((e) => e.title == title);
}

void main() {
  for (;;) {
    stdout.write('Please enter a command: create, readAll, delete\n');
    String? command = stdin.readLineSync();
    if (command == 'create') {
      stdout.write('Please enter a todo title: ');
      String? todoTile = stdin.readLineSync();
      Todo newTodo = Todo(title: todoTile);
      saveTodo(newTodo);
    } else if (command == 'readAll') {
      List<Todo> savedTodos = getTodos();
      if (savedTodos.isEmpty) {
        print('No have no todos');
      } else {
        for (int i = 0; i < savedTodos.length; i++) {
          print(savedTodos[i]);
        }
      }
    } else if (command == 'delete') {
      stdout.write('Please enter a todo title: ');
      String? todoTile = stdin.readLineSync();
      deleteTodo(todoTile);
    } else {
      print('Command is not recognized');
    }
  }
}

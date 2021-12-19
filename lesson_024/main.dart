import 'my_database.dart';

void main() {
  var db = MyDatabase();
  final result = db.getData('product');
  print(result);
}

class FunctionB {}

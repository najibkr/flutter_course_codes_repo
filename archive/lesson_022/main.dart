import 'class_creator.dart';

void main() {
  var creator = ClassCreator();
  creator.create();

  final list = [1, 333];
  list.firstWhere((element) => false);
}

import 'dart:io';

void main() {
  Directory dir = Directory('./');
  final items = dir.listSync();
  items.forEach((dir) {
    final fileName = dir.path.split('/').last;
    File(dir.path).copy(fileName);
  });
}

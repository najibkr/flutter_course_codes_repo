import 'dart:convert';
import 'dart:io';

void writeToFile(String fileName) {
  stdin.transform(utf8.decoder).listen((event) async {
    var file = File(fileName);
    if (await file.exists()) {
      file.open(mode: FileMode.append);
    } else {
      file = await File(fileName).create();
      file.open(mode: FileMode.append);
    }
    await file.writeAsString(event, mode: FileMode.append);
  });
}

void main() async {
  final file = File('poems.txt');
  final content = await file.readAsLines();
  for (var line in content) {
    await Future.delayed(Duration(milliseconds: 2000));
    print(line);
  }
}

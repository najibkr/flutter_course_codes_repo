import 'dart:io';

import '../lesson_007/get_user_input.dart';

void main() {
  // Fetching File
  String filePath = getUserInput('Enter file path');
  String fileContent = fetchFileContent(filePath);
  if (fileContent.isEmpty) return;
  print(fileContent);

  /// Program
  while (true) {
    // Command
    String command = getUserInput('Enter a command (find, replace, exit)');
    if (command == 'exit') break;

    // Find Command:
    if (command == 'find') {
      fileContent = fetchFileContent(filePath);
      String query = getUserInput('What are you searching for');
      List<String> words = fileContent.split(' ');
      words = words.map((element) {
        String filtered = element.replaceAll('.', '');
        filtered = filtered.replaceAll(',', '');

        return filtered;
      }).toList();
      final instanceCount = words.where((e) => e == query).toList().length;
      print('''
-------------------------------------------------
Found instance of $query is $instanceCount.
      ''');
      words =
          words.map((e) => e == query ? "(${e.toUpperCase()})" : e).toList();
      print('''
-------------------------------------------------
${words.join(' ')}
      ''');
    }

    // Replace Command:
    if (command == 'replace') {
      fileContent = fetchFileContent(filePath);

      String searchWord = getUserInput('What are you searching for');
      print(searchWord);
      String replace = getUserInput('Enter the replacement');
      print('''

-------------------------------------------------
Before: 

$fileContent
-------------------------------------------------
      ''');
      final replacedContent = fileContent.replaceAll(searchWord, replace);
      print('''

-------------------------------------------------
After:

$replacedContent
-------------------------------------------------
      ''');
      File(filePath).writeAsStringSync(replacedContent);
    } else {
      print('Command not recognized');
    }
    fileContent = fetchFileContent(filePath);
  }
}

String fetchFileContent(String filePath) {
  try {
    var content = File(filePath).readAsStringSync();
    return content;
  } catch (_) {
    return '';
  }
}

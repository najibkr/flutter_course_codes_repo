import 'dart:io';

import '../lesson_007/get_user_input.dart';
import 'constructor.dart';
import 'instance_variable.dart';
import 'json_serializer.dart';

class ClassCreator {
  late String identifier;
  late bool isAbstract;
  late bool isImmutable;
  late int variablesCount;
  late List<InstanceVariable> instanceVariables = [];
  late int constructorsCount;
  late List<Constructor> constructors = [];
  late JsonSerializer serializer;
  late String fileDirectory;
  late String imports;
  ClassCreator() {
    identifier = getUserInput('Enter Class Name');
    isAbstract = getUserInput('Is the class Abstract');
    isImmutable = getUserInput('is the class Immutable');
    variablesCount = getUserInput('\nHow many variables does the class have');
    for (int count = 1; count <= variablesCount; count++) {
      var variable = InstanceVariable(
        identifier:
            getUserInput('\n\u001B[1;33mEnter variable $count identifier'),
        dataType: getUserInput('\u001B[1;34mEnter variable $count data type'),
        isImmutable: isImmutable,
        isNullable: getUserInput('\u001B[1;35mis variable $count nullable'),
      );
      instanceVariables.add(variable);
    }

    /// Contructor
    constructorsCount =
        getUserInput('\nHow many constructors does the class have');
    for (int count = 1; count <= constructorsCount; count++) {
      var newConst = Constructor(
        classIdentifier: identifier,
        identifier:
            getUserInput('\u001B[36mEnter constructor $count identifier', true),
        isImmutable: isImmutable,
        varaibles: instanceVariables,
      );
      constructors.add(newConst);
    }

    serializer = JsonSerializer(
      classIdentifier: identifier,
      varaibles: instanceVariables,
      isImmutable: isImmutable,
    );

    fileDirectory =
        getUserInput('\n\u001B[1;37mWhat is the file directory', true);

    imports =
        getUserInput('Enter imports with correct direcotry & syntax', true);
  }

  String toString() {
    return '''
    $imports
  $getClassIdentfier {
    $instanceVariableToString

    $constructorToString
    
    $gettersToString

    $settersToString

    $copyWithToString

    ${serializer.toJson}
  }
    ''';
  }

  String get getClassIdentfier {
    final abstractable = isAbstract ? 'abstract ' : '';
    return '$abstractable class $identifier';
  }

  String get instanceVariableToString {
    String variablesStr = '';
    for (var variable in instanceVariables) variablesStr += variable.toString();
    return variablesStr;
  }

  String get constructorToString {
    var buffer = StringBuffer();
    for (var constractor in constructors) {
      buffer.write(constractor.toString());
    }
    return buffer.toString();
  }

  String get gettersToString {
    String newGetters = '';
    for (var variable in instanceVariables) newGetters += variable.toGetter;
    return newGetters;
  }

  String get settersToString {
    String newSetters = '';
    for (var variable in instanceVariables) newSetters += variable.toSetter;
    return newSetters;
  }

  String get copyWithToString {
    if (!isImmutable) return '';
    String functionVariables = '';
    String initialized = '';
    for (var variable in instanceVariables) {
      functionVariables += variable.toCopyWithVariable;
      initialized += variable.toCopyWithInitialize;
    }

    return '''
  
  $identifier copyWith ({$functionVariables}){
    return $identifier (
    $initialized
    );
  }
    ''';
  }

  void create() {
    if (fileDirectory.isNotEmpty) {
      if (!Directory(fileDirectory).existsSync()) {}
      Directory(fileDirectory).createSync(recursive: true);
    }
    final fileName = identifier.toLowerCase() + ".dart";
    final path =
        fileDirectory.isNotEmpty ? '$fileDirectory/$fileName' : fileName;
    File(path).writeAsStringSync(toString());
  }

  void printSample() {
    print("${toString()}");
  }
}

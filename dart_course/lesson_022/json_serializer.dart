import 'instance_variable.dart';

class JsonSerializer {
  final String classIdentifier;
  final bool isImmutable;
  final List<InstanceVariable> varaibles;
  const JsonSerializer({
    required this.classIdentifier,
    required this.varaibles,
    required this.isImmutable,
  });

  String typeToJson(InstanceVariable variable) {
    final isBool = variable.dataType.contains('bool');
    final isInt = variable.dataType.contains('int');
    final isDouble = variable.dataType.contains('double');
    final isString = variable.dataType.contains('String');

    // Key and value;
    final key = '"${variable.identifier}"';
    final value = isImmutable
        ? "${variable.identifier},\n"
        : "_${variable.identifier},\n";
    if (isBool || isInt || isDouble || isString) return '$key : $value';
    final isDateTime = variable.dataType.contains('DateTime');
    final immutability = isImmutable ? "" : "_";
    if (isDateTime) {
      return '$key : $immutability${variable.identifier}.toString(),\n';
    }
    dynamic newIdentifier = variable.identifier;
    final nullSuffix = variable.isNullable ? "?" : "";
    return '$key: $newIdentifier$nullSuffix.toJson(),';
  }

  String listToJson(InstanceVariable variable) {
    final isBool = variable.dataType.contains('bool');
    final isInt = variable.dataType.contains('int');
    final isDouble = variable.dataType.contains('double');
    final isString = variable.dataType.contains('String');
    final key = '"${variable.identifier}"';

    final value = isImmutable
        ? "${variable.identifier},\n"
        : "_${variable.identifier},\n";
    if (isBool || isInt || isDouble || isString) return '$key : $value';
    final isDateTime = variable.dataType.contains('DateTime');
    final immutability = isImmutable ? "" : "_";
    final nullSuffix = variable.isNullable ? "?" : "";
    if (isDateTime) {
      return '$key: $immutability${variable.identifier}$nullSuffix.map((e)=> e.toString()).toList(),\n';
    }
    return '$key: $immutability${variable.identifier}$nullSuffix.map((e)=> e.toJson()).toList(),\n';
  }

  String get variableToJson {
    var list = varaibles.map((variable) {
      if (variable.dataType.contains('List')) return listToJson(variable);
      return typeToJson(variable);
    }).toList();
    String variablesStr = '';
    for (var variable in list) variablesStr += variable;
    return variablesStr;
  }

  String get toJson {
    return '''
Map<String, dynamic> toJson(){
  var json = <String, dynamic> {
    $variableToJson
  };
  json.removeWhere((key, value)=> value == null);
  return json;
}
    ''';
  }

  static void printSample() {
    final bool isImuttable = true;
    var serializer = JsonSerializer(
      classIdentifier: 'Todo',
      isImmutable: isImuttable,
      varaibles: [
        InstanceVariable(
          identifier: 'id',
          dataType: 'String',
          isImmutable: isImuttable,
          isNullable: false,
        ),
        InstanceVariable(
          identifier: 'title',
          dataType: 'String',
          isImmutable: isImuttable,
          isNullable: true,
        ),
      ],
    );
    print(serializer);
  }
}

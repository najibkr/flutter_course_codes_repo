import 'dart:io';

import 'getter.dart';
import 'variable.dart';

class Class {
  final String name;
  final List<Variable> variables;
  final List<Getter> getters;
  const Class(this.name, this.variables, this.getters);

  String get _parseVariables {
    String variableString = '';
    for (var variable in variables) {
      variableString += variable.define();
    }
    return variableString;
  }

  String get _parseGetters {
    String gettersVariable = "";
    for (var getter in getters) {
      gettersVariable += getter.define() + "\n";
    }
    return gettersVariable;
  }

  String define() {
    return '''
class $name {
$_parseVariables
$_parseGetters
}
    ''';
  }
}

void main() {
  var variable = Variable(
    dataType: 'String',
    name: 'name',
    // value: '"Ahmad"',
    value: '',
    isNullable: true,
    isImmutable: true,
  );
  var var2 = variable.copyWith(name: 'age', dataType: 'int');
  var getter = Getter.fromVariable(variable);
  var getter2 = Getter.fromVariable(var2);

  var newClass = Class('Person', [variable, var2], [getter, getter2]);
  File('newclass.dart').writeAsStringSync(newClass.define());
}

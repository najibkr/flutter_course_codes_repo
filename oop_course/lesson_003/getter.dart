import 'variable.dart';

class Getter {
  final Variable variable;
  const Getter.fromVariable(this.variable);

  String define() {
    final caps = variable.name[0].toUpperCase() + variable.name.substring(1);
    return '${variable.dataType} get get$caps => _${variable.name};';
  }
}

import 'instance_variable.dart';

class Constructor {
  final String classIdentifier;
  final bool isImmutable;
  final List<InstanceVariable> varaibles;
  final String identifier;
  const Constructor({
    required this.classIdentifier,
    required this.isImmutable,
    required this.varaibles,
    required this.identifier,
  });

  String get toStringParameters {
    String parameters = '';
    for (var param in varaibles) parameters += param.toConstructorVarialbe;
    return parameters;
  }

  String get initalizerList {
    if (isImmutable) return '';
    String initList = '';
    for (var param in varaibles) initList += param.toInitializerListVariable;
    initList = initList.substring(0, initList.length - 1);
    return initList;
  }

  @override
  String toString() {
    final newName = identifier.isEmpty ? '' : '.$identifier';
    if (isImmutable) {
      return 'const $classIdentifier$newName({$toStringParameters});';
    }
    return '$classIdentifier$newName({$toStringParameters}): $initalizerList;';
  }

  static void printSampe() {
    final isImmutable = false;
    var constructor = Constructor(
      classIdentifier: 'Todo',
      isImmutable: isImmutable,
      varaibles: [
        InstanceVariable(
          identifier: 'id',
          dataType: 'String',
          isImmutable: isImmutable,
          isNullable: false,
        ),
        InstanceVariable(
          identifier: 'title',
          dataType: 'String',
          isImmutable: isImmutable,
          isNullable: true,
        ),
      ],
      identifier: 'init',
    );

    print("Constructor :$constructor");
  }
}

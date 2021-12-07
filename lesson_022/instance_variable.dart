class InstanceVariable {
  final String identifier;
  final String dataType;
  final bool isImmutable;
  final bool isNullable;

  const InstanceVariable({
    required this.identifier,
    required this.dataType,
    required this.isImmutable,
    required this.isNullable,
  });

  @override
  String toString() {
    final imuttablity = isImmutable ? 'final ' : '';
    final nullability = isNullable ? '?' : "";
    final privacy = isImmutable ? '' : "_";
    return '$imuttablity $dataType$nullability $privacy$identifier;\n';
  }

  String get toConstructorVarialbe {
    final nullPrefix = isNullable ? '' : "required ";
    if (isImmutable) return '$nullPrefix this.$identifier,\n';
    final nullSuffix = isNullable ? "?" : "";
    return '$nullPrefix $dataType$nullSuffix $identifier,\n';
  }

  String get toInitializerListVariable {
    if (isImmutable) return '';
    return '_$identifier = $identifier,';
  }

  String get toGetter {
    if (isImmutable) return '';
    final nullSuffix = isNullable ? "?" : "";
    final newIdentifier = identifier[0].toUpperCase() + identifier.substring(1);
    return '$dataType$nullSuffix get get$newIdentifier => _$identifier;\n';
  }

  String get toSetter {
    if (isImmutable) return '';
    final newIdentifier = identifier[0].toUpperCase() + identifier.substring(1);
    return 'set set$newIdentifier($dataType new$newIdentifier)=> _$identifier = new$newIdentifier;\n';
  }

  String get toCopyWithVariable {
    if (!isImmutable) return '';
    return '$dataType? $identifier,';
  }

  String get toCopyWithInitialize {
    return '$identifier: $identifier ?? this.$identifier,';
  }

  static void printSample() {
    var variable = InstanceVariable(
      identifier: 'id',
      dataType: 'String',
      isImmutable: true,
      isNullable: true,
    );

    print('Instance Variable : $variable');
    print("Constructor Variable: ${variable.toConstructorVarialbe}");
    print("Initializer List: ${variable.toInitializerListVariable}");
    print("Getter: ${variable.toGetter}");
    print("Setter: ${variable.toSetter}");
    print('CopyWithVar: ${variable.toCopyWithVariable}');
    print('CopyWith Initializer: ${variable.toCopyWithInitialize}');
  }
}

class Variable {
  final String dataType;
  final String name;
  final String value;
  final bool isNullable;
  final bool isImmutable;

  const Variable({
    required this.dataType,
    required this.name,
    required this.value,
    required this.isNullable,
    required this.isImmutable,
  });

  Variable copyWith({
    String? dataType,
    String? name,
    String? value,
    bool? isNullable,
    bool? isImmutable,
  }) {
    return Variable(
      dataType: dataType ?? this.dataType,
      name: name ?? this.name,
      value: value ?? this.value,
      isNullable: isNullable ?? this.isNullable,
      isImmutable: isImmutable ?? this.isImmutable,
    );
  }

  String get _genNullPrefix {
    return isNullable ? '?' : "";
  }

  String define() {
    final keyWord = isImmutable ? 'final ' : '';
    final defValue = value.isEmpty ? '' : "=$value";
    return '$keyWord $dataType${_genNullPrefix} $name $defValue;';
  }

  String declare() {
    final keyWord = isImmutable ? 'final' : '';
    return '$keyWord $dataType${_genNullPrefix} $name;';
  }

  String toStatic() {
    if (value.isNotEmpty) return 'static ' + define();
    return 'static ' + declare();
  }
}

void main() {
  var variable = Variable(
    dataType: 'String',
    name: 'name',
    value: '"Ahmad"',
    isNullable: false,
    isImmutable: true,
  );

  print(variable.toStatic());
}

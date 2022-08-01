class Country {
  final String? name;
  final List<String> cities;
  const Country({
    required this.name,
    required this.cities,
  });
  const Country.init({this.name, this.cities = const []});

  Country copyWith({String? name, List<String>? cities}) {
    return Country(
      name: name ?? this.name,
      cities: cities ?? this.cities,
    );
  }

  factory Country.fromJson(Map<String, dynamic>? json) {
    if (json == null) return const Country.init();
    return Country(
      name: json['name'],
      cities: List<String>.from(json['cities'] ?? []),
    );
  }

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{
      'name': name,
      'cities': cities,
    };
    json.removeWhere((key, value) => value == null);
    return json;
  }
}

class User {
  final String? id;
  final String? userName;
  final String? password;
  final bool isSignedIn;

  const User({
    required this.id,
    required this.userName,
    required this.password,
    required this.isSignedIn,
  });

  const User.init({
    this.id,
    this.userName,
    this.password,
    this.isSignedIn = false,
  });

  User copyWith({
    String? id,
    String? userName,
    String? password,
    bool? isSignedIn,
  }) {
    return User(
      id: id ?? this.id,
      userName: userName ?? this.userName,
      password: password ?? this.password,
      isSignedIn: isSignedIn ?? this.isSignedIn,
    );
  }

  factory User.fromJson(Map<String, dynamic>? json) {
    if (json == null) return const User.init();
    return User(
      id: json['id'],
      userName: json['userName'],
      password: json['password'],
      isSignedIn: json['isSignedIn'],
    );
  }

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{
      'id': id,
      'userName': userName,
      'password': password,
      'isSignedIn': isSignedIn,
    };

    json.removeWhere((key, value) => value == null);
    return json;
  }
}

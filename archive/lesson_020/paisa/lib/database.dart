abstract class Database {
  bool saveData(String key, String value);
  String? readData(String key);
}

class MySQLDatabase implements Database {
  Map<String, String> data = <String, String>{};
  @override
  String? readData(String key) {
    return data[key];
  }

  @override
  bool saveData(String key, String value) {
    data[key] = value;
    return true;
  }
}

class MongoDbDatabase implements Database {
  Map<String, String> data = <String, String>{};
  @override
  String? readData(String key) {
    return data[key];
  }

  @override
  bool saveData(String key, String value) {
    data[key] = value;
    return true;
  }
}

void main() {
  Database db = MongoDbDatabase();
  final result = db.saveData('name', "Najibullah");
  if (result == true) {
    print("Successully saved data");
  }
  final data = db.readData('name');
  print('Data Returned from Database: $data');
}

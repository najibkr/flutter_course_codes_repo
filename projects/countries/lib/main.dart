void main() async {
  final myFuture = await fechData('Najib');
}

// void main() {
//   final myFuture = fechData();
//   myFuture.then((value) => print(value));
//   // http
//   //     .get(Uri.parse('https://countriesnow.space/api/v0.1/countries'))
//   //     .then((response) {
//   //   final jsonBody = Map<String, dynamic>.from(json.decode(response.body));
//   //   final list = List<Map<String, dynamic>>.from(jsonBody['data']);
//   //   list.forEach((map) {
//   //     print(map['country']);
//   //   });
//   // }).catchError((err) => print(err));
// }

Future<String> fechData(String name) {
  if (name == 'Ahmad') {
    return Future.delayed(Duration(seconds: 3), () => "SALAM");
  } else {
    throw 'Go to hell, you are not authorized';
  }
}

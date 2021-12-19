void main() {
  Future myFuture = Future.value('Hello');
  myFuture.then((value) => print(value));
}

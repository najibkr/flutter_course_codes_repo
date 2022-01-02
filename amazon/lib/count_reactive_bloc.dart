import 'dart:async';

import 'package:rxdart/rxdart.dart';

class CountReactiveBloc {
  final _count = BehaviorSubject<int>();
  CountReactiveBloc() {
    _count.sink.add(0);
  }

  void increment() async {
    _count.sink.add(++_count.value);
  }

  Stream<int> get count => _count.stream;

  void dispose() {
    _count.close();
  }
}

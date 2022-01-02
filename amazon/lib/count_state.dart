import 'package:flutter/material.dart';

class CountState extends StatefulWidget {
  final int count;
  final Widget child;
  const CountState({
    Key? key,
    required this.child,
    this.count = 0,
  }) : super(key: key);

  @override
  State<CountState> createState() => _CountStateState();
}

class _CountStateState extends State<CountState> {
  int count = 0;

  void incrementCounter() {
    setState(() {
      count++;
    });
  }

  @override
  void initState() {
    count = widget.count;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CountStateData(
      incrementCount: incrementCounter,
      count: count,
      child: widget.child,
    );
  }
}

class CountStateData extends InheritedWidget {
  final int count;
  final void Function() incrementCount;
  const CountStateData({
    Key? key,
    required this.incrementCount,
    required Widget child,
    required this.count,
  }) : super(key: key, child: child);
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static CountStateData? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CountStateData>();
  }
}

import 'package:amazon/count_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'count_reactive_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CountBloc(),
      child: const MaterialApp(home: HomePage()),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<CountBloc>();
    return Scaffold(
      body: Center(child: Text(bloc.state.toString())),
      floatingActionButton: FloatingActionButton(
        onPressed: context.read<CountBloc>().increment,
      ),
    );
  }
}

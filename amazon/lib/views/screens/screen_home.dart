import 'package:amazon/bloc/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenHome extends StatelessWidget {
  static const String route = '/';
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: const Center(
        child: Text(''),
      ),
      floatingActionButton: TextButton(
        child: const Text('Signout'),
        onPressed: () {
          context.read<UserBloc>().signOut();
        },
      ),
    );
  }
}

import 'package:amazon/bloc/user_bloc.dart';
import 'package:amazon/data/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_router.dart';
import 'bloc/user_state.dart';
import 'repo/app_repository.dart';

void main() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(MainAppSetup(prefs: prefs));
}

class MainAppSetup extends StatelessWidget {
  final SharedPreferences prefs;
  const MainAppSetup({Key? key, required this.prefs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final repo = AppRepository(DataProvider(prefs));
    return BlocProvider(
      create: (context) => UserBloc(repo),
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          final isSignedIn = state.currentUser.isSignedIn;
          return MaterialApp(
            theme: ThemeData.dark(),
            initialRoute: '/',
            onGenerateRoute: (settings) => appRouter(settings, isSignedIn),
          );
        },
      ),
    );
  }
}

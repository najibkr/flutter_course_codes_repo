import 'package:amazon/bloc/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardMessage extends StatelessWidget {
  final String? message;
  const CardMessage(this.message, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Message Card:
    final messageText = Text(
      message ?? '',
      textAlign: TextAlign.center,
      style: const TextStyle(color: Colors.white, fontSize: 20),
    );
    final resetBtn = ElevatedButton(
      onPressed: context.read<UserBloc>().resetState,
      child: const Text('Retry'),
    );
    final cardItems = Column(children: [messageText, resetBtn]);
    // Card Decoration:
    final decoration = BoxDecoration(
      color: Theme.of(context).cardColor,
      boxShadow: const [BoxShadow(color: Colors.white, blurRadius: 5)],
      borderRadius: BorderRadius.circular(10),
    );

    return Center(
      child: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(10),
        height: 300,
        width: 300,
        decoration: decoration,
        child: cardItems,
      ),
    );
  }
}

import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    leading: const Padding(
      padding: EdgeInsets.all(5.0),
      child: Text(
        'Facebook',
        style: TextStyle(fontSize: 30),
      ),
    ),
    leadingWidth: 150,
    centerTitle: true,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.home),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.home),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.home),
        ),
      ],
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.home),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.home),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.home),
      ),
    ],
  );
}

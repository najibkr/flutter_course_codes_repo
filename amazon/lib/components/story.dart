import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 100,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}

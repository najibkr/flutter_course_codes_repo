import 'package:flutter/material.dart';

class EndSideBar extends StatelessWidget {
  const EndSideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.blue[100],
        child: const Center(child: Text('End Sidebar')),
      ),
    );
  }
}

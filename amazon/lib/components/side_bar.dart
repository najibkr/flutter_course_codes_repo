import 'package:flutter/material.dart';

import 'side_bar_button.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.grey[50],
        child: ListView(
          children: [
            SideBarButton(
              onPressed: () {
                print('Showing your friends');
              },
              icon: Icons.person,
              title: 'Friends',
              subtitle: '2 Requests',
            ),
            SideBarButton(
              onPressed: () {
                print('Showing your Groups');
              },
              icon: Icons.group,
              title: 'Groups',
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SideBarButton extends StatelessWidget {
  final void Function()? onPressed;
  final IconData? icon;
  final String? title;
  final String? subtitle;
  const SideBarButton({
    Key? key,
    this.onPressed,
    this.icon,
    this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      hoverColor: Colors.blue[200],
      onTap: onPressed,
      leading: Icon(
        icon ?? Icons.person,
        size: 35,
        color: Colors.blue,
      ),
      title: Text(title ?? ''),
      subtitle: Text(subtitle ?? ''),
    );
  }
}

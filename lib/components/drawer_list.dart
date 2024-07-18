import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  final String text;
  final IconData? icon;
  final void Function()? onTap;

  const DrawerList({super.key, required this.text, required this.icon, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: ListTile(
        title: Text(
          text,
          style: const TextStyle(color: Colors.white, fontFamily: 'Poppins'),
        ),
        leading: Icon(
          icon,
          color: Colors.white,
        ),
        onTap: onTap,
      ),
    );
  }
}
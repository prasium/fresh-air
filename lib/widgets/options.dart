import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  final String title;
  final IconData icon;
  final onTap;

  const Options({Key? key,  required this.title, required this.icon, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: this.onTap,
      leading: Icon(
        icon,
        size: 25,
        color: Color(0xFF4B4FBE),
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}



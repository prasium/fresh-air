import 'package:flutter/material.dart';
import 'package:fresh_air/screens/loginScreen.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FreshAir',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF4B4FBE),
        primarySwatch: Colors.indigo,
        accentColor: Color(0xFF0C0C7A),
      ),
      home: Home(),
    );
  }
}

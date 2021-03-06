import 'package:flutter/material.dart';
import '../screens/loginScreen.dart';
import '../screens/settings.dart';
import '../screens/faq.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  static const routeName = '/main';
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
      routes: {
        Settings.routeName: (context) => Settings(),
        Home.routeName: (context) => Home(),
        LoginScreen.routeName: (context) => LoginScreen(),
        FAQ.routeName: (context) => FAQ(),
      },
      home: LoginScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fresh_air/screens/settings.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../widgets/bottomBarScreens.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final _inactiveColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Fresh Air'),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Settings()),
                );
              },
              icon: const Icon(Icons.settings),
            ),
          ],
        ),
        body: BottomBarScreens(currentIndex: _currentIndex),
        bottomNavigationBar: _buildBottomBar());
  }

  Widget _buildBottomBar() {
    return SalomonBottomBar(
      currentIndex: _currentIndex,
      onTap: (i) => setState(() => _currentIndex = i),
      items: [
        /// Home
        SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            unselectedColor: _inactiveColor),

        /// Profile
        SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            unselectedColor: _inactiveColor),
      ],
    );
  }
}

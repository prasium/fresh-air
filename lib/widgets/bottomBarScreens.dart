import 'package:flutter/material.dart';
import 'package:fresh_air/widgets/aqi_widget.dart';

class BottomBarScreens extends StatelessWidget {
  const BottomBarScreens({
    Key? key,
    required int currentIndex,
  })  : _currentIndex = currentIndex,
        super(key: key);

  final int _currentIndex;

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      Container(
        alignment: Alignment.center,
        child: AQIWidget(),
      ),
      Container(
        alignment: Alignment.center,
        child: Text(
          "Profile",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }
}

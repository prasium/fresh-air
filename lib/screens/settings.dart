import 'package:flutter/material.dart';

import 'home.dart';

class Settings extends StatelessWidget {
  static const routeName = '/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: ListView(
                  children: <Widget>[
                    Options(
                      title: 'Frequently Asked Questions',
                      icon: Icons.help,
                      onTap: () {},
                    ),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                      thickness: 1,
                    ),
                    Options(
                      title: 'Logout',
                      icon: Icons.settings_power,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Options extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function onTap;

  const Options(
      {Key? key, required this.title, required this.icon, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap(),
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

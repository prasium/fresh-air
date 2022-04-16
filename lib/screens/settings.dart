import 'package:flutter/material.dart';
import '../widgets/options.dart';
import '../utils/authentication.dart';

class Settings extends StatelessWidget {

  static const String routeName = '/settings';


  void say(){
    print('hello');
  }
  const Settings({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                   Options(title: 'Frequently Asked Questions',
                       icon: Icons.help,
                       onTap: ()=>say,
                         ),
                Options(title: 'Log Out',
                  icon: Icons.settings_power,
                  onTap: () => ()=> Authentication.signOut(context: context),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

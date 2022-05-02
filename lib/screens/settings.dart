import 'package:flutter/material.dart';
import 'package:fresh_air/screens/faq.dart';
import 'package:fresh_air/screens/loginScreen.dart';
import '../widgets/options.dart';
import '../utils/authentication.dart';

class Settings extends StatelessWidget {

  static const String routeName = '/settings';


  const Settings({Key? key}) : super(key: key);

void sayHello(){
  print('ga');
}
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
                       onTap: ()=>Navigator.of(context).pushNamed(FAQ.routeName),
                       ),
                Options(title: 'Log Out',
                  icon: Icons.settings_power,
                  onTap:  () async {
                  final state =  await Authentication.signOut(context: context);
                  if(state)
                    {
                      Navigator.of(context).popAndPushNamed(LoginScreen.routeName);
                    }
                }
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

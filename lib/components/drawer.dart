import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/login_sigin.dart';
import 'package:flutter_application_1/components/drawer_list.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.orangeAccent,
      child: Column (
        children: [
          // app logo
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Image.asset(
              'asset/logo.png', 
              height: 150, 
              width: 150,
            ),
          ), // placeholder for icon
          // divider
          const Padding(
            padding: EdgeInsets.all(25.0),
            child: Divider(color: Colors.white,
            ),
          ),
          // home
          DrawerList(
            text: 'H O M E', 
            icon: Icons.home, 
            onTap: () => Navigator.pop(context)
          ),
          // settings
          DrawerList(
            text: 'S E T T I N G S', 
            icon: Icons.settings, 
            onTap: () {}
          ),
          const Spacer(),
          // logout
          DrawerList(
            text: 'L O G O U T', 
            icon: Icons.logout, 
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginSigin()));
            }
          ),
          const SizedBox(height: 30.0),
        ],
      )
    );
  }
}
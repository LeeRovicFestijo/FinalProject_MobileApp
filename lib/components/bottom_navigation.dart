import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/profile_page.dart';
import 'package:flutter_application_1/pages/search_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
         child: Stack(
          children: <Widget> [
            Container(
              height: double.infinity,
              width: double.infinity,
            ),
            const Scaffold(
              bottomNavigationBar: Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: TabBar(
                  tabs: <Widget> [
                    Tab(icon: Icon(FontAwesomeIcons.compass),),
                    Tab(icon: Icon(Icons.search),),
                    Tab(icon: Icon(Icons.person),),
                  ],
                  labelColor: Colors.orangeAccent,
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(color: Colors.orangeAccent)
                  ),
                  unselectedLabelColor: Colors.grey,
                ),
              ),
              body: TabBarView(
                children: <Widget> [
                  HomePage(),
                  SearchPage(),
                  ProfilePage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
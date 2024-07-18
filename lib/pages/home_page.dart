import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/lowest_discount_page.dart';
import 'package:flutter_application_1/pages/recommend_page.dart';
import 'package:flutter_application_1/pages/top_pick_pages.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(255, 248, 244, 244),
          padding: EdgeInsets.only(left: 20, right: 20, top: 60),
          child: const Column(
            children: [
              Row(
                children: [
                  Icon(FontAwesomeIcons.locationDot, color: Colors.orangeAccent,),
                  Text(
                    ' Batangas City', 
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.orangeAccent,
                    ),
                  )
                ]
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text(
                    'Recommended for you',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(width: 75),
                  Text(
                    'See all ',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.orangeAccent,
                    ),
                  ),
                  Icon(FontAwesomeIcons.chevronRight, size: 15, color: Colors.orangeAccent,)
                ],
              ),
              SizedBox(height: 15,),

              RecommendPage(),

              SizedBox(height: 20,),

              Row(
                children: [
                  Text(
                    'Top picks',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(width: 200),
                  Text(
                    'See all ',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.orangeAccent,
                    ),
                  ),
                  Icon(FontAwesomeIcons.chevronRight, size: 15, color: Colors.orangeAccent,)
                ],
              ),
              SizedBox(height: 15,),

              TopPick(),

              SizedBox(height: 20,),

              Row(
                children: [
                  Text(
                    'Lowest discount',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(width: 137),
                  Text(
                    'See all ',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.orangeAccent,
                    ),
                  ),
                  Icon(FontAwesomeIcons.chevronRight, size: 15, color: Colors.orangeAccent,)
                ],
              ),
              SizedBox(height: 15,),

              LowestDiscount(),
            ],
          ),
        ),
      ),
    );
  }
}
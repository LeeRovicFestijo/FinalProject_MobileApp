import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/auth/login_sigin.dart';
import 'package:flutter_application_1/pages/lowest_discount_page.dart';
import 'package:flutter_application_1/pages/recommend_page.dart';
import 'package:flutter_application_1/pages/see_all_discount.dart';
import 'package:flutter_application_1/pages/see_all_page.dart';
import 'package:flutter_application_1/pages/see_all_pick.dart';
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
          child: Column(
            children: [
              const Row(
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
              const SizedBox(height: 20,),
              Row(
                children: [
                  const Text(
                    'Recommended for you',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => SeeAllPage()));
                    },
                    child: const Text(
                      'See all ',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ),
                  const Icon(FontAwesomeIcons.chevronRight, size: 15, color: Colors.orangeAccent,)
                ],
              ),
              SizedBox(height: 15,),

              RecommendPage(),

              SizedBox(height: 20,),

              Row(
                children: [
                  const Text(
                    'Top picks',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => const SeeAllPick()));
                    },
                    child: const Text(
                      'See all ',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ),
                  const Icon(FontAwesomeIcons.chevronRight, size: 15, color: Colors.orangeAccent,)
                ],
              ),
              const SizedBox(height: 15,),

              const TopPick(),

              SizedBox(height: 20,),

              Row(
                children: [
                  const Text(
                    'Best Bargain',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => const SeeAllDiscount()));
                    },
                    child: const Text(
                      'See all ',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ),
                  const Icon(FontAwesomeIcons.chevronRight, size: 15, color: Colors.orangeAccent,)
                ],
              ),
              const SizedBox(height: 15,),

              LowestDiscount(),
            ],
          ),
        ),
      ),
    );
  }
}
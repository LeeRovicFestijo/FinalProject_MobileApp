import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';

class search_page  extends StatefulWidget {
  const search_page({super.key});

  @override
  State <search_page> createState() => _search_pageState();
}

class _search_pageState extends State<search_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Search Page"),),
      body: Center(child: ElevatedButton(child: Text("Home Page"),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => home_page()));
      },),),
    );
  }
}
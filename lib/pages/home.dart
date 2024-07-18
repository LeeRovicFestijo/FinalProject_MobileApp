import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/search.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State <home_page> createState() => _home_pageState();
}

class _home_pageState extends State <home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to search Page"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => search_page()));
          },
          ),
        ),
    );
  }
}
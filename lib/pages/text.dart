import 'package:flutter/material.dart';

class TestDart extends StatefulWidget {
  const TestDart({super.key});

  @override
  State<TestDart> createState() => _TestDartState();
}

class _TestDartState extends State<TestDart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          child: Image.asset('asset/Cookie.png', fit: BoxFit.fill,),
          ),
        ),
      );
  }
}
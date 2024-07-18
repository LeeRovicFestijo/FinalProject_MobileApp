import 'package:flutter/material.dart';


class Logo extends StatelessWidget {
  final String image;

  const Logo({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 65,
      backgroundColor: Colors.orangeAccent,
      child: CircleAvatar(
        radius: 60,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(70),
          child: Image.asset(image, height: 120, width: 120,),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}

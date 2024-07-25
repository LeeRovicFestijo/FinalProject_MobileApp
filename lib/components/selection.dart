import 'package:flutter/material.dart';

class Selection extends StatelessWidget {
  final String text_title;
  final String text_place;
  final String text_ratings;
  final String text_away;
  final logo;

  const Selection({
    super.key,
    required this.text_title,
    required this.text_place,
    required this.text_ratings,
    required this.text_away,
    required this.logo
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 200,
      margin: const EdgeInsets.only(bottom: 10),
      child: Material(
        elevation: 4.0,
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              logo,
              const SizedBox(height: 10,),
              Text(
                text_title,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
              Text(
                  text_place,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: Color.fromARGB(255, 129, 126, 126),
                  ),
              ),
              SizedBox(height: 10,),
              
              Row(
                children: [
                  const Icon(Icons.star, size: 18, color: Colors.orangeAccent),
                  const SizedBox(width: 5,),
                  Text(
                    text_ratings,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                      color: Colors.orangeAccent,
                    ),
                  ),
                  const Spacer(),
                  const Icon(Icons.location_on, size: 15, color: Colors.orangeAccent,),
                  const SizedBox(width: 5,),
                  Text(
                    text_away,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                      color: Colors.orangeAccent,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
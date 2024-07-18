import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_application_1/components/logo.dart';

class Selection extends StatelessWidget {
  final String text_title;
  final String text_time;
  final String text_price;
  final logo;

  const Selection({
    super.key,
    required this.text_title,
    required this.text_time,
    required this.text_price,
    required this.logo
    });

  @override
  Widget build(BuildContext context) {
    return Container(
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
              // Container(
              //   child: logo,
              // ),
              const SizedBox(height: 10,),
              Text(
                text_title,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
              Text(
                  text_time,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: Color.fromARGB(255, 129, 126, 126),
                  ),
              ),
              SizedBox(height: 10,),
              
              Row(
                children: [
                  const Icon(FontAwesomeIcons.pesoSign, size: 15,),
                  const SizedBox(width: 1,),
                  Text(
                    text_price,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
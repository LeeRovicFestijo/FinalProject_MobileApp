import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_application_1/components/logo.dart';

class LowestDiscount extends StatefulWidget {
  const LowestDiscount({super.key});

  @override
  State<LowestDiscount> createState() => _LowestDiscountState();
}

class _LowestDiscountState extends State<LowestDiscount> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Material(
              elevation: 4.0,
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      children: [
                      Logo(image: 'asset/claire.jpg'),
                      const SizedBox(width: 5,),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    const Text(
                        "1 Dozen Doughnuts",
                        textAlign: TextAlign.left,
                        style: TextStyle(
  
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                    ),
                    const Text(
                        "Collect tomorrow: 13:00 - 15:00",
                        textAlign: TextAlign.left,
                        style: TextStyle(
  
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Color.fromARGB(255, 129, 126, 126),
                        ),
                    ),
                    const SizedBox(height: 10,),
                    
                    const Row(
                      children: [
                        Icon(FontAwesomeIcons.pesoSign, size: 15,),
                        SizedBox(width: 1,),                     
                        Text(
                          "174.99",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
    
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
          ),
          const SizedBox(width: 20,),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Material(
              elevation: 4.0,
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      children: [
                      Logo(image: 'asset/explosiveburgers.jpg'),
                      const SizedBox(width: 5,),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    const Text(
                        "1 Dozen Doughnuts",
                        textAlign: TextAlign.left,
                        style: TextStyle(
  
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                    ),
                    const Text(
                        "Collect tomorrow: 13:00 - 15:00",
                        textAlign: TextAlign.left,
                        style: TextStyle(
  
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Color.fromARGB(255, 129, 126, 126),
                        ),
                    ),
                    const SizedBox(height: 10,),
                    
                    const Row(
                      children: [
                        Icon(FontAwesomeIcons.pesoSign, size: 15,),
                        const SizedBox(width: 1,),
                        Text(
                          "174.99",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
    
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
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/login_sigin.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_application_1/components/logo.dart';

class TopPick extends StatefulWidget {
  const TopPick({super.key});

  @override
  State<TopPick> createState() => _TopPickState();
}

class _TopPickState extends State<TopPick> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginSigin()));
        },
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
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
                        Logo(image: 'asset/darngoodburger.jpg'),
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
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      Row(
                        children: [
                        Logo(image: 'asset/butch.jpg'),
                        SizedBox(width: 5,),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text(
                          "1 Dozen Doughnuts",
                          textAlign: TextAlign.left,
                          style: TextStyle(
          
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                          ),
                      ),
                      Text(
                          "Collect tomorrow: 13:00 - 15:00",
                          textAlign: TextAlign.left,
                          style: TextStyle(
          
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: Color.fromARGB(255, 129, 126, 126),
                          ),
                      ),
                      SizedBox(height: 10,),
                      
                      Row(
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
          ],
        ),
      ),
      
    );
  }
}
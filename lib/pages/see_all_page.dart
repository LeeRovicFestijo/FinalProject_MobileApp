import 'package:flutter/material.dart';

class SeeAllPage extends StatefulWidget {
  const SeeAllPage({super.key});

  @override
  State<SeeAllPage> createState() => _SeeAllPageState();
}

class _SeeAllPageState extends State<SeeAllPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recommended for you'),
        backgroundColor: const Color.fromARGB(255, 248, 244, 244),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color.fromARGB(255, 248, 244, 244),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(),
                child: Card(
                margin: EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.orangeAccent,
                            child: const Padding(
                              padding: EdgeInsets.only(top: 3, bottom: 3, left: 7, right: 7),
                              child: Text(
                                "1 left",
                                style: TextStyle(
                                  color: Colors.white
                                ),
                              ),
                            ),
                          ),
                          // SizedBox(width: 10,),
                          const Spacer(),
                          Icon(Icons.favorite_border_outlined, color: Colors.orangeAccent,)
                        ],
                      ),
                      const Icon(Icons.arrow_forward, color: Colors.orangeAccent),
                    ]
                  ),
                ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
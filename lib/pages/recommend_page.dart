import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/selection.dart';
import 'package:flutter_application_1/components/logo.dart';

class RecommendPage extends StatefulWidget {
  const RecommendPage({super.key});

  @override
  State<RecommendPage> createState() => _RecommendPageState();
}

class _RecommendPageState extends State<RecommendPage> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Selection(
            text_title: "1 Dozen Doughnuts", 
            text_time: "Collect tomorrow: 13:00 - 15:00", 
            text_price: "174.99",
            logo: Logo(image: 'asset/dunkinlogo.png'),
          ),
          SizedBox(width: 20,),
          Selection(
            text_title: "1 Dozen Doughnuts", 
            text_time: "Collect tomorrow: 13:00 - 15:00", 
            text_price: "174.99",
            logo: Logo(image: 'asset/lacremelogo.png'),
          ),
          SizedBox(width: 20,),
          Selection(
            text_title: "1 Dozen Doughnuts", 
            text_time: "Collect tomorrow: 13:00 - 15:00", 
            text_price: "174.99",
            logo: Logo(image: 'asset/b2g.jpg'),
          ),
          SizedBox(width: 20,),
          Selection(
            text_title: "1 Dozen Doughnuts", 
            text_time: "Collect tomorrow: 13:00 - 15:00", 
            text_price: "174.99",
            logo: Logo(image: 'asset/claire.jpg'),
          ),
          SizedBox(width: 20,),
          Selection(
            text_title: "1 Dozen Doughnuts", 
            text_time: "Collect tomorrow: 13:00 - 15:00", 
            text_price: "174.99",
            logo: Logo(image: 'asset/johannas.jpg'),
          ),
          SizedBox(width: 20,),
          Selection(
            text_title: "1 Dozen Doughnuts", 
            text_time: "Collect tomorrow: 13:00 - 15:00", 
            text_price: "174.99",
            logo: Logo(image: 'asset/bgburger.jpg'),
          ),
          SizedBox(width: 20,),
          Selection(
            text_title: "1 Dozen Doughnuts", 
            text_time: "Collect tomorrow: 13:00 - 15:00", 
            text_price: "174.99",
            logo: Logo(image: 'asset/maxrestaurant.png'),
          ),
          SizedBox(width: 20,),
          Selection(
            text_title: "1 Dozen Doughnuts", 
            text_time: "Collect tomorrow: 13:00 - 15:00", 
            text_price: "174.99",
            logo: Logo(image: 'asset/eatsntreats.jpg'),
          ),
        ],
      ),
    );
  }
}
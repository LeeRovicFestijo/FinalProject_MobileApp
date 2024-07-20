import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/item_list.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemListPage extends StatelessWidget {


  const ItemListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.circleArrowLeft, color: Colors.orangeAccent, size: 30,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_outline_rounded, color: Colors.white, size: 30,),
            onPressed: () {},
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ItemList(
              storeBanner: 'asset/dunkinbanner.jpeg', 
              availableCount: '4 left', 
              logo: 'asset/dunkinlogo.png', 
              storeName: "Dunkin' Donuts", 
              order: '1 dozen doughnuts', 
              price: '299.99 php', 
              ratings: '4.7 rating', 
              collectionTime: 'Collect tomorrow: 13:00 - 15:00', 
              place: 'P. Burgos, Brg. 9, Batangas City', 
              orderInfo: '1 dozen of assorted classic doughnuts', 
              limitedTime: '1 day, 3 hours, 10 mins left to reserve')
          ],
        )
      ),
    );
  }
}
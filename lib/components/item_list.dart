import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemList extends StatelessWidget {

  final String storeBanner;
  final String availableCount;
  final String logo;
  final String storeName;
  final String order;
  final String price;
  final String ratings;
  final String collectionTime;
  final String place;
  final String orderInfo;
  final String limitedTime;
  

  const ItemList({
    super.key,
    required this.storeBanner,
    required this.availableCount,
    required this.logo,
    required this.storeName,
    required this.order,
    required this.price,
    required this.ratings,
    required this.collectionTime,
    required this.place,
    required this.orderInfo,
    required this.limitedTime
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Image.asset(
              storeBanner, //store banner
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.orangeAccent
                ),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(
                  availableCount, //how many left
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset(
                  logo, //logo picture
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                storeName, //store name
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    order, //what type of order
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    price, //price
                    style: TextStyle(fontSize: 18, color: Colors.orangeAccent),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(children: [
                Icon(FontAwesomeIcons.star),
                const SizedBox(width: 5,),
                Text(ratings)
                ],
              ), //ratings
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.access_time),
                  SizedBox(width: 5),
                  Text(collectionTime), //collection time
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.location_on),
                  SizedBox(width: 5),
                  Text(place), //place
                ],
              ),
              SizedBox(height: 20),
              Text(
                'What you could get',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(orderInfo), //what inside the order
              SizedBox(height: 20),
              Text(
                'Ingredients & allergens',
                style: TextStyle(fontSize: 16, color: Colors.blue),
              ),
              SizedBox(height: 20),
              Text(
                'Save a bag and tell us about it!',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.orangeAccent),
              ),
              SizedBox(height: 5),
              Text('This Surprise Bag does not have enough ratings yet.'),
              SizedBox(height: 20),
              Text(
                'What you need to know',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                  '• The store will provide packaging for your food, but we encourage you to bring your own bag to carry it home in.'),
              SizedBox(height: 20),
              Center(
                child: Text(
                  limitedTime, //limited time
                  style: TextStyle(color: Colors.red),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Reserve', style: TextStyle(color: Colors.orangeAccent),),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/payment_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemList extends StatelessWidget {

  final String storeBanner;
  final String availableCount;
  final String logo;
  final String storeName;
  final String order;
  final String price;
  final String ratings;
  final String place;
  final String orderInfo;
  final String limitedTime;
  final String oldPrice;
  

  const ItemList({
    super.key,
    required this.storeBanner,
    required this.availableCount,
    required this.logo,
    required this.storeName,
    required this.order,
    required this.price,
    required this.ratings,
    required this.place,
    required this.orderInfo,
    required this.limitedTime,
    required this.oldPrice
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
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(
                  availableCount, //how many left
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    logo, //logo picture
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                storeName, //store name
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    order, //what type of order
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                    price, //price
                    style: const TextStyle(fontSize: 18, color: Colors.orangeAccent),
                  ),
                ],
              ),
              Row(
                children: [
                  const Spacer(),
                  Text(
                    oldPrice,
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ]
              ),
              const SizedBox(height: 10),
              Row(children: [
                const Icon(FontAwesomeIcons.star),
                const SizedBox(width: 5,),
                Text(ratings)
                ],
              ), //ratings
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(Icons.location_on),
                  const SizedBox(width: 5),
                  Flexible(
                    child: Text(
                      place,
                    ),
                  ), //place
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'What you could get',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(orderInfo), //what inside the order
              const SizedBox(height: 20),
              const Text(
                'What you need to know',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              const Text(
                '• The store will provide packaging for your food, but we encourage you to bring your own bag to carry it home in.'
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  limitedTime, //limited time
                  style: const TextStyle(color: Colors.red),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  ),
                  child: const Text('Order', style: TextStyle(color: Colors.orangeAccent),),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
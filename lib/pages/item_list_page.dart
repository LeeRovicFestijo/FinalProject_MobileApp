import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/item_list.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemListPage extends StatelessWidget {
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
  final String oldPrice;
  
  const ItemListPage({
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
    required this.limitedTime,
    required this.oldPrice
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.circleArrowLeft, color: Colors.orangeAccent, size: 30,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          children: [
            const Spacer(),
            InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor: Colors.orangeAccent,
                    content: Text('Added to favorites'),
                  ),
                );
              },
              child: const Icon(Icons.favorite_border, color: Colors.white),
            ),
          ],
        ),
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ItemList(
              storeBanner: storeBanner, 
              availableCount: availableCount, 
              logo: logo, 
              storeName: storeName, 
              order: order, 
              price: price, 
              ratings: ratings, 
              collectionTime: collectionTime, 
              place: place, 
              orderInfo: orderInfo, 
              limitedTime: limitedTime,
              oldPrice: oldPrice,
            )
          ],
        )
      ),
    );
  }
}
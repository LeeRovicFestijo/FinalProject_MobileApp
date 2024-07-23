import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/login_sigin.dart';
import 'package:flutter_application_1/components/item_card2.dart';
import 'package:flutter_application_1/components/item_list.dart';
import 'package:flutter_application_1/pages/item_list_page.dart';
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
          GestureDetector( //lacreme
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => const ItemListPage(
                    storeBanner: 'asset/lacremelogo.png', 
                    availableCount: '2 left', 
                    logo: 'asset/lacremelogo.png', 
                    storeName: "La Creme", 
                    order: '1 Birthday Cake', 
                    price: '149.99 PHP', 
                    ratings: '4.7 rating', 
                    collectionTime: 'Collect tomorrow: 12:00 - 15:00', 
                    place: 'Twinvilla Subdivision, Argon Street, Batangas City', 
                    orderInfo: 'A custom made birthday cake', 
                    limitedTime: '1 day, 1 hours, 30 mins left to reserve',
                    oldPrice: '399.99 PHP',
                  )
                )
              );
            },
            child: const ItemCard2(
              imageUrl: 'asset/lacremebanner.jpg',
              title: "La Creme",
              time: 'Collect tomorrow: 12:00 - 15:00',
              price: '149.99 PHP',
              rating: '4.7',
              distance: '10.76 mi',
              availableCount: '2 left',
              order: '1 Birthday Cake',
              logo: 'asset/lacremelogo.png',
            ),
          ),

            const SizedBox(width: 20,),

          GestureDetector( //burg2go
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => const ItemListPage(
                    storeBanner: 'asset/burg2gobanner.jpg', 
                    availableCount: '5+ left', 
                    logo: 'asset/b2g.jpg', 
                    storeName: "Burg2Go-Batangas City", 
                    order: '1 Quarter Pounder Burger', 
                    price: '49.99 PHP', 
                    ratings: '4.8 rating', 
                    collectionTime: 'Collect tomorrow: 18:00 - 19:00', 
                    place: 'Lieutenant Colonel D, Barangay 05, Evangelista St, Coor Lt.Col.Danilo S.Atienza, Batangas City', 
                    orderInfo: '1 Flame Grilled Quarter Pounder Burger', 
                    limitedTime: '1 day, 3 hours, 10 mins left to reserve',
                    oldPrice: '119.99 PHP',
                  )
                )
              );
            },
            child: const ItemCard2(
              imageUrl: 'asset/burg2gobanner.jpg',
              title: "Burg2Go-Batangas City",
              time: 'Collect tomorrow: 18:00 - 19:00',
              price: '49.99 PHP',
              rating: '4.8',
              distance: '12.1 mi',
              availableCount: '5+ left',
              order: '1 Quarter Pounder Burger',
              logo: 'asset/b2g.jpg',
            ),
          ),

          const SizedBox(width: 20,),

          GestureDetector( //sweet claire
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => const ItemListPage(
                    storeBanner: 'asset/sweetclairebanner.jpg', 
                    availableCount: '5+ left', 
                    logo: 'asset/claire.jpg', 
                    storeName: "Sweet Claire", 
                    order: '2 Solo Round Cake', 
                    price: '109.99 PHP', 
                    ratings: '4.9 rating', 
                    collectionTime: 'Collect tomorrow: 12:00 - 15:00', 
                    place: 'Poblacion, Batangas City', 
                    orderInfo: '1 premium solo round cake and 1 regular solo round cake', 
                    limitedTime: '1 day, 11 hours, 30 mins left to reserve',
                    oldPrice: '349.99 PHP',
                  )
                )
              );
            },
            child: const ItemCard2(
              imageUrl: 'asset/sweetclairebanner.jpg',
              title: "Sweet Claire",
              time: 'Collect tomorrow: 12:00 - 15:00',
              price: '109.99 PHP',
              rating: '4.9',
              distance: '11.7 mi',
              availableCount: '4 left',
              order: '2 Solo Round Cake',
              logo: 'asset/claire.jpg', 
            ),
          ),

          const SizedBox(width: 20,),

          GestureDetector( // bgburger
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => const ItemListPage(
                    storeBanner: 'asset/bgbanner.jpg', 
                    availableCount: '5+ left', 
                    logo: 'asset/bgburger.jpg', 
                    storeName: "BG Burgers", 
                    order: '1 Burger and wings', 
                    price: '119.99 PHP', 
                    ratings: '4.9 rating', 
                    collectionTime: 'Collect tomorrow: 14:00 - 18:00', 
                    place: 'Concha Road, Beside SM City Batangas, Batangas City', 
                    orderInfo: '1 overload burger and 2 piece buffalo and chase honey garlic wings', 
                    limitedTime: '1 day, 1 hours, 50 mins left to reserve',
                    oldPrice: '299.99 PHP',
                  )
                )
              );
            },
            child: const ItemCard2(
              imageUrl: 'asset/bgbanner.jpg',
              title: "BG Burgers",
              time: 'Collect tomorrow: 14:00 - 18:00',
              price: '119.99 PHP',
              rating: '4.9',
              distance: '4.6 mi',
              availableCount: '5+ left',
              order: '1 Burger and wings',
              logo: 'asset/bgburger.jpg',
            ),
          ),

          const SizedBox(width: 20,),

          GestureDetector( //max
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => const ItemListPage(
                    storeBanner: 'asset/maxbanner.jpg', 
                    availableCount: '4 left', 
                    logo: 'asset/maxrestaurant.png', 
                    storeName: "Max's Restaurant", 
                    order: "Max's Fried Chicken", 
                    price: '149.99 PHP', 
                    ratings: '4.8 rating', 
                    collectionTime: 'Collect tomorrow: 16:00 - 17:30', 
                    place: '35 P. Burgos, Poblacion, Batangas City', 
                    orderInfo: "1 Max's fried chicken, 2 rice, and 1 serving of fried sweet potatoes", 
                    limitedTime: '2 day, 7 hours, 19 mins left to reserve',
                    oldPrice: '499.99 PHP',
                  )
                )
              );
            },
            child: const ItemCard2(
              imageUrl: 'asset/maxbanner.jpg',
              title: "Max's Restaurant",
              time: 'Collect tomorrow: 16:00 - 17:30',
              price: '149.99 PHP',
              rating: '4.8',
              distance: '5.1 mi',
              availableCount: '4 left',
              order: "Max's Fried Chicken",
              logo: 'asset/maxrestaurant.png',
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/selection.dart';
import 'package:flutter_application_1/pages/item_list_page.dart';
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
      child: Row(
        children: [
          GestureDetector( //burgerstation
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => const ItemListPage(
                  storeBanner: 'asset/burgerstationbanner.jpg', 
                  availableCount: '4 left', 
                  logo: 'asset/burgerstation.jpg', 
                  storeName: "Burger Station", 
                  order: '1 Chicken Burger', 
                  price: '109.99 PHP', 
                  ratings: '5 rating', 
                  collectionTime: 'Collect today: 12:00 - 13:00', 
                  place: '24-B Alegre, Barangay 11, Batangas City', 
                  orderInfo: '1 chicken burger with fries', 
                  limitedTime: '2 hours, 42 mins left to reserve',
                  oldPrice: '169.99 PHP',
                  )
                )
              );
            },
            child: const Selection(
              text_title: "Burger Station", 
              text_place: '24-B Alegre, Barangay 11, Batangas City', 
              text_ratings: '5', 
              text_away: '10.81 mi',
              logo: Logo(image: 'asset/burgerstation.jpg'),
            ),
          ),
          const SizedBox(width: 20,),
          GestureDetector( //dunkin4
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => const ItemListPage(
                  storeBanner: 'asset/dunkinbanner.jpeg', 
                  availableCount: '5+ left', 
                  logo: 'asset/dunkinlogo.png', 
                  storeName: "Dunkin' Donuts", 
                  order: '1 dozen doughnuts', 
                  price: '199.99 PHP', 
                  ratings: '5 rating', 
                  collectionTime: 'Collect today: 12:00 - 15:00', 
                  place: 'Ground Floor SM City Batangas, M.Pastor Ave, Batangas City', 
                  orderInfo: '1 dozen of assorted premium doughnuts', 
                  limitedTime: '6 pieces of assorted premium doughnuts and 6 pieces of classic dougnuts',
                  oldPrice: '599.99 PHP',
                  )
                )
              );
            },
            child: const Selection(
              text_title: "Dunkin' Donuts", 
              text_place: 'Ground Floor SM City Batangas, M.Pastor Ave, Batangas City', 
              text_ratings: '5', 
              text_away: '13.2 mi',
              logo: Logo(image: 'asset/dunkinlogo.png'),
            ),
          ),
          const SizedBox(width: 20,),
          GestureDetector( //ann
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => const ItemListPage(
                  storeBanner: 'asset/annbanner.jpg', 
                  availableCount: '3 left', 
                  logo: 'asset/ann.png', 
                  storeName: "Ann's Home", 
                  order: '1 Butter cake', 
                  price: '79.99 PHP', 
                  ratings: '4.9 rating', 
                  collectionTime: 'Collect today: 14:00 - 17:00', 
                  place: 'Q3F8+HCV, National Road, Batangas City', 
                  orderInfo: '1 loaf of soft and moist butter cake', 
                  limitedTime: '11 hours, 10 mins left to reserve',
                  oldPrice: '229.99 PHP',
                  )
                )
              );
            },
            child: const Selection(
              text_title: "Ann's Home", 
              text_place: 'Q3F8+HCV, National Road, Batangas City', 
              text_ratings: '4.9', 
              text_away: '8.46 mi',
              logo: Logo(image: 'asset/ann.png'),
            ),
          ),
          const SizedBox(width: 20,),
          GestureDetector( //bg burger
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => const ItemListPage(
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
            child: const Selection(
              text_title: "BG Burgers", 
              text_place: 'Concha Road, Beside SM City Batangas, Batangas City', 
              text_ratings: '4.9', 
              text_away: '4.6 mi',
              logo: Logo(image: 'asset/bgburger.jpg'),
            ),
          ),
          const SizedBox(width: 20,),
          GestureDetector( //dgb
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => const ItemListPage(
                  storeBanner: 'asset/darngoodburgerbanner.jpg', 
                  availableCount: '5+ left', 
                  logo: 'asset/darngoodburger.jpg', 
                  storeName: "Darn Good Burger", 
                  order: '1 Premium Burger', 
                  price: '49.99 PHP', 
                  ratings: '4.9 rating', 
                  collectionTime: 'Collect today: 13:00 - 16:00', 
                  place: '4F, Citi Eats, Bay City Mall, 19 D. Silang, Poblacion, Batangas City', 
                  orderInfo: '1 raging bull burger with fries', 
                  limitedTime: '9 hours, 57 mins left to reserve',
                  oldPrice: '119.99 PHP',
                  )
                )
              );
            },
            child: const Selection(
              text_title: "Darn Good Burger", 
              text_place: '4F, Citi Eats, Bay City Mall, 19 D. Silang, Poblacion, Batangas City', 
              text_ratings: '4.9', 
              text_away: '9.3 mi',
              logo: Logo(image: 'asset/darngoodburger.jpg'),
            ),
          ),
          const SizedBox(width: 20,),
          GestureDetector( //dunkin3
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => const ItemListPage(
                  storeBanner: 'asset/dunkinbanner.jpeg', 
                  availableCount: '2 left', 
                  logo: 'asset/dunkinlogo.png', 
                  storeName: "Dunkin' Donuts", 
                  order: '1 dozen doughnuts', 
                  price: '149.99 PHP', 
                  ratings: '4.9 rating', 
                  collectionTime: 'Collect today: 13:00 - 15:00', 
                  place: 'Kumintang Ilaya, Batangas City', 
                  orderInfo: '6 pieces of assorted premium doughnuts and 6 pieces of classic dougnuts', 
                  limitedTime: '3 hours, 10 mins left to reserve',
                  oldPrice: '599.99 PHP',
                  )
                )
              );
            },
            child: const Selection(
              text_title: "Dunkin' Donuts", 
              text_place: 'Kumintang Ilaya, Batangas City', 
              text_ratings: '4.9', 
              text_away: '3.1 mi',
              logo: Logo(image: 'asset/dunkinlogo.png'),
            ),
          ),
          const SizedBox(width: 20,),
          GestureDetector( // eats
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => const ItemListPage(
                  storeBanner: 'asset/eatsntreatsbanner.jpg', 
                  availableCount: '2 left', 
                  logo: 'asset/eatsntreats.jpg', 
                  storeName: "Eats and Treats by Darlen", 
                  order: '8-inch strawberry cake', 
                  price: '99.99 PHP', 
                  ratings: '4.9 rating', 
                  collectionTime: 'Collect tomorrow: 10:00 - 12:00', 
                  place: 'Poblacion, Batangas City', 
                  orderInfo: '1 8-inch strawberry cake', 
                  limitedTime: '1 day, 15 hours, 10 mins left to reserve',
                  oldPrice: '199.99 PHP',
                  )
                )
              );
            },
            child: const Selection(
              text_title: "Eats and Treats by Darlen", 
              text_place: 'Poblacion, Batangas City', 
              text_ratings: '4.9', 
              text_away: '9.7 mi',
              logo: Logo(image: 'asset/eatsntreats.jpg'),
            ),
          ),
          const SizedBox(width: 20,),
          GestureDetector( //explosive
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => const ItemListPage(
                  storeBanner: 'asset/explosiveburgerbanner.jpg', 
                  availableCount: '5+ left', 
                  logo: 'asset/explosiveburger.jpg', 
                  storeName: "Explosive Burger", 
                  order: '1 Mayon Burger', 
                  price: '89.99 PHP', 
                  ratings: '4.9 rating', 
                  collectionTime: 'Collect tomorrow: 14:00 - 16:00', 
                  place: '125 C M.H.Del Pilar, Street, Batangas City', 
                  orderInfo: '1 triple quarter pounder with bun, cheese, grilled patty, honey mustard, ketchup, cucumber, tomato, white onion, fresh lettuce', 
                  limitedTime: '1 day, 8 hours, 31 mins left to reserve',
                  oldPrice: '239.99 PHP',
                  )
                )
              );
            },
            child: const Selection(
              text_title: "Explosive Burger", 
              text_place: 'asset/explosiveburger.jpg', 
              text_ratings: '4.9', 
              text_away: '15.7 mi',
              logo: Logo(image: 'asset/explosiveburgers.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
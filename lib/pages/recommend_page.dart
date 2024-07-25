import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/components/item_card2.dart';
import 'package:flutter_application_1/pages/item_list_page.dart';

class RecommendPage extends StatefulWidget {
  const RecommendPage({super.key});

  @override
  State<RecommendPage> createState() => _RecommendPageState();
}

class _RecommendPageState extends State<RecommendPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GestureDetector( //dunkin
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => const ItemListPage(
                    storeBanner: 'asset/dunkinbanner.jpeg', 
                    availableCount: '4 left', 
                    logo: 'asset/dunkinlogo.png', 
                    storeName: "Dunkin' Donuts", 
                    order: '1 dozen doughnuts', 
                    price: '299.99 PHP', 
                    ratings: '4.7 rating', 
                    place: 'P. Burgos, Brg. 9, Batangas City', 
                    orderInfo: '1 dozen of assorted premium doughnuts', 
                    limitedTime: '1 day, 3 hours, 10 mins left to order',
                    oldPrice: '599.99 PHP',
                  )
                )
              );
            },
            child: const ItemCard2(
              imageUrl: 'asset/dunkinbanner.jpeg',
              title: "Dunkin' Donuts",
              price: '299.99 PHP',
              rating: '4.7',
              distance: '7.5 mi',
              availableCount: '4 left',
              order: '1 dozen doughnuts',
              logo: 'asset/dunkinlogo.png',
            ),
          ),
      
        const SizedBox(width: 20,),

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
                  place: 'Twinvilla Subdivision, Argon Street, Batangas City', 
                  orderInfo: 'A custom made birthday cake', 
                  limitedTime: '1 day, 1 hours, 30 mins left to order',
                  oldPrice: '399.99 PHP',
                )
              )
            );
          },
          child: const ItemCard2(
            imageUrl: 'asset/lacremebanner.jpg',
            title: "La Creme",
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
                  place: 'Lieutenant Colonel D, Barangay 05, Evangelista St, Coor Lt.Col.Danilo S.Atienza, Batangas City', 
                  orderInfo: '1 Flame Grilled Quarter Pounder Burger', 
                  limitedTime: '1 day, 3 hours, 10 mins left to order',
                  oldPrice: '119.99 PHP',
                )
              )
            );
          },
          child: const ItemCard2(
            imageUrl: 'asset/burg2gobanner.jpg',
            title: "Burg2Go-Batangas City",
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
                  place: 'Poblacion, Batangas City', 
                  orderInfo: '1 premium solo round cake and 1 regular solo round cake', 
                  limitedTime: '1 day, 11 hours, 30 mins left to order',
                  oldPrice: '349.99 PHP',
                )
              )
            );
          },
          child: const ItemCard2(
            imageUrl: 'asset/sweetclairebanner.jpg',
            title: "Sweet Claire",
            price: '109.99 PHP',
            rating: '4.9',
            distance: '11.7 mi',
            availableCount: '4 left',
            order: '2 Solo Round Cake',
            logo: 'asset/claire.jpg', 
          ),
        ),

        const SizedBox(width: 20,),

        GestureDetector( //johannas grille
          onTap: () {
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context) => const ItemListPage(
                  storeBanner: 'asset/johannasbanner.jpg', 
                  availableCount: '3 left', 
                  logo: 'asset/johannas.jpg', 
                  storeName: "Johanna's Grille", 
                  order: '1 Crispy Pata', 
                  price: '299.99 PHP', 
                  ratings: '4.8 rating', 
                  place: 'Q364+9V9, P. Burgos, Poblacion, Batangas City', 
                  orderInfo: '1 Medium Crispy Pata', 
                  limitedTime: '2 day, 15 hours, 48 mins left to order',
                  oldPrice: '599.99 PHP',
                )
              )
            );
          },
          child: const ItemCard2(
            imageUrl: 'asset/johannasbanner.jpg',
            title: "Johanna's Grille",
            price: '299.99 PHP',
            rating: '4.8',
            distance: '15.2 mi',
            availableCount: '3 left',
            order: '1 Medium Crispy Pata',
            logo: 'asset/johannas.jpg',
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
                  place: 'Concha Road, Beside SM City Batangas, Batangas City', 
                  orderInfo: '1 overload burger and 2 piece buffalo and chase honey garlic wings', 
                  limitedTime: '1 day, 1 hours, 50 mins left to order',
                  oldPrice: '299.99 PHP',
                )
              )
            );
          },
          child: const ItemCard2(
            imageUrl: 'asset/bgbanner.jpg',
            title: "BG Burgers",
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
                  place: '35 P. Burgos, Poblacion, Batangas City', 
                  orderInfo: "1 Max's fried chicken, 2 rice, and 1 serving of fried sweet potatoes", 
                  limitedTime: '2 day, 7 hours, 19 mins left to order',
                  oldPrice: '499.99 PHP',
                )
              )
            );
          },
          child: const ItemCard2(
            imageUrl: 'asset/maxbanner.jpg',
            title: "Dunkin' Donuts",
            price: '149.99 PHP',
            rating: '4.8',
            distance: '5.1 mi',
            availableCount: '4 left',
            order: "Max's Fried Chicken",
            logo: 'asset/maxrestaurant.png',
          ),
        ),

          const SizedBox(width: 20,),

          GestureDetector( //eats and treats
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => const ItemListPage(
                    storeBanner: 'asset/eatsntreatsbanner.jpg', 
                    availableCount: '2 left', 
                    logo: 'asset/eatsntreats.jpg', 
                    storeName: "Eats and Treats by Darlen", 
                    order: '8-inch strawberry cake', 
                    price: '99.99 PHP', 
                    ratings: '4.9 rating', 
                    place: 'Poblacion, Batangas City', 
                    orderInfo: '1 8-inch strawberry cake', 
                    limitedTime: '1 day, 15 hours, 10 mins left to order',
                    oldPrice: '199.99 PHP',
                  )
                )
              );
            },
            child: const ItemCard2(
              imageUrl: 'asset/eatsntreatsbanner.jpg',
              title: "Eats and Treats by Darlen",
              price: '99.99 PHP',
              rating: '4.9',
              distance: '9.7 mi',
              availableCount: '2 left',
              order: '8-inch strawberry cake',
              logo: 'asset/eatsntreats.jpg',
            ),
          ),
        ],
      ),
    );
  }
}
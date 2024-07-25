import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/item_card.dart';
import 'package:flutter_application_1/pages/item_list_page.dart';

class SeeAllPage extends StatelessWidget {
  const SeeAllPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Recommended for you',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(255, 248, 244, 244),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Icon(Icons.info, color: Colors.orangeAccent),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Add a store to your favourites so you can easily find it again later',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector( //dunkin 1
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
                child: const ItemCard(
                  imageUrl: 'asset/dunkinbanner.jpeg',
                  title: "Dunkin' Donuts",
                  price: '299.99',
                  oldPrice: '599.99',
                  rating: '4.7',
                  distance: '7.5 mi',
                  availableCount: '4 left',
                  order: '1 dozen doughnuts',
                ),
              ),
              GestureDetector( //dunkin 2
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) => const ItemListPage(
                        storeBanner: 'asset/dunkinbanner.jpeg', 
                        availableCount: '5+ left', 
                        logo: 'asset/dunkinlogo.png', 
                        storeName: "Dunkin' Donuts", 
                        order: '1 dozen doughnuts', 
                        price: '299.99 PHP', 
                        ratings: '4.7 rating', 
                        place: 'Calicanto, Batangas City', 
                        orderInfo: '1 dozen of assorted premium doughnuts', 
                        limitedTime: '1 day, 13 hours, 10 mins left to order',
                        oldPrice: '599.99 PHP',
                      )
                    )
                  );
                },
                child: const ItemCard(
                  imageUrl: 'asset/dunkinbanner.jpeg',
                  title: "Dunkin' Donuts",
                  price: '299.99',
                  oldPrice: '599.99',
                  rating: '4.7',
                  distance: '3.73 mi',
                  availableCount: '5+ left',
                  order: '1 dozen doughnuts',
                ),
              ),
              GestureDetector( //dunkin 3
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) => const ItemListPage(
                        storeBanner: 'asset/dunkinbanner.jpeg', 
                        availableCount: '2 left', 
                        logo: 'asset/dunkinlogo.png', 
                        storeName: "Dunkin' Donuts", 
                        order: '1 dozen doughnuts', 
                        price: '149.99 PHP', 
                        ratings: '4.9 rating', 
                        place: 'Kumintang Ilaya, Batangas City', 
                        orderInfo: '6 pieces of assorted premium doughnuts and 6 pieces of classic dougnuts', 
                        limitedTime: '3 hours, 10 mins left to order',
                        oldPrice: '599.99 PHP',
                      )
                    )
                  );
                },
                child: const ItemCard(
                  imageUrl: 'asset/dunkinbanner.jpeg',
                  title: "Dunkin' Donuts",
                  price: '149.99 PHP',
                  oldPrice: '599.99 PHP',
                  rating: '4.9',
                  distance: '3.1 mi',
                  availableCount: '2 left',
                  order: '1 dozen doughnuts',
                ),
              ),
              GestureDetector( // dunkin 4
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) => const ItemListPage(
                        storeBanner: 'asset/dunkinbanner.jpeg', 
                        availableCount: '5+ left', 
                        logo: 'asset/dunkinlogo.png', 
                        storeName: "Dunkin' Donuts", 
                        order: '1 dozen doughnuts', 
                        price: '199.99 PHP', 
                        ratings: '5 rating', 
                        place: 'Ground Floor SM City Batangas, M.Pastor Ave, Batangas City', 
                        orderInfo: '6 pieces of assorted premium doughnuts and 6 pieces of classic dougnuts', 
                        limitedTime: '3 hours, 10 mins left to order',
                        oldPrice: '599.99 PHP',
                      )
                    )
                  );
                },
                child: const ItemCard(
                  imageUrl: 'asset/dunkinbanner.jpeg',
                  title: "Dunkin' Donuts",
                  price: '199.99 PHP',
                  oldPrice: '599.99 PHP',
                  rating: '5',
                  distance: '13.2 mi',
                  availableCount: '5+ left',
                  order: '1 dozen doughnuts',
                ),
              ),
              GestureDetector( // lacreme
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
                child: const ItemCard(
                  imageUrl: 'asset/lacremebanner.jpg',
                  title: 'La Creme',
                  price: '149.99 PHP',
                  oldPrice: '399.99 PHP',
                  rating: '4.7',
                  distance: '10.76 mi',
                  availableCount: '2 left',
                  order: '1 Birthday Cake',
                ),
              ),
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
                child: const ItemCard(
                  imageUrl: 'asset/burg2gobanner.jpg',
                  title: "Burg2Go-Batangas City",
                  price: '49.99 PHP',
                  oldPrice: '119.99 PHP',
                  rating: '4.8',
                  distance: '12.1 mi',
                  availableCount: '5+ left',
                  order: '1 Quarter Pounder Burger',
                ),
              ),
              GestureDetector( // sweet claire
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
                child: const ItemCard(
                  imageUrl: 'asset/sweetclairebanner.jpg',
                  title: "Sweet Claire",
                  price: '109.99 PHP',
                  oldPrice: '349.99 PHP',
                  rating: '4.9',
                  distance: '11.7 mi',
                  availableCount: '4 left',
                  order: '2 Solo Round Cake',
                ),
              ),
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
                child: const ItemCard(
                  imageUrl: 'asset/johannasbanner.jpg',
                  title: "Johanna's Grille",
                  price: '299.99 PHP',
                  oldPrice: '599.99 PHP',
                  rating: '4.8',
                  distance: '15.2 mi',
                  availableCount: '3 left',
                  order: '1 Crispy Pata',
                ),
              ),
              GestureDetector( //bg burgers
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
                child: const ItemCard(
                  imageUrl: 'asset/bgbanner.jpg',
                  title: "BG Burgers",
                  price: '119.99 PHP',
                  oldPrice: '299.99 PHP',
                  rating: '4.9',
                  distance: '4.6 mi',
                  availableCount: '5+ left',
                  order: '1 Burger and wings',
                ),
              ),
              GestureDetector( // max
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
                child: const ItemCard(
                  imageUrl: 'asset/maxbanner.jpg',
                  title: "Max's Restaurant",
                  price: '149.99 PHP',
                  oldPrice: '499.99 PHP',
                  rating: '4.8',
                  distance: '5.1 mi',
                  availableCount: '4 left',
                  order: "Max's Fried Chicken",
                ),
              ),
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
                child: const ItemCard(
                  imageUrl: 'asset/eatsntreatsbanner.jpg',
                  title: "Eats and Treats by Darlen",
                  price: '99.99 PHP',
                  oldPrice: '199.99 PHP',
                  rating: '4.9',
                  distance: '9.7 mi',
                  availableCount: '2 left',
                  order: '8-inch strawberry cake',
                ),
              ),
              GestureDetector( //darn good burger
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) => const ItemListPage(
                        storeBanner: 'asset/darngoodburgerbanner.jpg', 
                        availableCount: '5+ left', 
                        logo: 'asset/darngoodburger.jpg', 
                        storeName: "Darn Good Burger", 
                        order: '1 Premium Burger', 
                        price: '49.99 PHP', 
                        ratings: '4.9 rating', 
                        place: '4F, Citi Eats, Bay City Mall, 19 D. Silang, Poblacion, Batangas City', 
                        orderInfo: '1 raging bull burger with fries', 
                        limitedTime: '9 hours, 57 mins left to order',
                        oldPrice: '119.99 PHP',
                      )
                    )
                  );
                },
                child: const ItemCard( 
                  imageUrl: 'asset/darngoodburgerbanner.jpg',
                  title: "Darn Good Burger",
                  price: '49.99 PHP',
                  oldPrice: '119.99 PHP',
                  rating: '4.9',
                  distance: '9.3 mi',
                  availableCount: '5+ left',
                  order: '1 Premium Burger',
                ),
              ),
              GestureDetector( //butch
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) => const ItemListPage(
                        storeBanner: 'asset/butchbanner.jpg', 
                        availableCount: '5 left', 
                        logo: 'asset/butch.jpg', 
                        storeName: "Butch Seafood and Grill Restaurant", 
                        order: 'Crispy chicken', 
                        price: '89.99 PHP', 
                        ratings: '4.7 rating', 
                        place: '8 National Road, Batangas City', 
                        orderInfo: '5 pieces of crispy chicken', 
                        limitedTime: '12 hours, 10 mins left to order',
                        oldPrice: '249.99 PHP',
                      )
                    )
                  );
                },
                child: const ItemCard(
                  imageUrl: 'asset/butchbanner.jpg',
                  title: "Butch Seafood and Grill Restaurant",
                  price: '89.99 PHP',
                  oldPrice: '249.99 PHP',
                  rating: '4.7',
                  distance: '11.7 mi',
                  availableCount: '5 left',
                  order: 'Crispy chicken',
                ),
              ),
              GestureDetector( //explosive burger
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) => const ItemListPage(
                        storeBanner: 'asset/explosiveburgerbanner.jpg', 
                        availableCount: '5+ left', 
                        logo: 'asset/explosiveburger.jpg', 
                        storeName: "Explosive Burger", 
                        order: '1 Mayon Burger', 
                        price: '89.99 PHP', 
                        ratings: '4.9 rating', 
                        place: '125 C M.H.Del Pilar, Street, Batangas City', 
                        orderInfo: '1 triple quarter pounder with bun, cheese, grilled patty, honey mustard, ketchup, cucumber, tomato, white onion, fresh lettuce', 
                        limitedTime: '1 day, 8 hours, 31 mins left to order',
                        oldPrice: '239.99 PHP',
                      )
                    )
                  );
                },
                child: const ItemCard(
                  imageUrl: 'asset/explosiveburgerbanner.jpg',
                  title: "Explosive Burger",
                  price: '89.99 PHP',
                  oldPrice: '239.99 PHP',
                  rating: '4.9',
                  distance: '15.7 mi',
                  availableCount: '5+ left',
                  order: '1 Mayon Burger',
                ),
              ),
              GestureDetector( // ann's home
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) => const ItemListPage(
                        storeBanner: 'asset/annbanner.jpg', 
                        availableCount: '3 left', 
                        logo: 'asset/ann.png', 
                        storeName: "Ann's Home", 
                        order: '1 Butter cake', 
                        price: '79.99 PHP', 
                        ratings: '4.9 rating', 
                        place: 'Q3F8+HCV, National Road, Batangas City', 
                        orderInfo: '1 loaf of soft and moist butter cake', 
                        limitedTime: '11 hours, 10 mins left to order',
                        oldPrice: '229.99 PHP',
                      )
                    )
                  );
                },
                child: const ItemCard(
                  imageUrl: 'asset/annbanner.jpg',
                  title: "Ann's Home",
                  price: '79.99 PHP',
                  oldPrice: '229.99 PHP',
                  rating: '4.9',
                  distance: '8.46 mi',
                  availableCount: '3 left',
                  order: '1 Butter cake',
                ),
              ),
              GestureDetector( //the burger station
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) => const ItemListPage(
                        storeBanner: 'asset/burgerstationbanner.jpg', 
                        availableCount: '4 left', 
                        logo: 'asset/burgerstation.jpg', 
                        storeName: "Burger Station", 
                        order: '1 Chicken Burger', 
                        price: '109.99 PHP', 
                        ratings: '5 rating', 
                        place: '24-B Alegre, Barangay 11, Batangas City', 
                        orderInfo: '1 chicken burger with fries', 
                        limitedTime: '2 hours, 42 mins left to order',
                        oldPrice: '169.99 PHP',
                      )
                    )
                  );
                },
                child: const ItemCard(
                  imageUrl: 'asset/burgerstationbanner.jpg',
                  title: "Burger Station",
                  price: '109.99 PHP',
                  oldPrice: '169.99 PHP',
                  rating: '5',
                  distance: '10.81 mi',
                  availableCount: '4 left',
                  order: '1 Chicken Burger',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



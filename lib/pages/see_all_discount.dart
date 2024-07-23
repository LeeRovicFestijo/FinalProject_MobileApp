import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/item_card.dart';
import 'package:flutter_application_1/pages/item_list_page.dart';

class SeeAllDiscount extends StatelessWidget {
  const SeeAllDiscount({super.key});

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
          'Best Bargain',
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
                        collectionTime: 'Collect today: 13:00 - 15:00', 
                        place: 'Kumintang Ilaya, Batangas City', 
                        orderInfo: '6 pieces of assorted premium doughnuts and 6 pieces of classic dougnuts', 
                        limitedTime: '3 hours, 10 mins left to reserve',
                        oldPrice: '599.99 PHP',
                      )
                    )
                  );
                },
                child: const ItemCard(
                  imageUrl: 'asset/dunkinbanner.jpeg',
                  title: "Dunkin' Donuts",
                  time: 'Collect today: 13:00 - 15:00',
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
                        collectionTime: 'Collect today: 12:00 - 15:00', 
                        place: 'Ground Floor SM City Batangas, M.Pastor Ave, Batangas City', 
                        orderInfo: '1 dozen of assorted premium doughnuts', 
                        limitedTime: '6 pieces of assorted premium doughnuts and 6 pieces of classic dougnuts',
                        oldPrice: '599.99 PHP',
                      )
                    )
                  );
                },
                child: const ItemCard(
                  imageUrl: 'asset/dunkinbanner.jpeg',
                  title: "Dunkin' Donuts",
                  time: 'Collect tomorrow: 04:30 - 05:00',
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
                        collectionTime: 'Collect tomorrow: 12:00 - 15:00', 
                        place: 'Twinvilla Subdivision, Argon Street, Batangas City', 
                        orderInfo: 'A custom made birthday cake', 
                        limitedTime: '1 day, 1 hours, 30 mins left to reserve',
                        oldPrice: '399.99 PHP',
                      )
                    )
                  );
                },
                child: const ItemCard(
                  imageUrl: 'asset/lacremebanner.jpg',
                  title: 'La Creme',
                  time: 'Collect tomorrow: 12:00 - 15:00',
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
                        collectionTime: 'Collect tomorrow: 18:00 - 19:00', 
                        place: 'Lieutenant Colonel D, Barangay 05, Evangelista St, Coor Lt.Col.Danilo S.Atienza, Batangas City', 
                        orderInfo: '1 Flame Grilled Quarter Pounder Burger', 
                        limitedTime: '1 day, 3 hours, 10 mins left to reserve',
                        oldPrice: '119.99 PHP',
                      )
                    )
                  );
                },
                child: const ItemCard(
                  imageUrl: 'asset/burg2gobanner.jpg',
                  title: "Burg2Go-Batangas City",
                  time: 'Collect tomorrow: 18:00 - 19:00',
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
                        collectionTime: 'Collect tomorrow: 12:00 - 15:00', 
                        place: 'Poblacion, Batangas City', 
                        orderInfo: '1 premium solo round cake and 1 regular solo round cake', 
                        limitedTime: '1 day, 11 hours, 30 mins left to reserve',
                        oldPrice: '349.99 PHP',
                      )
                    )
                  );
                },
                child: const ItemCard(
                  imageUrl: 'asset/sweetclairebanner.jpg',
                  title: "Sweet Claire",
                  time: 'Collect tomorrow: 12:00 - 15:00',
                  price: '109.99 PHP',
                  oldPrice: '349.99 PHP',
                  rating: '4.9',
                  distance: '11.7 mi',
                  availableCount: '4 left',
                  order: '2 Solo Round Cake',
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
                        collectionTime: 'Collect tomorrow: 14:00 - 18:00', 
                        place: 'Concha Road, Beside SM City Batangas, Batangas City', 
                        orderInfo: '1 overload burger and 2 piece buffalo and chase honey garlic wings', 
                        limitedTime: '1 day, 1 hours, 50 mins left to reserve',
                        oldPrice: '299.99 PHP',
                      )
                    )
                  );
                },
                child: const ItemCard(
                  imageUrl: 'asset/bgbanner.jpg',
                  title: "BG Burgers",
                  time: 'Collect tomorrow: 14:00 - 18:00',
                  price: '119.99 PHP',
                  oldPrice: '299.99 PHP',
                  rating: '4.9',
                  distance: '4.6 mi',
                  availableCount: '4+ left',
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
                        collectionTime: 'Collect tomorrow: 16:00 - 17:30', 
                        place: '35 P. Burgos, Poblacion, Batangas City', 
                        orderInfo: "1 Max's fried chicken, 2 rice, and 1 serving of fried sweet potatoes", 
                        limitedTime: '2 day, 7 hours, 19 mins left to reserve',
                        oldPrice: '499.99 PHP',
                      )
                    )
                  );
                },
                child: const ItemCard(
                  imageUrl: 'asset/maxbanner.jpg',
                  title: "Max's Restaurant",
                  time: 'Collect tomorrow: 16:00 - 17:30',
                  price: '149.99 PHP',
                  oldPrice: '499.99 PHP',
                  rating: '4.8',
                  distance: '5.1 mi',
                  availableCount: '4 left',
                  order: "Max's Fried Chicken",
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
                        collectionTime: 'Collect today: 13:00 - 16:00', 
                        place: '4F, Citi Eats, Bay City Mall, 19 D. Silang, Poblacion, Batangas City', 
                        orderInfo: '1 raging bull burger with fries', 
                        limitedTime: '9 hours, 57 mins left to reserve',
                        oldPrice: '119.99 PHP',
                      )
                    )
                  );
                },
                child: const ItemCard( 
                  imageUrl: 'asset/darngoodburgerbanner.jpg',
                  title: "Darn Good Burger",
                  time: 'Collect today: 13:00 - 16:00',
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
                        collectionTime: 'Collect today: 13:00 - 15:00', 
                        place: '8 National Road, Batangas City', 
                        orderInfo: '5 pieces of crispy chicken', 
                        limitedTime: '12 hours, 10 mins left to reserve',
                        oldPrice: '249.99 PHP',
                      )
                    )
                  );
                },
                child: const ItemCard(
                  imageUrl: 'asset/butchbanner.jpg',
                  title: "Butch Seafood and Grill Restaurant",
                  time: 'Collect today: 13:00 - 15:00',
                  price: '89.99 PHP',
                  oldPrice: '249.99 PHP',
                  rating: '4.7',
                  distance: '11.7 mi',
                  availableCount: '5 left',
                  order: 'Crispy chicken',
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
                        collectionTime: 'Collect today: 14:00 - 17:00', 
                        place: 'Q3F8+HCV, National Road, Batangas City', 
                        orderInfo: '1 loaf of soft and moist butter cake', 
                        limitedTime: '11 hours, 10 mins left to reserve',
                        oldPrice: '229.99 PHP',
                      )
                    )
                  );
                },
                child: const ItemCard(
                  imageUrl: 'asset/annbanner.jpg',
                  title: "Ann's Home",
                  time: 'Collect today: 14:00 - 17:00',
                  price: '79.99 PHP',
                  oldPrice: '229.99 PHP',
                  rating: '4.9',
                  distance: '8.46 mi',
                  availableCount: '3 left',
                  order: '1 Butter cake',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



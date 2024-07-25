import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/item_card3.dart';
import 'package:flutter_application_1/pages/item_list_page.dart';

class SeeAllPick extends StatelessWidget {
  const SeeAllPick({super.key});

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
          'Top picks',
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
                        'These are the top stores picked by customers.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(// burger station
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
                child: const ItemCard3(
                  imageUrl: 'asset/burgerstationbanner.jpg', 
                  logo: 'asset/burgerstation.jpg', 
                  title: "Burger Station", 
                  place: '24-B Alegre, Barangay 11, Batangas City', 
                  distance: '10.81 mi',
                  ratings: '5',
                ),
              ),
              GestureDetector(// dunkin 4
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
                        orderInfo: '1 dozen of assorted premium doughnuts', 
                        limitedTime: '6 pieces of assorted premium doughnuts and 6 pieces of classic dougnuts',
                        oldPrice: '599.99 PHP',
                      )
                    )
                  );
                },
                child: const ItemCard3(
                  imageUrl: 'asset/dunkinbanner.jpeg', 
                  logo: 'asset/dunkinlogo.png', 
                  title: "Dunkin' Donuts", 
                  place: 'Ground Floor SM City Batangas, M.Pastor Ave, Batangas City', 
                  distance: '13.2 mi',
                  ratings: '5',
                ),
              ),
              GestureDetector(// anns
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
                child: const ItemCard3(
                  imageUrl: 'asset/annbanner.jpg', 
                  logo: 'asset/ann.png', 
                  title: "Ann's Home", 
                  place: 'Q3F8+HCV, National Road, Batangas City', 
                  distance: '8.46 mi',
                  ratings: '4.9',
                ),
              ),
              GestureDetector(// bg burger
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
                child: const ItemCard3(
                  imageUrl: 'asset/bgbanner.jpg', 
                  logo: 'asset/bgburger.jpg', 
                  title: "BG Burgers", 
                  place: 'Concha Road, Beside SM City Batangas, Batangas City', 
                  distance: '4.6 mi',
                  ratings: '4.9',
                ),
              ),
              GestureDetector(// dgb
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
                child: const ItemCard3(
                  imageUrl: 'asset/darngoodburgerbanner.jpg', 
                  logo: 'asset/darngoodburger.jpg', 
                  title: "Darn Good Burger", 
                  place: '4F, Citi Eats, Bay City Mall, 19 D. Silang, Poblacion, Batangas City', 
                  distance: '9.3 mi',
                  ratings: '4.9',
                ),
              ),
              GestureDetector(// dunkin 3
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
                child: const ItemCard3(
                  imageUrl: 'asset/dunkinbanner.jpeg', 
                  logo: 'asset/dunkinlogo.png', 
                  title: "Dunkin' Donuts", 
                  place: 'Kumintang Ilaya, Batangas City', 
                  distance: '3.1 mi',
                  ratings: '4.9',
                ),
              ),
              GestureDetector(// eats n treats
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
                child: const ItemCard3(
                  imageUrl: 'asset/eatsntreatsbanner.jpg', 
                  logo: 'asset/eatsntreats.jpg', 
                  title: "Eats and Treats by Darlen", 
                  place: 'Poblacion, Batangas City', 
                  distance: '9.7 mi',
                  ratings: '4.9',
                ),
              ),
              GestureDetector(// explosive burger
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) => const ItemListPage(
                        storeBanner: 'asset/explosiveburgerbanner.jpg', 
                        availableCount: '5+ left', 
                        logo: 'asset/explosiveburgers.jpg', 
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
                child: const ItemCard3(
                  imageUrl: 'asset/explosiveburgerbanner.jpg', 
                  logo: 'asset/explosiveburgers.jpg', 
                  title: "Explosive Burger", 
                  place: '125 C M.H.Del Pilar, Street, Batangas City', 
                  distance: '15.7 mi',
                  ratings: '4.9',
                ),
              ),
              GestureDetector(// burg2go
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
                child: const ItemCard3(
                  imageUrl: 'asset/burg2gobanner.jpg', 
                  logo: 'asset/b2g.jpg', 
                  title: "Burg2Go-Batangas City", 
                  place: 'Lieutenant Colonel D, Barangay 05, Evangelista St, Coor Lt.Col.Danilo S.Atienza, Batangas City', 
                  distance: '12.1 mi',
                  ratings: '4.8',
                ),
              ),
              GestureDetector(// johannas
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
                child: const ItemCard3(
                  imageUrl: 'asset/johannasbanner.jpg', 
                  logo: 'asset/johannas.jpg', 
                  title: "Johanna's Grille", 
                  place: 'Q364+9V9, P. Burgos, Poblacion, Batangas City', 
                  distance: '15.2 mi',
                  ratings: '4.8',
                ),
              ),
              GestureDetector(// max
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
                child: const ItemCard3(
                  imageUrl: 'asset/maxbanner.jpg', 
                  logo: 'asset/maxrestaurant.png', 
                  title: "Max's Restaurant", 
                  place: '35 P. Burgos, Poblacion, Batangas City', 
                  distance: '5.1 mi',
                  ratings: '4.8',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
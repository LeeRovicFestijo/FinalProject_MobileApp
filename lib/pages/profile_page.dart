import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/login_sigin.dart';
import 'package:flutter_application_1/components/item_card3.dart';
import 'package:flutter_application_1/pages/item_list_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.orangeAccent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  decoration: const BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: MediaQuery.of(context).size.width / 2 - 50,
                  child: const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('asset/handsome.jpg'),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 60),

            Text(
              'Eleazar Rosete',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.orangeAccent[800],
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email, color: Colors.orangeAccent[600]),
                SizedBox(width: 8),
                Text(
                  'user@example.com',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.orangeAccent[600],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone, color: Colors.orangeAccent[600]),
                SizedBox(width: 8),
                Text(
                  '09706579090',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.orangeAccent[600],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileSection(
                    icon: Icons.history,
                    title: 'Order History',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OrderHistoryPage()),
                      );
                    },
                  ),
                  ProfileSection(
                    icon: Icons.store,
                    title: 'Favorite Stores',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FavoriteStoresPage()),
                      );
                    },
                  ),
                  ProfileSection(
                    icon: Icons.logout,
                    title: 'Sign out',
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                            const LoginSigin()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  ProfileSection({
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(icon, color: Colors.orangeAccent),
              SizedBox(width: 16),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent[800],
                  ),
                ),
              ),
              const Icon(Icons.arrow_forward, color: Colors.orangeAccent),
            ],
          ),
        ),
      ),
    );
  }
}

class Order {
  final String details;
  final String date;

  Order({required this.details, required this.date});
}

class OrderHistoryPage extends StatelessWidget {
  final List<Order> orders = [
    Order(details: 'Burg2Go-Batangas City\n1 Quarter Pounder Burger',date: '2024-07-01'),
    Order(details: 'La Cemre\n1 Birthday Cake', date: '2024-07-02'),
    Order(details: 'Sweet Claire\n2 Solo Round Cake', date: '2024-07-03'),
    Order(details: 'BG Burgers\n1 Burger and Wings', date: '2024-07-04'),
    Order(details: 'Anne\'s Home\n1 Butter Cake', date: '2024-07-05'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order History'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: orders.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.fastfood, color: Colors.orangeAccent),
              title: Text(orders[index].details),
              subtitle: Text('Date: ${orders[index].date}'),
            );
          },
        ),
      ),
    );
  }
}

class Store {
  final String title;
  final String distance;
  final String place;
  final String rating;
  final String imageUrl;
  final String logo;
  final String availableCount;
  final String order;
  final String price;
  final String ratings;
  final String orderInfo;
  final String limitedTime;
  final String oldPrice;

  Store({
    required this.title, 
    required this.distance,
    required this.place,
    required this.rating,
    required this.imageUrl,
    required this.logo,
    required this.availableCount,
    required this.oldPrice,
    required this.order,
    required this.price,
    required this.ratings,
    required this.orderInfo,
    required this.limitedTime,
    });
}

class FavoriteStoresPage extends StatelessWidget {
  final List<Store> stores = [
    Store(
      imageUrl: 'asset/burgerstationbanner.jpg', 
      logo: 'asset/burgerstation.jpg', 
      title: "Burger Station", 
      place: '24-B Alegre, Barangay 11, Batangas City', 
      distance: '10.81 mi',
      rating: '5',
      availableCount: '4 left', 
      order: '1 Chicken Burger', 
      price: '109.99 PHP', 
      ratings: '5 rating', 
      orderInfo: '1 chicken burger with fries', 
      limitedTime: '2 hours, 42 mins left to order',
      oldPrice: '169.99 PHP',
    ),
    Store(
      imageUrl: 'asset/dunkinbanner.jpeg', 
      logo: 'asset/dunkinlogo.png', 
      title: "Dunkin' Donuts", 
      place: 'Ground Floor SM City Batangas, M.Pastor Ave, Batangas City', 
      distance: '13.2 mi',
      rating: '5',
      availableCount: '5+ left', 
      order: '1 dozen doughnuts', 
      price: '199.99 PHP', 
      ratings: '5 rating',  
      orderInfo: '6 pieces of assorted premium doughnuts and 6 pieces of classic dougnuts', 
      limitedTime: '3 hours, 10 mins left to order',
      oldPrice: '599.99 PHP',
    ),
    Store(
      imageUrl: 'asset/annbanner.jpg', 
      logo: 'asset/ann.png', 
      title: "Ann's Home", 
      place: 'Q3F8+HCV, National Road, Batangas City', 
      distance: '8.46 mi',
      rating: '4.9',
      availableCount: '3 left', 
      order: '1 Butter cake', 
      price: '79.99 PHP', 
      ratings: '4.9 rating', 
      orderInfo: '1 loaf of soft and moist butter cake', 
      limitedTime: '11 hours, 10 mins left to order',
      oldPrice: '229.99 PHP',
    ),
    Store(
      imageUrl: 'asset/maxbanner.jpg', 
      logo: 'asset/maxrestaurant.png', 
      title: "Max's Restaurant", 
      place: '35 P. Burgos, Poblacion, Batangas City', 
      distance: '5.1 mi',
      rating: '4.8', 
      availableCount: '4 left', 
      order: "Max's Fried Chicken", 
      price: '149.99 PHP', 
      ratings: '4.8 rating',  
      orderInfo: "1 Max's fried chicken, 2 rice, and 1 serving of fried sweet potatoes", 
      limitedTime: '2 day, 7 hours, 19 mins left to order',
      oldPrice: '499.99 PHP',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Stores'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: stores.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 2.0,
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                        ItemListPage(
                          storeBanner: stores[index].imageUrl, 
                          availableCount: stores[index].availableCount, 
                          logo: stores[index].logo, 
                          storeName: stores[index].title, 
                          order: stores[index].order, 
                          price: stores[index].price, 
                          ratings: stores[index].ratings, 
                          place: stores[index].place, 
                          orderInfo: stores[index].orderInfo, 
                          limitedTime: stores[index].limitedTime, 
                          oldPrice: stores[index].oldPrice,
                        )
                    ),
                  );
                },
                child: ItemCard3(
                  distance: stores[index].distance, 
                  imageUrl: stores[index].imageUrl, 
                  logo: stores[index].logo, 
                  title: stores[index].title, 
                  place: stores[index].place, 
                  ratings: stores[index].rating,
                  
                )
              ),
            );
          },
        ),
      ),
    );
  }
}

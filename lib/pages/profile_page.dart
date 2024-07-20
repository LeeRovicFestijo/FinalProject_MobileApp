import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/login_sigin.dart';

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
                    backgroundImage: AssetImage('assets/profile.jpg'),
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
            Text(
              'Money Lover | Pudy Enjoyer',
              style: TextStyle(
                fontSize: 16,
                color: Colors.orangeAccent[600],
              ),
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
                    icon: Icons.card_giftcard,
                    title: 'Loyalty Points',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                LoyaltyPointsPage(totalPoints: 1240)),
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
    Order(details: 'Burger ni Mekel: Burger and Fries - 100', date: '2024-07-01'),
    Order(details: 'Sushi ni Lee: Sushi Platter - 250', date: '2024-07-02'),
    Order(details: 'Pizza ni Ele: Pizza Margherita - 159', date: '2024-07-03'),
    Order(details: 'Salad ni Deyo: Caesar Salad - 899', date: '2024-07-04'),
    Order(details: 'Cash D Spag: Spaghetti Bolognese - 120', date: '2024-07-05'),
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
  final String name;
  final String details;

  Store({required this.name, required this.details});
}

class FavoriteStoresPage extends StatelessWidget {
  final List<Store> stores = [
    Store(name: 'Burger ni Mekel', details: 'Best burgers in town.'),
    Store(name: 'Sushi ni Lee', details: 'Fresh sushi daily.'),
    Store(name: 'Pizza ni Ele', details: 'Delicious margherita pizza.'),
    Store(name: 'Salad ni Deyo', details: 'Healthy and tasty salads.'),
    Store(name: 'Cash D Spag', details: 'Authentic spaghetti bolognese.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Stores'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: stores.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.store, color: Colors.orangeAccent),
              title: Text(stores[index].name),
              subtitle: Text(stores[index].details),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StoreDetailPage(store: stores[index]),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class StoreDetailPage extends StatelessWidget {
  final Store store;

  StoreDetailPage({required this.store});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(store.name),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              store.name,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.orangeAccent[800],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              store.details,
              style: TextStyle(
                fontSize: 18,
                color: Colors.orangeAccent[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoyaltyPointsPage extends StatelessWidget {
  final int totalPoints;

  LoyaltyPointsPage({required this.totalPoints});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loyalty Points'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: const Icon(
              Icons.card_giftcard,
              size: 100,
              color: Colors.orange,
            ),
          ),
          const Text(
            'Total Loyalty Points: 31',
            style: TextStyle(fontSize: 24),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: Text('Cash G voucher - 20 points'),
                  subtitle: Text('20% off to any Cash D products'),
                  trailing: ElevatedButton(
                    onPressed: () {
                    },
                    child: Text('Buy'),
                  ),
                ),
                ListTile(
                  title: Text('Salad ni Deyo voucher - 30 points'),
                  subtitle: Text('30% off to any Salad ni Deyo products'),
                  trailing: ElevatedButton(
                    onPressed: () {
                    },
                    child: Text('Buy'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
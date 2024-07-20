import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/item_card.dart';

class PizzaPage extends StatelessWidget {
  const PizzaPage({super.key});

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
              ItemCard(
                imageUrl: 'asset/dunkinbanner.jpeg',
                title: 'Dream Fluff Donuts',
                time: 'Collect tomorrow: 03:00 - 03:30',
                price: '₱3.99',
                oldPrice: '\$12.00',
                rating: '4.8',
                distance: '7.5 mi',
                availableCount: '3 left',
              ),
              ItemCard(
                imageUrl: 'asset/dunkinbanner.jpeg',
                title: 'House of Bagels - San Rafael',
                time: 'Collect tomorrow: 03:45 - 04:15',
                price: '\$6.99',
                oldPrice: '\$21.00',
                rating: '4.8',
                distance: '9.7 mi',
                availableCount: '2 left',
              ),
              ItemCard(
                imageUrl: 'asset/dunkinbanner.jpeg',
                title: 'Mi Comedor - Ferry Plaza Farmers\' Market',
                time: 'Collect tomorrow: 04:30 - 05:00',
                price: '\$4.99',
                oldPrice: '\$15.00',
                rating: '4.6',
                distance: '9.7 mi',
                availableCount: '4 left',
              ),
            ],
          ),
        ),
      ),
    );
  }
}



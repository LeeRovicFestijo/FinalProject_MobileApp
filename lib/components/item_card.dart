import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final String oldPrice;
  final String rating;
  final String distance;
  final String availableCount;
  final String order;

  const ItemCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.oldPrice,
    required this.rating,
    required this.distance,
    required this.availableCount,
    required this.order
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.all(16.0),
      color: Colors.white,
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                child: Image.asset(
                  imageUrl,
                  width: double.infinity,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.orangeAccent
                  ),
                  child: Text(
                    availableCount,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                top: 8,
                right: 10,
                child: InkWell(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        backgroundColor: Colors.orangeAccent,
                        content: Text('Added to favorites')
                      )
                    );
                  },
                  child: const Icon(Icons.favorite_border, color: Colors.white),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4),
                Text(
                  order,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.orangeAccent, size: 16),
                        SizedBox(width: 4),
                        Text(rating),
                        SizedBox(width: 16),
                        Icon(Icons.location_on, color: Colors.orangeAccent, size: 16),
                        SizedBox(width: 4),
                        Text(distance),
                      ],
                    ),
                    Text(
                      price,
                      style: TextStyle(fontSize: 18, color: Colors.orangeAccent),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    const Spacer(),
                    Text(
                    oldPrice,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ]
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
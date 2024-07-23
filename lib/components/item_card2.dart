import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemCard2 extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String time;
  final String price;
  final String rating;
  final String distance;
  final String availableCount;
  final String order;
  final String logo;

  const ItemCard2({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.time,
    required this.price,
    required this.rating,
    required this.distance,
    required this.availableCount,
    required this.order,
    required this.logo,
  });

  @override
  Widget build(BuildContext context) {
    String displayTitle = title.length > 15 ? '${title.substring(0, 15)}...' : title;

    return Container(
      height: 210,
      width: 300,
      margin: EdgeInsets.only(bottom: 10),
      child: Material(
        color: Colors.white,
        elevation: 4,
        borderRadius: BorderRadius.circular(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15),),
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
                  right: 8,
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
                Positioned(
                  bottom: 10,
                  right: 8,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        logo, //logo picture
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 8,
                  left: 8,
                  child: Container(
                    // width: 180,
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.orangeAccent
                    ),
                    child: Text(
                      displayTitle,
                      style: const TextStyle(fontSize: 16, color: Colors.white),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
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
                    order,
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 4),
                  Text(
                    time,
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.orangeAccent, size: 14),
                          SizedBox(width: 4),
                          Text(
                            rating,
                            style: const TextStyle(
                              fontSize: 12
                            ),
                          ),
                          const SizedBox(width: 16),
                          const Icon(Icons.location_on, color: Colors.orangeAccent, size: 14),
                          const SizedBox(width: 4),
                          Text(
                            distance,
                            style: const TextStyle(
                              fontSize: 12
                            ),
                          ),
                        ],
                      ),
                      Text(
                        price,
                        style: TextStyle(fontSize: 14, color: Colors.orangeAccent),
                      ),
                    ],
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
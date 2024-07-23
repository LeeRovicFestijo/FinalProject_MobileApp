import 'package:flutter/material.dart';

class ItemCard3 extends StatelessWidget {
  final String imageUrl;
  final String logo;
  final String title;
  final String place;
  final String distance;
  final String ratings;

  const ItemCard3({
    super.key,
    required this.imageUrl,
    required this.logo,
    required this.title,
    required this.place,
    required this.distance,
    required this.ratings,
    });

  @override
  Widget build(BuildContext context) { 
    String displayTitle = title.length > 18 ? '${title.substring(0, 15)}...' : title;
    String displayPlace = place.length > 25 ? '${place.substring(0, 25)}...' : place;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.all(16.0),
      color: Colors.white,
      elevation: 4,
      child: Row(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
                child: Image.asset(
                  imageUrl,
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                bottom: 8,
                left: 80,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.orangeAccent,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 25,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(70),
                        child: Image.asset(logo, height: 50, width: 50,)
                      ),
                    ),
                  ),
                )
              ),
              const Padding(
                padding: EdgeInsets.all(0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '          ',
                      style: TextStyle(
                        fontSize: 62,
                      ),
                    ),
                  ],
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
                  displayTitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  displayPlace,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 5,),
                Row(
                  children: [
                    Icon(Icons.location_on_outlined, color: Colors.orangeAccent, size: 20,),
                    const SizedBox(width: 2,),
                    Text(
                      distance,
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5,),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orangeAccent, size: 20,),
                    const SizedBox(width: 2,),
                    Text(
                      ratings,
                      style: const TextStyle(
                        fontSize: 14
                      )
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
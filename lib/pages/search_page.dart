import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/item_list_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();
  final List<Map<String, String>> _locations = [
    {
      'group': 'pastry',
      'name': "Ann's Home",
      'address': 'Q3F8+HCV, National Road, Batangas City',
      'storeBanner': 'asset/annbanner.jpg',
      'availableCount': '3 left',
      'logo': 'asset/ann.png', 
      'order': '1 Butter cake', 
      'price': '79.99 PHP', 
      'ratings': '4.9 rating', 
      'orderInfo': '1 loaf of soft and moist butter cake', 
      'limitedTime': '11 hours, 10 mins left to order',
      'oldPrice': '229.99 PHP',
    },
    {
      'group': 'pastry',
      'name': "Dunkin' Donuts",
      'address': 'P. Burgos, Brgy. 9, Batangas City',
      'storeBanner': 'asset/dunkinbanner.jpeg',
      'availableCount': '4 left',
      'logo': 'asset/dunkinlogo.png', 
      'order': '1 dozen doughnuts', 
      'price': '299.99 PHP', 
      'ratings': '4.7 rating', 
      'orderInfo': '1 dozen of assorted premium doughnuts', 
      'limitedTime': '1 day, 3 hours, 10 mins left to order',
      'oldPrice': '599.99 PHP',
    },
    {
      'group': 'pastry',
      'name': "Dunkin' Donuts",
      'address': 'Calicanto, Batangas City',
      'storeBanner': 'asset/annbanner.jpg',
      'availableCount': '3 left',
      'logo': 'asset/ann.png', 
      'storeName': "Ann's Home", 
      'order': '1 Butter cake', 
      'price': '79.99 PHP', 
      'ratings': '4.9 rating', 
      'orderInfo': '1 loaf of soft and moist butter cake', 
      'limitedTime': '11 hours, 10 mins left to order',
      'oldPrice': '229.99 PHP',
    },
    {
      'group': 'pastry',
      'name': "Dunkin' Donuts",
      'address': 'Kumintang Ilaya, Batangas City',
      'storeBanner': 'asset/annbanner.jpg',
      'availableCount': '3 left',
      'logo': 'asset/ann.png', 
      'storeName': "Ann's Home", 
      'order': '1 Butter cake', 
      'price': '79.99 PHP', 
      'ratings': '4.9 rating', 
      'orderInfo': '1 loaf of soft and moist butter cake', 
      'limitedTime': '11 hours, 10 mins left to order',
      'oldPrice': '229.99 PHP',
    },
    {
      'group': 'pastry',
      'name': "Dunkin' Donuts",
      'address': 'Ground Floor SM City Batangas, M.Pastor Ave, Batangas City',
      'storeBanner': 'asset/annbanner.jpg',
      'availableCount': '3 left',
      'logo': 'asset/ann.png', 
      'storeName': "Ann's Home", 
      'order': '1 Butter cake', 
      'price': '79.99 PHP', 
      'ratings': '4.9 rating', 
      'orderInfo': '1 loaf of soft and moist butter cake', 
      'limitedTime': '11 hours, 10 mins left to order',
      'oldPrice': '229.99 PHP',
    },
    {
      'group': 'pastry',
      'name': "Eats and Treats by Darlen Perculeza",
      'address': 'Poblacion, Batangas City',
      'storeBanner': 'asset/annbanner.jpg',
      'availableCount': '3 left',
      'logo': 'asset/ann.png', 
      'storeName': "Ann's Home", 
      'order': '1 Butter cake', 
      'price': '79.99 PHP', 
      'ratings': '4.9 rating', 
      'orderInfo': '1 loaf of soft and moist butter cake', 
      'limitedTime': '11 hours, 10 mins left to order',
      'oldPrice': '229.99 PHP',
    },
    {
      'group': 'pastry',
      'name': "La Creme Cakes & Pastries",
      'address': 'Twinvilla Subdivision, Argon Street, Batangas City',
      'storeBanner': 'asset/annbanner.jpg',
      'availableCount': '3 left',
      'logo': 'asset/ann.png', 
      'storeName': "Ann's Home", 
      'order': '1 Butter cake', 
      'price': '79.99 PHP', 
      'ratings': '4.9 rating', 
      'orderInfo': '1 loaf of soft and moist butter cake', 
      'limitedTime': '11 hours, 10 mins left to order',
      'oldPrice': '229.99 PHP',
    },
    {
      'group': 'pastry',
      'name': "Sweet Claire Patisseries - Nuciti Mall Branch",
      'address': 'Poblacion, Batangas City',
      'storeBanner': 'asset/annbanner.jpg',
      'availableCount': '3 left',
      'logo': 'asset/ann.png', 
      'storeName': "Ann's Home", 
      'order': '1 Butter cake', 
      'price': '79.99 PHP', 
      'ratings': '4.9 rating', 
      'orderInfo': '1 loaf of soft and moist butter cake', 
      'limitedTime': '11 hours, 10 mins left to order',
      'oldPrice': '229.99 PHP',
    },
    {
      'group': 'restaurants',
      'name': "Butch Seafood & Grill Restaurant",
      'address': '8 National Road, Batangas City',
      'storeBanner': 'asset/annbanner.jpg',
      'availableCount': '3 left',
      'logo': 'asset/ann.png', 
      'storeName': "Ann's Home", 
      'order': '1 Butter cake', 
      'price': '79.99 PHP', 
      'ratings': '4.9 rating', 
      'orderInfo': '1 loaf of soft and moist butter cake', 
      'limitedTime': '11 hours, 10 mins left to order',
      'oldPrice': '229.99 PHP',
    },
    {
      'group': 'restaurants',
      'name': "Johanna's Grille",
      'address': 'Q364+9V9, P. Burgos, Poblacion, Batangas City',
      'storeBanner': 'asset/annbanner.jpg',
      'availableCount': '3 left',
      'logo': 'asset/ann.png', 
      'storeName': "Ann's Home", 
      'order': '1 Butter cake', 
      'price': '79.99 PHP', 
      'ratings': '4.9 rating', 
      'orderInfo': '1 loaf of soft and moist butter cake', 
      'limitedTime': '11 hours, 10 mins left to order',
      'oldPrice': '229.99 PHP',
    },
    {
      'group': 'restaurants',
      'name': "Max's Restaurant",
      'address': '35 P. Burgos, Poblacion, Batangas City',
      'storeBanner': 'asset/annbanner.jpg',
      'availableCount': '3 left',
      'logo': 'asset/ann.png', 
      'storeName': "Ann's Home", 
      'order': '1 Butter cake', 
      'price': '79.99 PHP', 
      'ratings': '4.9 rating', 
      'orderInfo': '1 loaf of soft and moist butter cake', 
      'limitedTime': '11 hours, 10 mins left to order',
      'oldPrice': '229.99 PHP',
    },
    {
      'group': 'hamburgers',
      'name': "BG Burgers",
      'address': 'Concha Road, Beside SM City Batangas, Batangas City',
      'storeBanner': 'asset/annbanner.jpg',
      'availableCount': '3 left',
      'logo': 'asset/ann.png', 
      'storeName': "Ann's Home", 
      'order': '1 Butter cake', 
      'price': '79.99 PHP', 
      'ratings': '4.9 rating', 
      'orderInfo': '1 loaf of soft and moist butter cake', 
      'limitedTime': '11 hours, 10 mins left to order',
      'oldPrice': '229.99 PHP',
    },
    {
      'group': 'hamburgers',
      'name': "The Burger Station Est.1980",
      'address': '24-B Alegre, Barangay 11, Batangas City',
      'storeBanner': 'asset/annbanner.jpg',
      'availableCount': '3 left',
      'logo': 'asset/ann.png', 
      'storeName': "Ann's Home", 
      'order': '1 Butter cake', 
      'price': '79.99 PHP', 
      'ratings': '4.9 rating', 
      'orderInfo': '1 loaf of soft and moist butter cake', 
      'limitedTime': '11 hours, 10 mins left to order',
      'oldPrice': '229.99 PHP',
    },
    {
      'group': 'hamburgers',
      'name': "Darn Good Burger",
      'address': '4F, Citi Eats, Bay City Mall, 19 D. Silang, Poblacion, Batangas City',
      'storeBanner': 'asset/annbanner.jpg',
      'availableCount': '3 left',
      'logo': 'asset/ann.png', 
      'storeName': "Ann's Home", 
      'order': '1 Butter cake', 
      'price': '79.99 PHP', 
      'ratings': '4.9 rating', 
      'orderInfo': '1 loaf of soft and moist butter cake', 
      'limitedTime': '11 hours, 10 mins left to order',
      'oldPrice': '229.99 PHP',
    },
    {
      'group': 'hamburgers',
      'name': "Burg2Go Batangas City",
      'address': 'Lieutenant Colonel D, Barangay 05 Evangelista St, Cor Lt.Col.Danilo S.Atienza, Batangas City',
      'storeBanner': 'asset/annbanner.jpg',
      'availableCount': '3 left',
      'logo': 'asset/ann.png', 
      'storeName': "Ann's Home", 
      'order': '1 Butter cake', 
      'price': '79.99 PHP', 
      'ratings': '4.9 rating', 
      'orderInfo': '1 loaf of soft and moist butter cake', 
      'limitedTime': '11 hours, 10 mins left to order',
      'oldPrice': '229.99 PHP',
    },
    {
      'group': 'hamburgers',
      'name': "Explosive Burger Batangas Branch",
      'address': '125 C M.H.Del Pilar, Street, Batangas City',
      'storeBanner': 'asset/annbanner.jpg',
      'availableCount': '3 left',
      'logo': 'asset/ann.png', 
      'storeName': "Ann's Home", 
      'order': '1 Butter cake', 
      'price': '79.99 PHP', 
      'ratings': '4.9 rating', 
      'orderInfo': '1 loaf of soft and moist butter cake', 
      'limitedTime': '11 hours, 10 mins left to order',
      'oldPrice': '229.99 PHP',
    },
  ];
  List<Map<String, String>> _filteredLocations = [];
  String _selectedCategory = 'pastry';

  @override
  void initState() {
    super.initState();
    _filterLocations();
  }

  void _filterLocations() {
    setState(() {
      _filteredLocations = _locations.where((location) => location['group'] == _selectedCategory).toList();
    });
  }

  void _handleCategoryFilter(String category) {
    setState(() {
      _selectedCategory = category;
      _searchController.clear();
      _filterLocations();
    });
  }

  void _handleSearch(String query) {
    query = query.toLowerCase();
    setState(() {
      _filteredLocations = _locations.where((location) {
        return location['group'] == _selectedCategory &&
            location['name']!.toLowerCase().contains(query);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 248, 244, 244),
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.breadSlice,
                color: _selectedCategory == 'pastry' ? Colors.orangeAccent : Colors.grey),
            onPressed: () => _handleCategoryFilter('pastry'),
          ),
          IconButton(
            icon: Icon(Icons.restaurant,
                color: _selectedCategory == 'restaurants' ? Colors.orangeAccent : Colors.grey),
            onPressed: () => _handleCategoryFilter('restaurants'),
          ),
          IconButton(
            icon: Icon(Icons.fastfood,
                color: _selectedCategory == 'hamburgers' ? Colors.orangeAccent : Colors.grey),
            onPressed: () => _handleCategoryFilter('hamburgers'),
          ),
        ],
      ),
      body: Container(
        color: Color.fromARGB(255, 248, 244, 244),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  labelText: 'Search',
                  labelStyle: TextStyle(color: Colors.orangeAccent),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: Colors.orangeAccent)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.orangeAccent)
                  ),
                  prefixIcon: Icon(Icons.search),
                ),
                onChanged: _handleSearch,
              ),
              SizedBox(height: 20),
              if (_filteredLocations.isNotEmpty)
                Expanded(
                  child: ListView.separated(
                    itemCount: _filteredLocations.length,
                    separatorBuilder: (context, index) => Divider(color: Colors.orangeAccent),
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          _filteredLocations[index]['name']!,
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          _filteredLocations[index]['address']!,
                          style: TextStyle(fontSize: 16),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ItemListPage(
                                storeBanner: _filteredLocations[index]['storeBanner']!, 
                                availableCount: _filteredLocations[index]['availableCount']!, 
                                logo: _filteredLocations[index]['logo']!,
                                storeName: _filteredLocations[index]['name']!,
                                order: _filteredLocations[index]['order']!,
                                price: _filteredLocations[index]['price']!,
                                ratings: _filteredLocations[index]['ratings']!,
                                place: _filteredLocations[index]['address']!,
                                orderInfo: _filteredLocations[index]['orderInfo']!, 
                                limitedTime: _filteredLocations[index]['limitedTime']!, 
                                oldPrice: _filteredLocations[index]['oldPrice']!,
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              if (_filteredLocations.isEmpty)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'No results found.',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
            ]
          )
        )
      )
    );
  }
}

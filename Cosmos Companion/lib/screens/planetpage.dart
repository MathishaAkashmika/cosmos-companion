import 'package:cosmos_companion/screens/testpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'favoritepage.dart';
import 'welcomepage.dart';
import '../widgets/planetcard.dart';

class PlanetsPage extends StatefulWidget {
  @override
  _PlanetsPageState createState() => _PlanetsPageState();
}

class _PlanetsPageState extends State<PlanetsPage> {
  List<Map<String, dynamic>> planets = [
    {
      'id': 1,
      'title': 'Earth',
      'imageUrl': 'https://i.ibb.co/pWb95wD/2151075901-1.jpg',
      'isFavorite': false,
    },
    {
      'id': 2,
      'title': 'Mars',
      'imageUrl': 'https://i.ibb.co/styNbM7/2150953671.jpg',
      'isFavorite': false,
    },
    {
      'id': 3,
      'title': 'Saturn',
      'imageUrl': 'https://i.ibb.co/89yy8fx/16814.jpg',
      'isFavorite': false,
    },
    // ... Other planets
  ];

  void _toggleFavorite(String title) {
    setState(() {
      final planet = planets.firstWhere((element) => element['title'] == title);
      planet['isFavorite'] = !planet['isFavorite'];
      // Optionally, maintain a separate list for favorites if needed.
      // For example, if planets are not meant to be the single source of truth.
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Planets'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://i.ibb.co/8b0Wk3G/2150918835-1.jpg"), // Replace with your image URL
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Cosmos Companion',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                // Navigate to the HomeScreen
                // Make sure you have a HomeScreen class defined to navigate to
                Navigator.push(context, MaterialPageRoute(builder: (context) => testWidget()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text('Favorites'),
              onTap: () {
                // Filter the planets list for favorites before navigating
                final favoritePlanets = planets.where((planet) => planet['isFavorite']).toList();
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FavoritesPage(favorites: favoritePlanets)),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                // Navigate to the HomeScreen
                // Make sure you have a HomeScreen class defined to navigate to
                // Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('About Us'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                // Navigate to the HomeScreen
                // Make sure you have a HomeScreen class defined to navigate to
                // Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            // ... Other list tiles for menu items
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: planets.length,
        itemBuilder: (context, index) {
          final planet = planets[index];
          return PlanetCard(
            title: planet['title'],
            imageUrl: planet['imageUrl'],
            isFavorite: planet['isFavorite'],
            onFavoriteToggle: () => _toggleFavorite(planet['title']),
          );
        },
      ),
    );
  }
}

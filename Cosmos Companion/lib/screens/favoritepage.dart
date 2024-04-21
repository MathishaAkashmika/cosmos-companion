import 'package:flutter/material.dart';
import '../widgets/planetcard.dart';
import 'viewpage.dart'; // Import ViewPage for detailed views

class FavoritesPage extends StatefulWidget {
  final List<Map<String, dynamic>> favorites;

  const FavoritesPage({Key? key, required this.favorites}) : super(key: key);

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  List<Map<String, dynamic>>? favorites;

  @override
  void initState() {
    super.initState();
    favorites = List.from(widget.favorites); // Clone the incoming favorites list
  }

  void _removeFromFavorites(Map<String, dynamic> planet) {
    setState(() {
      favorites?.removeWhere((item) => item['id'] == planet['id']);
      planet['isFavorite'] = false; // Update planet's favorite status
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context, favorites), // Return the updated list on back press
        ),
      ),
      body: ListView.builder(
        itemCount: favorites?.length ?? 0,
        itemBuilder: (context, index) {
          final planet = favorites![index];
          return PlanetCard(
            title: planet['title'],
            imageUrl: planet['imageUrl'],
            isFavorite: true, // Since this is the Favorites page, assume all are favorites initially
            onFavoriteToggle: () {
              _removeFromFavorites(planet);
            },
            description: planet['description'],
            onTap: () {
              // Optionally navigate to a detailed view page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ViewPage(
                    title: planet['title'],
                    imageUrl: planet['imageUrl'],
                    description: planet['description'],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

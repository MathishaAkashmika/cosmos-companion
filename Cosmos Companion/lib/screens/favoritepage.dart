import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/planetcard.dart';

class FavoritesPage extends StatelessWidget {
  final List<Map<String, dynamic>> favorites;

  const FavoritesPage({Key? key, required this.favorites}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: ListView.builder(
        itemCount: favorites.length,
        itemBuilder: (context, index) {
          final planet = favorites[index];
          return PlanetCard(
            title: planet['title'],
            imageUrl: planet['imageUrl'],
            isFavorite: true, // Assuming you're viewing favorites, so it's always true here
            onFavoriteToggle: () {
              // You can implement unfavoriting here if you want
            },
          );
        },
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/viewpage.dart';

class PlanetCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final bool isFavorite;
  final VoidCallback onFavoriteToggle;
  final VoidCallback? onUnfavorite;

  const PlanetCard({
    Key? key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.isFavorite,
    required this.onFavoriteToggle,
    this.onUnfavorite, required Null Function() onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the detailed ViewPage when the card is tapped
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ViewPage(
              title: title,
              imageUrl: imageUrl,
              description: description,
            ),
          ),
        );
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Image.network(
              imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 8,
              right: 8,
              child: IconButton(
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? Colors.red : Colors.white,
                ),
                onPressed: isFavorite && onUnfavorite != null ? onUnfavorite : onFavoriteToggle,
              ),
            ),
            Positioned(
              bottom: 16,
              left: 16,
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                      color: Color.fromARGB(150, 0, 0, 0),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

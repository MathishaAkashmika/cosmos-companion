import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/viewpage.dart';

class PlanetCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final bool isFavorite;
  final VoidCallback onFavoriteToggle;
  final VoidCallback? onUnfavorite; // Optional callback for unfavoriting

  const PlanetCard({
    required this.title,
    required this.imageUrl,
    required this.isFavorite,
    required this.onFavoriteToggle,
    this.onUnfavorite,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ViewPage(title: title, imageUrl: imageUrl),
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
              fit: BoxFit.cover,
              width: double.infinity,
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

// Define the ViewPage class as well
class ViewPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  const ViewPage({super.key, required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black, // Specify the color you want for the title.
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              // Profile button action
            },
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              imageUrl,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
              fit: BoxFit.cover,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Earth is the third planet from the Sun in our solar system and the only known celestial body to support life. ...',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            // Add more content as needed
          ],
        ),
      ),
    );
  }
}


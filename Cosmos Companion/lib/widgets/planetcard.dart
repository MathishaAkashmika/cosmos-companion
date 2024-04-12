import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/viewpage.dart';

class PlanetCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final bool isFavorite;
  final VoidCallback onFavoriteToggle;
  final VoidCallback? onUnfavorite;  // Optional callback for unfavoriting

  const PlanetCard({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.isFavorite,
    required this.onFavoriteToggle,
    this.onUnfavorite,
    Key? key, required Null Function() onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ViewPage(
                title: title,
                imageUrl: imageUrl,
                description: description, // Pass the description to the ViewPage
              ),
            )
        );
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
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
    ));
  }
}

// Define the ViewPage class as well
class ViewPage extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;

  const ViewPage({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.description, // Include the description in the constructor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white, // Title color specified as black
          ),
        ),
        backgroundColor: Colors.black87, // AppBar background color specified as white
        elevation: 0, // Removes the shadow from the AppBar
        iconTheme: const IconThemeData(color: Colors.white), // Changes the back button color to black
      ),
      extendBodyBehindAppBar: true, // Extends the body behind the AppBar
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              imageUrl,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                padding: const EdgeInsets.all(8.0), // Padding inside the container for the text
                decoration: BoxDecoration(
                  color: Colors.transparent, // The background color for the text container
                  borderRadius: BorderRadius.circular(4.0), // Optional, for rounded corners
                ),
                child: Text(
                  description, // Use the actual description passed to the widget
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black, // Text color for better contrast with the background
                  ),
                ),
              ),
            )
            // Any additional content would go here
          ],
        ),
      ),
    );
  }
}

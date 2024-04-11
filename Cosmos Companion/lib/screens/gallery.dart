import 'package:cosmos_companion/screens/testpage.dart';
import 'package:flutter/material.dart';

import 'welcomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Gallery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GalleryPage(),
    );
  }
}

class GalleryPage extends StatelessWidget {
  final List<String> _imageUrls = [
    "https://i.ibb.co/KmR4ghK/image-16-1-1.png",
    "https://i.ibb.co/pWb95wD/2151075901-1.jpg",
    "https://i.ibb.co/HGzF6qZ/astronaut-diving-digital-art-1.jpg",
    "https://i.ibb.co/styNbM7/2150953671.jpg",
    "https://i.ibb.co/89yy8fx/16814.jpg",
    "https://i.ibb.co/pWb95wD/2151075901-1.jpg",
    // Add more image URLs as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Gallery'),
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
                Navigator.pop(context); // Close the drawer
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
      body: GridView.builder(
        itemCount: _imageUrls.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(imageUrl: _imageUrls[index]),
                ),
              );
            },
            child: Hero(
              tag: _imageUrls[index],
              child: Image.network(
                _imageUrls[index],
                fit: BoxFit.cover, // Ensure all images fit the screen
              ),
            ),
          );
        },
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String imageUrl;

  DetailPage({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Detail'),
      ),
      body: Center(
        child: Hero(
          tag: imageUrl,
          child: SingleChildScrollView(
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover, // Ensure the image fits the screen
            ),
          ),
        ),
      ),
    );
  }
}

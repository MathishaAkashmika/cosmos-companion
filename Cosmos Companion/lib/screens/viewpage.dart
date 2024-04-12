import 'package:flutter/material.dart';

class ViewPage extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const ViewPage({
    Key? key,
    required this.title,
    required this.description,
    required this.imageUrl,
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
        backgroundColor: Colors.black, // AppBar background color specified as white
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
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: const EdgeInsets.all(8.0), // Padding inside the container for the text
                decoration: BoxDecoration(
                  color: Colors.blueGrey, // The background color for the text container
                  borderRadius: BorderRadius.circular(4.0), // Optional, for rounded corners
                ),
                child: Text(
                  description, // Use the actual description passed to the widget
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white, // Text color for better contrast with the background
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

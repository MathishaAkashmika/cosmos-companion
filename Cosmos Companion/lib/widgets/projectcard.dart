import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/project.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias, // Ensures the image corners are also rounded
      margin: const EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Image.network(
            project.imageUrl,
            height: 160, // Specify a height for the image
            width: double.infinity,
            fit: BoxFit.cover, // Cover the card area without distorting the image
          ),
          Positioned.fill( // Overlay the gradient on the entire card area
            child: DecoratedBox(
              decoration: BoxDecoration(
                // Gradient from transparent to black for better readability
                gradient: LinearGradient(
                  colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.5, 1],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 16, // Position the text towards the bottom of the image
            left: 16,
            right: 16, // Ensuring text does not overflow the card width
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  project.title,
                  style: const TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // White color for better contrast
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  project.description,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: Colors.white, // White color for better contrast
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

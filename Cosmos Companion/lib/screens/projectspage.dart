import 'package:cosmos_companion/screens/testpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/project.dart';
import '../widgets/projectcard.dart';
import 'favoritepage.dart';
import 'welcomepage.dart';

class ProjectsPage extends StatelessWidget {
  final List<Project> projects = [
    Project(
        id: 1,
        title: 'Project 1',
        description: 'This is a description of Project 1.This is a description of Project 1.This is a description of Project 1.',
        imageUrl: 'https://i.ibb.co/zZ0tQCL/planet-earth-background.jpg'
    ),
    Project(
        id: 2,
        title: 'Project 2',
        description: 'This is a description of Project 1.This is a description of Project 1.This is a description of Project 1.',
        imageUrl: 'https://i.ibb.co/zZ0tQCL/planet-earth-background.jpg'
    ),
    Project(
        id: 3,
        title: 'Project 3',
        description: 'This is a description of Project 1.This is a description of Project 1.This is a description of Project 1.',
        imageUrl: 'https://i.ibb.co/zZ0tQCL/planet-earth-background.jpg'
    ),
    // Add more projects as needed
  ];

  ProjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Projects'),
      ),
      body: ListView.builder(
        itemCount: projects.length,
        itemBuilder: (context, index) {
          return ProjectCard(project: projects[index]);
        },
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Cosmos Companion', style: TextStyle(color: Colors.white, fontSize: 24)),
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
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => FavoritesPage(favorites: [],)));
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
    );
  }
}

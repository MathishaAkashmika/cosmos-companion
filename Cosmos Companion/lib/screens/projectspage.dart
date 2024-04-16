import 'package:cosmos_companion/screens/homepage.dart';
import 'package:cosmos_companion/screens/planetpage.dart';
import 'package:cosmos_companion/screens/welcomepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../admin/user_read.dart';
import '../models/project.dart';
import '../widgets/projectcard.dart';
import 'aboutus.dart';
import 'contactus.dart';
import 'favoritepage.dart';
import 'gallery.dart';

class ProjectsPage extends StatelessWidget {
  final List<Project> projects = [
    Project(
        id: 1,
        title: 'Project 1',
        description: 'This is a description of Project 1.',
        imageUrl: 'assets/img/welcome_page_img.png'
    ),
    Project(
        id: 2,
        title: 'Project 2',
        description: 'This is a description of Project 2.',
        imageUrl: 'assets/img/welcome_page_img.png'
    ),
    Project(
        id: 3,
        title: 'Project 3',
        description: 'This is a description of Project 3.',
        imageUrl: 'assets/img/welcome_page_img.png'
    ),
  ];

  ProjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Project'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/background_image.jpg'), // Path to your background image
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: projects.length,
          itemBuilder: (context, index) {
            return ProjectCard(project: projects[index]);
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
                  image: AssetImage('assets/img/welcome_page_img.png'), // Replace 'assets/your_image_name.png' with your local asset path
                  fit: BoxFit.cover,
                ),
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favorites'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => FavoritesPage(favorites: [],)));
              },
            ),
            ListTile(
              leading: Icon(Icons.explore),
              title: Text('Explore'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                // Navigate to the ExploreScreen
                Navigator.push(context, MaterialPageRoute(builder: (context) => PlanetsPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.work),
              title: Text('Projects'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                // Navigate to the ProjectsScreen
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProjectsPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.update),
              title: Text('Updates'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                // Navigate to the UpdatesScreen
                Navigator.push(context, MaterialPageRoute(builder: (context) => UserReadData()));
              },
            ),
            ListTile(
              leading: Icon(Icons.image),
              title: Text('Gallery'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                // Navigate to the GalleryScreen
                Navigator.push(context, MaterialPageRoute(builder: (context) => GalleryPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About Us'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                // Navigate to the AboutUsScreen
                Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUsPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text('Contact Us'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                // Navigate to the ContactUsScreen
                Navigator.push(context, MaterialPageRoute(builder: (context) => ContactUsPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

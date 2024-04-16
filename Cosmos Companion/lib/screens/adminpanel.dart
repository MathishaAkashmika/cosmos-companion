import 'package:cosmos_companion/screens/planetpage.dart';
import 'package:cosmos_companion/screens/projectspage.dart';
import 'package:cosmos_companion/screens/welcomepage.dart';
import 'package:flutter/material.dart';

import 'aboutus.dart';
import 'favoritepage.dart';
import '../admin/user_read.dart';
import 'aboutus.dart';
import 'contactus.dart';
import 'favoritepage.dart';
import 'gallery.dart';
import 'homepage.dart';

class AdminPanelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Panel'),
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
              leading: const Icon(Icons.work),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Manage Content',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 60), // Space between title and buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  width: 180, // Set the width of the button
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/createPage'); // Navigate to Create Page
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: const Size.fromHeight(60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: const Text(
                      'Create News',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: 180, // Set the width of the button
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/readPage'); // Navigate to Read Page
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Set the background color to blue
                      minimumSize: const Size.fromHeight(60), // Set the height of the button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6), // Set the border radius
                      ),
                    ),
                    child: const Text(
                      'Read News',
                      style: TextStyle(color: Colors.white), // Set text color to white
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20), // Space between rows of buttons
            SizedBox(
              width: 375, // Set the width of the button
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/updatePage'); // Navigate to Update Page
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Set the background color to blue
                  minimumSize: Size.fromHeight(60), // Set the height of the button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6), // Set the border radius
                  ),
                ),
                child: const Text(
                  'Update News',
                  style: TextStyle(color: Colors.white), // Set text color to white
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 375, // Set the width of the button
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/adduser'); // Navigate to Update Page
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Set the background color to blue
                  minimumSize: Size.fromHeight(60), // Set the height of the button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6), // Set the border radius
                  ),
                ),
                child: const Text(
                  'Add User',
                  style: TextStyle(color: Colors.white), // Set text color to white
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
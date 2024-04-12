import 'package:cosmos_companion/screens/welcomepage.dart';
import 'package:flutter/material.dart';

import 'favoritepage.dart';

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
                Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomePage()));
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
                    child: const Text(
                      'Create',
                      style: TextStyle(color: Colors.white), // Set text color to white
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Set the background color to blue
                      minimumSize: const Size.fromHeight(60), // Set the height of the button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6), // Set the border radius
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 180, // Set the width of the button
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/readPage'); // Navigate to Read Page
                    },
                    child: const Text(
                      'Read',
                      style: TextStyle(color: Colors.white), // Set text color to white
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Set the background color to blue
                      minimumSize: const Size.fromHeight(60), // Set the height of the button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6), // Set the border radius
                      ),
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
                child: const Text(
                  'Update',
                  style: TextStyle(color: Colors.white), // Set text color to white
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Set the background color to blue
                  minimumSize: Size.fromHeight(60), // Set the height of the button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6), // Set the border radius
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
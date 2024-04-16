import 'package:cosmos_companion/screens/planetpage.dart';
import 'package:cosmos_companion/screens/projectspage.dart';
import 'package:cosmos_companion/screens/welcomepage.dart';
import 'package:flutter/material.dart';

import '../admin/user_read.dart';
import 'aboutus.dart';
import 'contactus.dart';
import 'favoritepage.dart';
import 'gallery.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'COSMOS Companion',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
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
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/background_image.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 100),
            Expanded(
              child: GridView.count(
                crossAxisCount: 1,
                padding: EdgeInsets.all(30),
                childAspectRatio: 1.5,
                children: <Widget>[
                  _buildButton(context, "Join", Icons.home, '/login', 'assets/img/home_3.jpg'),
                  _buildButton(context, "Explore", Icons.public, '/planetPage', 'assets/img/home_3.jpg'),
                  _buildButton(context, "TopProjects", Icons.star, '/topProjects', 'assets/img/home_3.jpg'),
                  _buildButton(context, "ChatBot", Icons.contacts, '/login', 'assets/img/home_3.jpg'),
                  _buildButton(context, "Updates", Icons.update, '/updates', 'assets/img/home_3.jpg'),
                  _buildButton(context, "Gallery", Icons.photo_library, '/gallery', 'assets/img/home_3.jpg'),
                  _buildButton(context, "Favorites", Icons.favorite, '/favorites', 'assets/img/home_3.jpg'),
                  _buildButton(context, "ContactUs", Icons.contacts, '/contactUs', 'assets/img/home_3.jpg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String title, IconData icon, String route, String imageUrl) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, route),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageUrl),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black, BlendMode.dstATop),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(icon, size: 50, color: Colors.white),
              SizedBox(height: 10),// Adjusted for visibility
              Text(title, style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),  // Adjusted for visibility
            ],
          ),
        ),
      ),
    );
  }
}

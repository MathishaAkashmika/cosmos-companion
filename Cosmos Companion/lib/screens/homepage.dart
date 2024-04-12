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
        title: Text(
          'COSMOS Companion',
          style: TextStyle(
            color: Colors.black, // Change to your desired color
          ),
        ),
        backgroundColor: Colors.white, // Optional: Make the AppBar transparent
        elevation: 0, // No shadow
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://i.ibb.co/8b0Wk3G/2150918835-1.jpg'), // Replace 'https://example.com/your_image.jpg' with your image URL
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

      extendBodyBehindAppBar: true, // Extends the body content behind the AppBar
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://i.ibb.co/KmR4ghK/image-16-1-1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 200), // Adjust the height to create sufficient spacing after the AppBar
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                padding: EdgeInsets.all(16),
                childAspectRatio: 1.5,
                children: <Widget>[
                  _buildButton(context, "Home", Icons.home, '/home', 'https://img.freepik.com/free-photo/abstract-surface-textures-white-concrete-stone-wall_74190-8189.jpg?size=626&ext=jpg&ga=GA1.1.1700460183.1712880000&semt=sph'),
                  _buildButton(context, "Explore", Icons.public, '/planetPage', 'https://img.freepik.com/free-photo/abstract-surface-textures-white-concrete-stone-wall_74190-8189.jpg?size=626&ext=jpg&ga=GA1.1.1700460183.1712880000&semt=sph'),
                  _buildButton(context, "TopProjects", Icons.star, '/topProjects', 'https://img.freepik.com/free-photo/abstract-surface-textures-white-concrete-stone-wall_74190-8189.jpg?size=626&ext=jpg&ga=GA1.1.1700460183.1712880000&semt=sph'),
                  _buildButton(context, "Updates", Icons.update, '/updates', 'https://img.freepik.com/free-photo/abstract-surface-textures-white-concrete-stone-wall_74190-8189.jpg?size=626&ext=jpg&ga=GA1.1.1700460183.1712880000&semt=sph'),
                  _buildButton(context, "Gallery", Icons.photo_library, '/gallery', 'https://img.freepik.com/free-photo/abstract-surface-textures-white-concrete-stone-wall_74190-8189.jpg?size=626&ext=jpg&ga=GA1.1.1700460183.1712880000&semt=sph'),
                  _buildButton(context, "Favorites", Icons.favorite, '/favorites', 'https://img.freepik.com/free-photo/abstract-surface-textures-white-concrete-stone-wall_74190-8189.jpg?size=626&ext=jpg&ga=GA1.1.1700460183.1712880000&semt=sph'),
                  _buildButton(context, "AboutUs", Icons.info, '/aboutUs', 'https://img.freepik.com/free-photo/abstract-surface-textures-white-concrete-stone-wall_74190-8189.jpg?size=626&ext=jpg&ga=GA1.1.1700460183.1712880000&semt=sph'),
                  _buildButton(context, "ContactUs", Icons.contacts, '/contactUs', 'https://img.freepik.com/free-photo/abstract-surface-textures-white-concrete-stone-wall_74190-8189.jpg?size=626&ext=jpg&ga=GA1.1.1700460183.1712880000&semt=sph'),
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
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(1), BlendMode.dstATop),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(icon, size: 50, color: Colors.black),
              Text(title, style: TextStyle(fontSize: 16, color: Colors.black)),
            ],
          ),
        ),
      ),
    );
  }
}


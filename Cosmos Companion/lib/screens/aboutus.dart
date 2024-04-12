import 'package:cosmos_companion/screens/planetpage.dart';
import 'package:cosmos_companion/screens/projectspage.dart';
import 'package:cosmos_companion/screens/welcomepage.dart';
import 'package:flutter/material.dart';
import '../admin/user_read.dart';
import 'aboutus.dart';
import 'contactus.dart';
import 'favoritepage.dart';
import 'gallery.dart';
import 'homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}

class AboutUsPage extends StatelessWidget {
  final double textPositionFromTop =
  200;

  String get imageUrl => 'https://i.ibb.co/KmR4ghK/image-16-1-1.png'; // Adjust this value to move the text boxes up or down

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            // Add your onPressed code here!
          },
        ),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/image-17-1.png'),
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
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
      body: Stack(
        children: <Widget>[
          Image.network(
            imageUrl,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),

          const Positioned(
            top: 30,
            left: 0,
            right: 0,
            child: Column(
              children: <Widget>[
                Text(
                  'WHO ARE WE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  'COSMOS COMPANION',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 4,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 200), // Space before the paragraph starts
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 16), // Side padding for the paragraph
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      height: 1.5, // Line height for the paragraph
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Add your other widgets on top of the background here
        ],
      ),
    );
  }
}

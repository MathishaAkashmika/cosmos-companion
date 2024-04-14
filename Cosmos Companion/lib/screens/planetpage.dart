import 'package:cosmos_companion/screens/projectspage.dart';
import 'package:cosmos_companion/shared/user_read.dart';
import 'package:cosmos_companion/screens/welcomepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'aboutus.dart';
import 'contactus.dart';
import 'favoritepage.dart';
import '../widgets/planetcard.dart';
import 'gallery.dart';
import 'homepage.dart';

class PlanetsPage extends StatefulWidget {
  @override
  _PlanetsPageState createState() => _PlanetsPageState();
}

class _PlanetsPageState extends State<PlanetsPage> {
  List<Map<String, dynamic>> planets = [
    {
      'id': 1,
      'title': 'Earth',
      'imageUrl': 'https://i.ibb.co/pWb95wD/2151075901-1.jpg',
      'description': 'Earth is the third planet from the Sun and the only astronomical object known to harbor life. This is enabled by Earth being a water world, the only one in the Solar System sustaining liquid surface water. Almost all of Earths water is contained in its global ocean, covering 70.8% of Earths crust. The remaining 29.2% of Earths crust is land, most of which is located in the form of continental landmasses within Earths land hemisphere. Most of Earths land is somewhat humid and covered by vegetation, while large sheets of ice at Earths polar deserts retain more water than Earths groundwater, lakes, rivers and atmospheric water combined. Earths crust consists of slowly moving tectonic plates, which interact to produce mountain ranges, volcanoes, and earthquakes. Earth has a liquid outer core that generates a magnetosphere capable of deflecting most of the destructive solar winds and cosmic radiation.Earth has a dynamic atmosphere, which sustains Earths surface conditions and protects it from most meteoroids and UV-light at entry. It has a composition of primarily nitrogen and oxygen. Water vapor is widely present in the atmosphere, forming clouds that cover most of the planet. The water vapor acts as a greenhouse gas and, together with other greenhouse gases in the atmosphere, particularly carbon dioxide (CO2), creates the conditions for both liquid surface water and water vapor to persist via the capturing of energy from the Suns light. This process maintains the current average surface temperature of 14.76 °C (58.57 °F), at which water is liquid under atmospheric pressure. Differences in the amount of captured energy between geographic regions (as with the equatorial region receiving more sunlight than the polar regions) drive atmospheric and ocean currents, producing a global climate system with different climate regions, and a range of weather phenomena such as precipitation, allowing components such as nitrogen to cycle.Earth is rounded into an ellipsoid with a circumference of about 40,000 km. It is the densest planet in the Solar System. Of the four rocky planets, it is the largest and most massive. Earth is about eight light-minutes away from the Sun and orbits it, taking a year (about 365.25 days) to complete one revolution. Earth rotates around its own axis in slightly less than a day (in about 23 hours and 56 minutes). Earths axis of rotation is tilted with respect to the perpendicular to its orbital plane around the Sun, producing seasons. Earth is orbited by one permanent natural satellite, the Moon, which orbits Earth at 384,400 km (1.28 light seconds) and is roughly a quarter as wide as Earth. The Moons gravity helps stabilize Earths axis, causes tides and gradually slows Earths rotation. Tidal locking has made the Moon always face Earth with the same side.Earth, like most other bodies in the Solar System, formed 4.5 billion years ago from gas in the early Solar System. During the first billion years of Earths history, the ocean formed and then life developed within it. Life spread globally and has been altering Earths atmosphere and surface, leading to the Great Oxidation Event two billion years ago. Humans emerged 300,000 years ago in Africa and have spread across every continent on Earth. Humans depend on Earths biosphere and natural resources for their survival, but have increasingly impacted the planets environment. Humanitys current impact on Earths climate and biosphere is unsustainable, threatening the livelihood of humans and many other forms of life, and causing widespread extinctions.[23]',
      'isFavorite': false,
    },
    {
      'id': 2,
      'title': 'Mars',
      'imageUrl': 'https://i.ibb.co/styNbM7/2150953671.jpg',
      'description': 'Mars, the fourth planet from the Sun, is enveloped in iron(III) oxide dust that gives it an orange-red hue, earning it the nickname "the Red Planet." Among the brightest objects in Earths sky, Marss high-contrast albedo features have made it a popular subject for telescope viewing. Classified as a terrestrial planet, Mars is the second smallest in the Solar System with a diameter of 6,779 km (4,212 mi). A Martian solar day, or sol, equals 24.5 hours, and a Martian year equals 1.88 Earth years (687 Earth days). It has two small, irregularly shaped natural satellites, Phobos and Deimos. The Martian surface exhibits a stark dichotomy with relatively flat plains in the north contrasting sharply with cratered terrain in the southern highlands. The planet hosts enormous extinct volcanoes, such as Olympus Mons, the tallest volcano at 21.9 km (13.6 mi) and one of the largest canyons, Valles Marineris, which stretches 4,000 km (2,500 mi) long. Marss geological activity includes marsquakes, dust devils, and cirrus clouds. Its polar ice caps and thin atmosphere are rich in carbon dioxide, with significant surface temperature swings from −78.5 °C (−109.3 °F) to 5.7 °C (42.3 °F) annually, mimicking Earths seasonal variations due to similar axial tilt.Mars formed about 4.5 billion years ago, with its early Noachian period marked by meteor impacts, valley formation, erosion, and potential water oceans. The subsequent Hesperian period featured widespread volcanic activity and flooding that created immense outflow channels, while the ongoing Amazonian period is dominated by wind influencing geological processes. Marss rich geological history fuels scientific interest in the potential for past or present life. Since the late 20th century, Mars has been the focus of uncrewed explorations; significant milestones include Mariner 4s flyby in 1965, Mars 2s orbit in 1971, and Viking 1s landing in 1976. As of 2023, there are at least 11 active probes exploring Mars from orbit or its surface, making it a prime candidate for future human exploration missions, though none are planned for the 2020s.',
      'isFavorite': false,
    },
    {
      'id': 3,
      'title': 'Saturn',
      'imageUrl': 'https://i.ibb.co/89yy8fx/16814.jpg',
      'description': "Saturn is the sixth planet from the Sun and the second-largest in the Solar System after Jupiter. It is a gas giant with an average radius of about nine-and-a-half times that of Earth. It has only one-eighth the average density of Earth but is over 95 times more massive. Even though Saturn is nearly the size of Jupiter Saturn has less than one-third of Jupiters mass. Saturn orbits the Sun at a distance of 9.59 AU (1434 million km) with an orbital period of 29.45 years.Saturns interior is thought to be composed of a rocky core surrounded by a deep layer of metallic hydrogen an intermediate layer of liquid hydrogen and liquid helium and finally a gaseous outer layer. Saturn has a pale yellow hue due to ammonia crystals in its upper atmosphere. An electrical current within the metallic hydrogen layer is thought to give rise to Saturns planetary magnetic field which is weaker than Earths but which has a magnetic moment 580 times that of Earth due to Saturns larger size. Saturns magnetic field strength is around one-twentieth of Jupiters. The outer atmosphere is generally bland and lacking in contrast although long-lived features can appear. Wind speeds on Saturn can reach 1800 kilometres per hour.The planet has a bright and extensive ring system composed mainly of ice particles with a smaller amount of rocky debris and dust. At least 146 moons are known to orbit the planet of which 63 are officially named; this does not include the hundreds of moonlets in its rings. Titan Saturns largest moon and the second largest in the Solar System is larger (while less massive) than the planet Mercury and is the only moon in the Solar System to have a substantial atmosphere.",
      'isFavorite': false,
    },
    // ... Other planets
  ];

  void _toggleFavorite(String title) {
    setState(() {
      final planet = planets.firstWhere((element) => element['title'] == title);
      planet['isFavorite'] = !planet['isFavorite'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Planets'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
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
                  image: NetworkImage(''), // Replace 'https://example.com/your_image.jpg' with your image URL
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
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(""), // Background image URL
                fit: BoxFit.cover, // Ensures the image covers the background
              ),
            ),
          ),
          ListView.builder(
            itemCount: planets.length,
            itemBuilder: (context, index) {
              final planet = planets[index];
              return PlanetCard(
                title: planet['title'],
                description: planet['description'],
                imageUrl: planet['imageUrl'],
                isFavorite: planet['isFavorite'],
                onFavoriteToggle: () => _toggleFavorite(planet['title']),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ViewPage(
                        title: planet['title'],
                        imageUrl: planet['imageUrl'],
                        description: planet['description'],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

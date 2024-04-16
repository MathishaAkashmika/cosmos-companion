import 'package:cosmos_companion/screens/add_user.dart';
import 'package:cosmos_companion/screens/homepage.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/welcome_page_img.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
            height: 600, // Adjust the height as needed
            child: const Column(
            mainAxisSize: MainAxisSize.min, // Ensures the column only takes up needed space
            mainAxisAlignment: MainAxisAlignment.start, // Aligns children to the start of the column
            crossAxisAlignment: CrossAxisAlignment.center, // Keeps the text centered horizontally
            children: [
            Text(
            'COSMOS',
            style: TextStyle(
            color: Colors.white,
            fontSize: 48,
            fontWeight: FontWeight.normal,
            ),
            ),
            SizedBox(height: 0), // Space between "COSMOS" and the small text
            Text(
            'COMPANION', // Small descriptive text
            style: TextStyle(
            color: Colors.white70, // Lighter color for distinction
            fontSize: 16, // Smaller font size for the subtitle
    ),
    ),
    ],
    ),
    ),
            ),
          Positioned(
            bottom: 50.0,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
                  textStyle: const TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min, // Use this to minimize the row's size to fit its children
                  children: <Widget>[
                    Text(
                      'START',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        letterSpacing: 1.2,
                      ),
                    ),
                    SizedBox(width: 10), // Adds space between the text and the icon
                    Icon(
                      Icons.arrow_forward, // Example of a forward arrow icon
                      color: Colors.white,
                      size: 30.0, // Increase the size here to make the icon appear "longer"
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

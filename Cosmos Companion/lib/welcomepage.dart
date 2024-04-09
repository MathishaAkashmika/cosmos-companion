import 'package:flutter/material.dart';
import 'signup.dart'; // Ensure this is the correct import for your SignUpScreen

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // URL of the background image
    const String backgroundImageUrl =
        'https://i.ibb.co/BsP7Gc2/dark-fantasy-scene.jpg';

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(backgroundImageUrl),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                // Wrap Text widget with Padding
                child: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 350.0), // This adds padding all around the text
                  child: Text(
                    'COSMOS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                      bottom: 35), // Adjust the padding as needed
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffea3204),
                      padding:
                          EdgeInsets.symmetric(horizontal: 48, vertical: 16),
                      textStyle: TextStyle(
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
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                    child: Text(
                      'START',
                      style: TextStyle(
                        fontSize: 24.0, // Example size
                        fontWeight: FontWeight.normal, // Example weight
                        color: Colors.white, // Example color
                        letterSpacing: 1.2, // Example letter spacing
                      ),
                    ),
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

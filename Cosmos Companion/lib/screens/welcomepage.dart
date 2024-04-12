import 'package:cosmos_companion/screens/add_user.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // URL of the background image
    const String backgroundImageUrl =
        'https://i.ibb.co/VgTnP32/image-1-1.png';

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(backgroundImageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Align(
            alignment: Alignment.center,
            child: Text(
              'COSMOS',
              style: TextStyle(
                color: Colors.white,
                fontSize: 48,
                fontWeight: FontWeight.normal,
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
                  backgroundColor: const Color(0xffea3204),
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
                    MaterialPageRoute(builder: (context) => SignUp()),
                  );
                },
                child: const Text(
                  'START',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

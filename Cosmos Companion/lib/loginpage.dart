import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://i.ibb.co/nkTGrXW/image-16.png"),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.all(32), // Add padding around the content
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'WELCOME\nBACK',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 44,
                fontWeight: FontWeight.normal,
                color: Colors.white,
                height: 1.2, // Line height
              ),
            ),
            SizedBox(height: 80), // Space between text and input fields
            TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.white70),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 50), // Space between fields
            TextField(
              obscureText: true, // Hide password text
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.white70),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 40), // Space before the button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 25),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                textStyle: TextStyle(
                  fontSize: 25,
                ),
              ),
              onPressed: () {
                // Handle login logic
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Log In'),
                  SizedBox(width: 8), // Spacing between text and icon
                  Icon(
                    Icons.arrow_forward,
                    size: 24,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // Space before the forgot password link
            Center(
              child: TextButton(
                onPressed: () {
                  // Handle "forgot password" logic
                },
                child: Text(
                  'forgot password? reset',
                  style: TextStyle(
                    color: Colors.blue.shade300,
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

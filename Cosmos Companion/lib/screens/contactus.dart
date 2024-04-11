import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blueGrey,
      ),
      home: const ContactUsPage(),
    );
  }
}

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image from a URL
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://i.ibb.co/KmR4ghK/image-16-1-1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'GET IN TOUCH',
                      style:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    const Text(
                      'COSMOS COMPANION',
                      style:
                      TextStyle(fontSize: 10, fontWeight: FontWeight.w300, color: Colors.white),
                    ),
                    const SizedBox(height: 130),
                    Container(
                      padding:
                      const EdgeInsets.all(16.0), // Padding inside the container
                      decoration: BoxDecoration(
                        color: Colors.transparent
                            .withOpacity(0.5), // Translucent background
                        borderRadius:
                        BorderRadius.circular(12), // Rounded corners
                      ),
                      child: ContactUsForm(),
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

class ContactUsForm extends StatefulWidget {
  @override
  _ContactUsFormState createState() => _ContactUsFormState();
}

class _ContactUsFormState extends State<ContactUsForm> {
  final _formKey = GlobalKey<FormState>();
  String? _validateNotEmpty(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field cannot be empty'; // Error message to be displayed if the field is left empty
    }
    return null; // Return null if the input is valid
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Your Name',
              border: UnderlineInputBorder(),
            ),
            validator: _validateNotEmpty,
          ),
          const SizedBox(height: 30),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Email',
              border: UnderlineInputBorder(),
            ),
          ),
          const SizedBox(height: 30),
          Text(
            'Message',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white.withOpacity(0.25),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              filled: true,
              fillColor: Colors.grey.withOpacity(0.1),
            ),
            maxLines: 3,
          ),
          const SizedBox(height: 16),
          Center(
            // Center the button within its parent
            child: ElevatedButton(
              onPressed: () {
                // Submit logic
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 135, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),

              child: const Row(
                mainAxisSize: MainAxisSize
                    .min, // Row only as wide as its (wrapped) children
                children: [
                  Text('SEND',
                    style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    ),
                  ),
                  SizedBox(width: 10), // Space between text and icon
                  Icon(Icons.arrow_forward), // Arrow icon
                ],
              ),
            ),
          ),
          const SizedBox(height: 16), // Add space after the button if needed
        ],
      ),
    );
  }
}

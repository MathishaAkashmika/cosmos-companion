import 'package:flutter/material.dart';
import 'welcomepage.dart';


class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _email = '';
  String _password = '';

  bool _validateAndSaveForm() {
    final form = _formKey.currentState;
    if (form != null && form.validate()) {
      form.save();
      // You can now use _name, _email, and _password to sign up the user
      // Implement your signup logic here, such as sending the data to a server
      // For demonstration, I'm just printing the values to the console
      print('Name: $_name, Email: $_email, Password: $_password');
      return true;
    }
    return false;
  }

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SafeArea(
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => WelcomePage()),
                      (Route<dynamic> route) =>
                          false, // Remove all previous routes
                    );
                  }, // Go back
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 32), // Apply padding here
                child: SingleChildScrollView(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                    Text(
                      "LET'S START",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 34,
                      ),
                    ),
                    SizedBox(height: 80), // Space between text and input fields
                    Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextFormField(
                            style: TextStyle(color: Colors.white),
                            decoration: _inputDecoration('Your Name'),
                            validator: (value) =>
                                value == null || value.trim().isEmpty
                                    ? 'Name cannot be empty'
                                    : null,
                            onSaved: (value) => _name = value ?? '',
                          ),
                          SizedBox(height: 16),
                          TextFormField(
                            style: TextStyle(color: Colors.white),
                            decoration: _inputDecoration('Email'),
                            validator: (value) => value == null ||
                                    !value.contains('@') ||
                                    value.trim().isEmpty
                                ? 'Enter a valid email'
                                : null,
                            onSaved: (value) => _email = value ?? '',
                          ),
                          SizedBox(height: 16),
                          TextFormField(
                            obscureText: true,
                            style: TextStyle(color: Colors.white),
                            decoration: _inputDecoration('Password'),
                            validator: (value) =>
                                value != null && value.length < 6
                                    ? 'Password must be at least 6 characters'
                                    : null,
                            onSaved: (value) => _password = value ?? '',
                          ),
                          SizedBox(height: 24),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent, // No shadow
                              padding: EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side: BorderSide(
                                    color: Colors.white), // White border
                              ),
                              textStyle: TextStyle(fontSize: 18),
                            ),
                            onPressed: _validateAndSaveForm,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('sign up',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 22)),
                                SizedBox(
                                    width: 15), // Space between text and icon
                                Icon(Icons.arrow_forward,
                                    color: Colors.white, size: 24),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height *
                            0.1), // Bottom padding or space
                  ],
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration _inputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(color: Colors.white70),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
    );
  }
}

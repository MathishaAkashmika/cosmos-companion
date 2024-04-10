import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'signup.dart';
import 'welcomepage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  Platform.isAndroid
    ? await Firebase.initializeApp(
        options: const FirebaseOptions(
          apiKey: "AIzaSyD1xwbgNA1OMwwb6uDJdFveucW5AARprUM",
          appId: "1:938182591706:android:aefbdcf13933391ffad1e3",
          messagingSenderId: "938182591706",
          projectId: "cosmos-companion-fab45",
        ),
      )
    : await Firebase.initializeApp();
    runApp(CosmosCompanion());
}

class CosmosCompanion extends StatelessWidget {
  const CosmosCompanion({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Cosmos Companion',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: WelcomePage(),
    );
  }
}

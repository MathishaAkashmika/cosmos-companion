import 'dart:io';
import 'package:cosmos_companion/admin/updates_add.dart';
import 'package:cosmos_companion/admin/updates_read.dart';
import 'package:cosmos_companion/admin/user_read.dart';
import 'package:cosmos_companion/screens/aboutus.dart';
import 'package:cosmos_companion/screens/adminpanel.dart';
import 'package:cosmos_companion/screens/contactus.dart';
import 'package:cosmos_companion/screens/favoritepage.dart';
import 'package:cosmos_companion/screens/gallery.dart';
import 'package:cosmos_companion/screens/homepage.dart';
import 'package:cosmos_companion/screens/loginpage.dart';
import 'package:cosmos_companion/screens/planetpage.dart';
import 'package:cosmos_companion/screens/projectspage.dart';
import 'package:cosmos_companion/screens/welcomepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cosmos_companion/chatbot/chat_bot.dart';


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
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home:  WelcomePage(),
      routes: {
        '/createPage': (context) => const UpdatesAdd(),
        '/readPage': (context) => const UserReadData(),
        '/updatePage': (context) => const ReadData(),
        '/home': (context) =>  HomePage(),
        '/login': (context) =>  LogIn(),
        '/planetPage': (context) =>  PlanetsPage(),
        '/topProjects': (context) => ProjectsPage(),
        '/updates': (context) => const UserReadData(),
        '/gallery': (context) =>  GalleryPage(),
        '/favorites': (context) => const FavoritesPage(favorites: [],),
        '/aboutUs': (context) =>  AboutUsPage(),
        '/contactUs': (context) => const ContactUsPage(),
        '/chatbot': (context) => const ChatScreen(),
      },
    );
  }
}

// Importing necessary Flutter libraries
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Entry point of the application
void main() {
  // Setting the system UI overlay style 
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp()); // Running the app with the MyApp widget as the root
}

// Root widget of the application
class MyApp extends StatelessWidget {
  const MyApp({super.key}); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Disabling debug banner
      title: 'Flutter Demo',            
      theme: ThemeData(
        primarySwatch: Colors.deepOrange, 
      ),
      home: const ProfileScreen(), // Setting ProfileScreen as the home widget
    );
  }
}

// Profile screen widget displaying user information
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 40), 
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/photo_2024.jpg'),
            ),
            const SizedBox(height: 20), 
            // Displaying profile details
            itemProfile('Name', 'Abhijit Khambekar', CupertinoIcons.person),
            const SizedBox(height: 10),
            itemProfile('Phone', '9011593056', CupertinoIcons.phone),
            const SizedBox(height: 10),
            itemProfile('Address', 'abc address, xyz city', CupertinoIcons.location),
            const SizedBox(height: 10),
            itemProfile('Email', 'abhijit.khambekar24@spit.ac.in', CupertinoIcons.mail),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // Helper method to create a profile item
  Widget itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, 
        borderRadius: BorderRadius.circular(10), 
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 5), // Shadow offset
            color: Colors.deepOrange.withOpacity(.2), // Shadow color with opacity
            spreadRadius: 2, // How far the shadow spreads
            blurRadius: 10, // Blur radius for the shadow
          )
        ],
      ),
      child: ListTile(
        title: Text(title), 
        subtitle: Text(subtitle), 
        leading: Icon(iconData), 
        tileColor: Colors.white, 
      ),
    );
  }
}

// ignore: file_names
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

AppBar appBar({User? user, Future<void> Function()? logout}) {
  return AppBar(
    title: const Text('Movies App',
      style:  TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
      ), 
      backgroundColor: Colors.white,
      elevation: 0.9,
      centerTitle: true,
    actions: <Widget>[
          if (user != null) 
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(user.photoURL ?? ''), // User's profile image URL
                radius: 20, // Adjust the size as needed
              ),
            ),
            if (user != null) 
            IconButton(
            icon: const Icon(Icons.logout), // Add a logout icon
            onPressed: (){
              logout!();
            }, 
            color: HexColor("#444653"),// Call the logout callback when pressed
          ),

          // Add other action buttons here if needed
        ],
  );
}

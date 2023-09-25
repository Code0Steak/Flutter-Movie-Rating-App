// ignore: file_names
import 'package:flutter/material.dart';


AppBar appBar() {
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
  
  );
}




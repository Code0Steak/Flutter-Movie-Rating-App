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
  leading: GestureDetector(
        onTap: () {
          
        },
        child: Container(
          margin: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: const Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(10)
          ),
          
        ),
      )
  );
}




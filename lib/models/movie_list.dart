import 'package:flutter/material.dart';

class MovieModel {
  String name;
  String imgPath;
  int rating;
  String duration;
  String details;
  Color boxColor;
  bool viewIsSelected;

  MovieModel({
    required this.name,
    required this.imgPath,
    required this.rating,
    required this.duration,
    required this.details,
    required this.boxColor,
    required this.viewIsSelected
  });

  static List < MovieModel > getMovies() {
    List < MovieModel > movies = [];

    movies.add(
      MovieModel(
       name: 'Blue Beetle',
       imgPath: 'assets/blue.jpg',
       rating: 0,
       duration: '2hrs 7mins',
       details: "Jaime Reyes suddenly finds himself in possession of an ancient relic of alien biotechnology called the Scarab. When the Scarab chooses Jaime to be its symbiotic host, he's bestowed with an incredible suit of armor that's capable of extraordinary and unpredictable powers, forever changing his destiny as he becomes the superhero Blue Beetle.",
       viewIsSelected: true,
       boxColor: Color(0xff9DCEFF)
      )
    );

    movies.add(
      MovieModel(
       name: 'Extraction 2',
       imgPath: 'assets/ext2.jpg',
       rating: 0,
       duration: '2hrs 3mins',
       details: "Back from the brink of death, commando Tyler Rake embarks on a dangerous mission to save a ruthless gangster's imprisoned family.",
       viewIsSelected: false,
       boxColor: Color(0xffEEA4CE),
      )
    );

    return movies;
  }
}
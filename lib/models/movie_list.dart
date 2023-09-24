import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class MovieModel {
  String name;
  String imgPath;
  int rating;
  String duration;
  String details;
  Color boxColor;
  bool viewIsSelected;
  int id;

  MovieModel({
    required this.name,
    required this.imgPath,
    required this.rating,
    required this.duration,
    required this.details,
    required this.boxColor,
    required this.viewIsSelected,
    required this.id
  });

  

  static List < MovieModel > getMovies() {
    List < MovieModel > movies = [];

    movies.add(
      MovieModel(
       name: 'Blue Beetle',
       imgPath: 'assets/Blue-Beettle-Movie.jpg',
       rating: 0,
       duration: '2hrs 7mins',
       details: "Jaime Reyes suddenly finds himself in possession of an ancient relic of alien biotechnology called the Scarab. When the Scarab chooses Jaime to be its symbiotic host, he's bestowed with an incredible suit of armor that's capable of extraordinary and unpredictable powers, forever changing his destiny as he becomes the superhero Blue Beetle.",
       viewIsSelected: true,
       boxColor: const Color(0xff9DCEFF),
       id: 0
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
       boxColor: HexColor("#bba193"),
       id: 1,
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
       id: 2,
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
       id: 3,
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
       id: 4,
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
       id: 5,
      )
    );

    return movies;
  }

  copyWith({required double rating}) {}
}
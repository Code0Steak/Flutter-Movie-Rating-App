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
       name: 'The Social Network',
       imgPath: 'assets/theSocialNetwork.jpg',
       rating: 0,
       duration: '2hrs',
       details: "Mark Zuckerberg creates a social networking site, Facebook, with his friend Eduardo's help. Though it turns out to be a successful venture, he severs ties with several people along the way.",
       viewIsSelected: false,
       boxColor: HexColor("#405898"),
       id: 1,
      )
    );
    movies.add(
      MovieModel(
       name: 'Red Notice',
       imgPath: 'assets/RED-NOTICE.jpg',
       rating: 0,
       duration: '1hr 58mins',
       details: "In the world of international crime, an Interpol agent attempts to hunt down and capture the world's most wanted art thief.",
       viewIsSelected: false,
       boxColor: HexColor("#c0111e"),
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
       boxColor: HexColor("#bba193"),
       id: 3,
      )
    );

    movies.add(
      MovieModel(
       name: 'Mission: Impossible - Dead Reckoning Part One',
       imgPath: 'assets/mi.jpg',
       rating: 0,
       duration: '2hrs 43mins',
       details: "Ethan Hunt and the IMF team must track down a terrifying new weapon that threatens all of humanity if it falls into the wrong hands. With control of the future and the fate of the world at stake, a deadly race around the globe begins. Confronted by a mysterious, all-powerful enemy, Ethan is forced to consider that nothing can matter more than the mission -- not even the lives of those he cares about most.",
      viewIsSelected: false,
       boxColor: const Color(0xff9DCEFF),
       id: 4,
      )
    );
    movies.add(
      MovieModel(
       name: 'Finding Nemo',
       imgPath: 'assets/findingNemo.jpg',
       rating: 0,
       duration: '1hr 40mins',
       details: "After his son gets abducted from the Great Barrier Reef and is dispatched to Sydney, Marlin, a meek clownfish, enlists the help of a forgetful fish and embarks on a journey to bring him home.",
       viewIsSelected: false,
       boxColor: HexColor("#f95c39"),
       id: 5,
      )
    );
    

    return movies;
  }

  copyWith({required double rating}) {}
}
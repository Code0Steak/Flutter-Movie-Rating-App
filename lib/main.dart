// // import 'package:flutter/material.dart';
// // import 'package:movies_app/components/app_bar.dart';
// // import 'package:movies_app/models/movie_list.dart';


// // void main() {
// //   runApp(const MyApp());
// // }
// // class MyApp extends StatefulWidget {
// //   const MyApp({super.key});

// //   @override
// //   State<MyApp> createState() => _MyAppState();
// // }

// // class _MyAppState extends State<MyApp> {

// // List<MovieModel> _list = [];

// //   void getData() {
// //     _list = MovieModel.getMovies();
// //   }


// //   @override
// //   Widget build(BuildContext context) {

// //     getData();
// //     return MaterialApp(
// //       title: 'Movies App',
// //       debugShowCheckedModeBanner: false,
// //       home: HomePage(list: _list,updateMovieList: _updateMovieList),
// //       initialRoute: '/',
      
// //     //  routes: {
// //     //     // '/': (context) => HomePage(),
// //     //     '/movieDetails': (context) => MovieDetailsScreen(),
// //     //   },
// //     );
// //   }

// //   // Callback function to update the movie list
// //   void _updateMovieList(List<MovieModel> updatedList) {
// //     setState(() {
// //       _list = updatedList;
// //     });
// //   }

// // }

// // class MovieDetailsScreen extends StatefulWidget {

// //   final MovieModel movie;
// //   MovieDetailsScreen({required this.movie});

  
// //   @override
// //   State<MovieDetailsScreen> createState() => _MovieDetailsScreenState();
// // }

// // class _MovieDetailsScreenState extends State<MovieDetailsScreen> {
// //   @override
// //   Widget build(BuildContext context) {
// //     final MovieModel movie = ModalRoute.of(context)?.settings.arguments as MovieModel;

// //     // Build the movie details/rating screen using the passed movie data.
// //     return Scaffold(
// //       appBar: appBar(),
// //       body: Text("This movie ${movie.name}")
// //     );
// //   }
// // }

// // //HomePage
// // class HomePage extends StatelessWidget {

// //   final List<MovieModel> list;
// //   final Function(List<MovieModel>) updateMovieList;


// //   const HomePage({super.key, required this.list, required this.updateMovieList});

// //    //HomePage({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //      //get movies data

// //     return Scaffold(
// //       appBar: appBar(),
// //       body: ListView(
// //         children: [
// //           const SizedBox(height: 40,),
// //           movieList()
// //         ],
// //       ),

// //     );
// //   }

// //   Column movieList() {
// //     return Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             const Padding(
// //               padding: EdgeInsets.only(left:20),
// //               child: Text(
// //                 'List of Movies',
// //                   style: TextStyle(
// //                   color: Colors.black,
// //                   fontSize: 18,
// //                   fontWeight: FontWeight.w600
// //                 ),
// //               ),
// //             ),
// //             const SizedBox(height: 15,),
// //             Container(
// //               height: 500,
// //               child: ListView.separated(
// //                 itemBuilder: (context, index) {
// //                   return Container(
// //                     width: 400,
// //                     decoration: BoxDecoration(
// //                       color: list[index].boxColor.withOpacity(0.3),
// //                       borderRadius: BorderRadius.circular(20)
// //                     ),
// //                     child: Column(
// //                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //                       children: [
// //                         Image(image: AssetImage(list[index].imgPath), fit: BoxFit.contain,),
// //                         Column(
// //                           children: [
// //                             Text(
// //                               list[index].name,
// //                               style: const TextStyle(
// //                                 fontWeight: FontWeight.w500,
// //                                 color: Colors.black,
// //                                 fontSize: 16
// //                               ),
// //                             ),
// //                              Text(
  
// //   list[index].rating != 0 ? 'Rating: ${list[index].rating} ⭐' : '',
// //   style: const TextStyle(
// //     color: Color(0xff7B6F72),
// //     fontSize: 13,
// //     fontWeight: FontWeight.w400,
// //   ),
// // ),

                           
// //                           ],
// //                         ),
// //                         Container(
// //                           height: 45,
// //                           width: 130,
// //                           decoration: BoxDecoration(
// //                             gradient: LinearGradient(
// //                               colors: [
// //                                 list[index].viewIsSelected ? const Color(0xff9DCEFF) : Colors.transparent,
// //                                 list[index].viewIsSelected ? const Color(0xff92A3FD) : Colors.transparent
// //                               ]
// //                             ),
// //                             borderRadius: BorderRadius.circular(50)
// //                           ),
// //                           child: Center(
// //                             child: GestureDetector(
// //                               // onTap: () {
// //                               //   Navigator.pushNamed(context, '/movieDetails', arguments: list[index]);

// //                               // },
// //                               onTap: () async {
// //   if (list[index] != null) {
// //     // Navigate to MovieDetailsScreen and await result
// //     final updatedMovie = await Navigator.push(
// //       context,
// //       MaterialPageRoute(
// //         builder: (context) => MovieDetailsScreen(
// //           movie: list[index],
// //         ),
// //       ),
// //     );

// //         // Check if the user made changes to the movie rating
// //         if (updatedMovie != null) {
// //           // Update the movie in the list and trigger a rebuild
// //           final List<MovieModel> updatedList = List.from(list);
// //           updatedList[index] = updatedMovie;
// //           updateMovieList(updatedList);
// //         }
// //       }
// //     },

// //                               child: Text(
// //                                 'View',
// //                                 style: TextStyle(
// //                                   color: list[index].viewIsSelected ? Colors.white : const Color(0xffC58BF2),
// //                                   fontWeight: FontWeight.w600,
// //                                   fontSize: 14
// //                                 ),
// //                               ),
// //                             ),
// //                           ),
// //                         )
// //                       ],
// //                     ),
// //                   );
// //                 },
// //                 separatorBuilder: (context, index) => const SizedBox(width: 25,),
// //                 itemCount: list.length,
// //                 scrollDirection: Axis.horizontal,
// //                 padding: const EdgeInsets.only(
// //                 left: 20,
// //                 right: 20
// //               ),
// //               ),
// //             )
// //           ],
// //         );
// //   }
// // }


// import 'package:flutter/material.dart';
// import 'package:movies_app/components/app_bar.dart';
// import 'package:movies_app/models/movie_list.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   List<MovieModel> _list = [];

//   void getData() {
//     _list = MovieModel.getMovies();
//   }

//   @override
//   Widget build(BuildContext context) {
//     getData();
//     return MaterialApp(
//       title: 'Movies App',
//       debugShowCheckedModeBanner: false,
//       home: HomePage(
//         list: _list,
//         updateMovieList: _updateMovieList,
//       ),
//       initialRoute: '/',
//     );
//   }

//   // Callback function to update the movie list
//   void _updateMovieList(List<MovieModel> updatedList) {
//     setState(() {
//       _list = updatedList;
//     });
//   }
// }

// class MovieDetailsScreen extends StatefulWidget {
//   final MovieModel movie;
//   final Function(MovieModel) updateMovieRating;

//   const MovieDetailsScreen({super.key, 
//     required this.movie,
//     required this.updateMovieRating,
//   });

//   @override
//   State<MovieDetailsScreen> createState() => _MovieDetailsScreenState();
// }

// class _MovieDetailsScreenState extends State<MovieDetailsScreen> {
//   double _rating = 0.0; // Store the updated rating

//   @override
//   Widget build(BuildContext context) {
//     // Build the movie details/rating screen using the passed movie data.
//     return Scaffold(
//       appBar: appBar(),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("This movie ${widget.movie.name}"),
//             const SizedBox(height: 20),
//             Text("Current Rating: ${widget.movie.rating}"),
//             const SizedBox(height: 20),
//             Slider(
//               value: _rating,
//               onChanged: (newValue) {
//                 setState(() {
//                   _rating = newValue;
//                 });
//               },
//               min: 0,
//               max: 5,
//               divisions: 5,
//               label: _rating.toStringAsFixed(1),
//             ),
            
//             GestureDetector(
//   onTap: () {
//     // Update the movie's rating and send it back to HomePage
//     final updatedMovie = widget.movie.copyWith(rating: _rating);
//     widget.updateMovieRating(updatedMovie);

//     // Close the MovieDetailsScreen and return to the previous screen (HomePage)
//     Navigator.pop(context, updatedMovie);
//   },
//   child: Container(
//     padding: const EdgeInsets.all(12),
//     decoration: BoxDecoration(
//       color: Colors.blue,
//       borderRadius: BorderRadius.circular(8),
//     ),
//     child: const Text(
//       'Save',
//       style: TextStyle(
//         color: Colors.white,
//         fontSize: 16,
//       ),
//     ),
//   ),
// ),


//           ],
//         ),
//       ),
//     );
//   }
// }

// // HomePage
// class HomePage extends StatelessWidget {
//   final List<MovieModel> list;
//   final Function(List<MovieModel>) updateMovieList;

//   HomePage({
//     super.key,
//     required this.list,
//     required this.updateMovieList,
//   });

//   @override
//   Widget build(BuildContext context) {
//     // get movies data

//     return Scaffold(
//       appBar: appBar(),
//       body: ListView(
//         children: [
//           const SizedBox(height: 40,),
//           movieList(context),
//         ],
//       ),
//     );
//   }

//   Column movieList(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Padding(
//           padding: EdgeInsets.only(left: 20),
//           child: Text(
//             'List of Movies',
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 18,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//         ),
//         const SizedBox(height: 15,),
//         Container(
//           height: 500,
//           child: ListView.separated(
//             itemBuilder: (context, index) {
//               return Container(
//                 width: 400,
//                 decoration: BoxDecoration(
//                   color: list[index].boxColor.withOpacity(0.3),
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Image(
//                       image: AssetImage(list[index].imgPath),
//                       fit: BoxFit.contain,
//                     ),
//                     Column(
//                       children: [
//                         Text(
//                           list[index].name,
//                           style: const TextStyle(
//                             fontWeight: FontWeight.w500,
//                             color: Colors.black,
//                             fontSize: 16,
//                           ),
//                         ),
//                         Text(
//                           list[index].rating != 0
//                               ? 'Rating: ${list[index].rating} ⭐'
//                               : '',
//                           style: const TextStyle(
//                             color: Color(0xff7B6F72),
//                             fontSize: 13,
//                             fontWeight: FontWeight.w400,
//                           ),
//                         ),
//                       ],
//                     ),
//                     Container(
//                       height: 45,
//                       width: 130,
//                       decoration: BoxDecoration(
//                         gradient: LinearGradient(
//                           colors: [
//                             list[index].viewIsSelected
//                                 ? const Color(0xff9DCEFF)
//                                 : Colors.transparent,
//                             list[index].viewIsSelected
//                                 ? const Color(0xff92A3FD)
//                                 : Colors.transparent,
//                           ],
//                         ),
//                         borderRadius: BorderRadius.circular(50),
//                       ),
//                       child: Center(
//                         child: GestureDetector(
//                           onTap: () async {
//                             // Navigate to MovieDetailsScreen and await result
//                             final updatedMovie = await Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => MovieDetailsScreen(
//                                   movie: list[index],
//                                   updateMovieRating: _updateMovieRating,
//                                 ),
//                               ),
//                             );

//                             // Check if the user made changes to the movie rating
//                             if (updatedMovie != null) {
//                               // Update the movie in the list and trigger a rebuild
//                               final List<MovieModel> updatedList =
//                                   List.from(list);
//                               updatedList[index] = updatedMovie;
//                               updateMovieList(updatedList);
//                             }
//                           },
//                           child: Text(
//                             'View',
//                             style: TextStyle(
//                               color: list[index].viewIsSelected
//                                   ? Colors.white
//                                   : const Color(0xffC58BF2),
//                               fontWeight: FontWeight.w600,
//                               fontSize: 14,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             },
//             separatorBuilder: (context, index) =>
//                 const SizedBox(width: 25,),
//             itemCount: list.length,
//             scrollDirection: Axis.horizontal,
//             padding: const EdgeInsets.only(
//               left: 20,
//               right: 20,
//             ),
//           ),
//         )
//       ],
//     );
//   }

//   // Callback function to update the movie rating
//   void _updateMovieRating(MovieModel updatedMovie) {
//     final List<MovieModel> updatedList = List.from(list);
//     final index = updatedList.indexWhere((movie) => movie.id == updatedMovie.id);
//     if (index != -1) {
//       updatedList[index] = updatedMovie;
//       updateMovieList(updatedList);
//     }
//   }
// }

import 'package:flutter/material.dart';
import 'package:movies_app/components/app_bar.dart';
import 'package:movies_app/models/movie_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<MovieModel> _list = [];

  void getData() {
    _list = MovieModel.getMovies();
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return MaterialApp(
      title: 'Movies App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(builder: (context) =>  HomePage(
        list: _list,
        updateMovieList: _updateMovieList,
      ),
      );
        } else if (settings.name?.startsWith('/movie') == true) {
          final String ID = settings.name?.substring(7) ?? ''; //extract movie ID
          return MaterialPageRoute(builder: (context) => MovieDetailsScreen(movieID: int.parse(ID), updateMovieRating: updateMovieRating))
        }
      },
      
      
    );
  }

  // Callback function to update the movie list
  void _updateMovieList(List<MovieModel> updatedList) {
    setState(() {
      _list = updatedList;
    });
  }
}

class MovieDetailsScreen extends StatefulWidget {
  final MovieModel movie;
  final Function(MovieModel) updateMovieRating;

  const MovieDetailsScreen({
    Key? key,
    required this.movie,
    required this.updateMovieRating,
  }) : super(key: key);

  @override
  State<MovieDetailsScreen> createState() => _MovieDetailsScreenState();
}

class _MovieDetailsScreenState extends State<MovieDetailsScreen> {
  double _rating = 0.0; // Store the updated rating

  @override
  Widget build(BuildContext context) {
    // Build the movie details/rating screen using the passed movie data.
    return Scaffold(
      appBar: appBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This movie ${widget.movie.name}"),
            const SizedBox(height: 20),
            Text("Current Rating: ${widget.movie.rating}"),
            const SizedBox(height: 20),
            Slider(
              value: _rating,
              onChanged: (newValue) {
                setState(() {
                  _rating = newValue;
                });
              },
              min: 0,
              max: 5,
              divisions: 5,
              label: _rating.toStringAsFixed(1),
            ),
            ElevatedButton(
              onPressed: () {
                // Update the movie's rating and send it back to HomePage
                final updatedMovie = widget.movie.copyWith(rating: _rating);
                

                // Close the MovieDetailsScreen and return to the previous screen (HomePage)
                if (widget.updateMovieRating != null) {
      widget.updateMovieRating(updatedMovie);

      // Close the MovieDetailsScreen and return to the previous screen (HomePage)
      Navigator.pop(context, updatedMovie);
    }
              },
              child: const Text(
                'Save',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// HomePage
class HomePage extends StatelessWidget {
  final List<MovieModel> list;
  final Function(List<MovieModel>) updateMovieList;

  HomePage({
    Key? key,
    required this.list,
    required this.updateMovieList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // get movies data

    return Scaffold(
      appBar: appBar(),
      body: ListView(
        children: [
          const SizedBox(height: 40,),
          movieList(context),
        ],
      ),
    );
  }

  Column movieList(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'List of Movies',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 15,),
        Container(
          height: 500,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                width: 400,
                decoration: BoxDecoration(
                  color: list[index].boxColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: AssetImage(list[index].imgPath),
                      fit: BoxFit.contain,
                    ),
                    Column(
                      children: [
                        Text(
                          list[index].name,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          list[index].rating != 0
                              ? 'Rating: ${list[index].rating} ⭐'
                              : '',
                          style: const TextStyle(
                            color: Color(0xff7B6F72),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 45,
                      width: 130,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            list[index].viewIsSelected
                                ? const Color(0xff9DCEFF)
                                : Colors.transparent,
                            list[index].viewIsSelected
                                ? const Color(0xff92A3FD)
                                : Colors.transparent,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: () async {
                            // Navigate to MovieDetailsScreen and await result
                            final updatedMovie = await Navigator.push<MovieModel>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MovieDetailsScreen(
                                  movie: list[index],
                                  updateMovieRating: _updateMovieRating,
                                ),
                              ),
                            );

                            // Check if the user made changes to the movie rating
                            if (updatedMovie != null) {
                              // Update the movie in the list and trigger a rebuild
                              final List<MovieModel> updatedList =
                                  List.from(list);
                              updatedList[index] = updatedMovie;
                              updateMovieList(updatedList);
                            }
                          },
                          child: Text(
                            'View',
                            style: TextStyle(
                              color: list[index].viewIsSelected
                                  ? Colors.white
                                  : const Color(0xffC58BF2),
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) =>
                const SizedBox(width: 25,),
            itemCount: list.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
          ),
        )
      ],
    );
  }

  // Callback function to update the movie rating
  void _updateMovieRating(MovieModel updatedMovie) {
    final List<MovieModel> updatedList = List.from(list);
    final index = updatedList.indexWhere((movie) => movie.id == updatedMovie.id);
    if (index != -1) {
      updatedList[index] = updatedMovie;
      updateMovieList(updatedList);
    }
  }
}

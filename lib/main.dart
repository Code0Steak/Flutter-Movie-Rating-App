import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/components/app_bar.dart';
import 'package:movies_app/components/authComponents/sign_in_view.dart';
import 'package:movies_app/models/movie_list.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:movies_app/models/user.dart';
import 'package:movies_app/service/flutter_auth_service.dart';
import 'package:provider/provider.dart';
import './secret/firebase_config.dart';

// import './secret/firebase_config.dart';

void main() async {

    WidgetsFlutterBinding.ensureInitialized(); // Ensure Flutter is initialized
  await Firebase.initializeApp(
    options: const FirebaseOptions(apiKey: FirebaseConfig.apiKey, appId: FirebaseConfig.appId, messagingSenderId: FirebaseConfig.messagingSenderId, projectId: FirebaseConfig.projectId)
  ); // Initialize Firebase


  
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({Key? key}) : super(key: key);

 

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<MovieModel> _list = [];

  void getData() {
    _list = MovieModel.getMovies();
  }

  void updateMovieRating(MovieModel movie){
    for(var i = 0; i < _list.length; i++) {
      if (_list[i].id == movie.id) {
        _list[i].rating = movie.rating;
      }
    }
  }

  // New method for logging out
  Future<void> _handleLogout() async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    try {
      await _auth.signOut();
    } catch (e) {
      print("Error signing out: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return   MultiProvider(
      providers: [
        Provider(
          create: (_) => FirebaseAuthService(),
        ),
        StreamProvider<AppUser?>(create: (context) => context.read<FirebaseAuthService>().onAuthStateChanged , initialData: null,)
      ],
      child: MaterialApp(
          title: 'Movies App',
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          home: Consumer<AppUser?> (builder: (_, user,__){
            if (user == null) {
              return const SignInView();
            } else {
              return  HomePage(
            list: _list, onLogOut: _handleLogout);
            }
          }),
          onGenerateRoute: (settings) {
          //   if (settings.name == '/') {
          //     return MaterialPageRoute(builder: (context) =>  HomePage(
          //   list: _list,
          
          // ),
          // );
          //   } else 
          if (settings.name?.startsWith('/movie') == true) {
              final String id = settings.name?.substring(7) ?? ''; //extract movie ID
              MovieModel? mov;
              for (var i = 0; i < _list.length; i++) {
                if (int.parse(id) == _list[i].id) {
                  mov = _list[i];
                }
              }
              return MaterialPageRoute(builder: (context) => MovieDetailsScreen(movie: mov!, updateMovieList: _updateMovieList));
            }
      
            return null;
          },
          
          
        ),
    );
        
  }

  // Callback function to update the movie list
  void _updateMovieList(MovieModel mov) {


    setState(() {
      _list[mov.id].rating = mov.id;
    });
  }
}

class MovieDetailsScreen extends StatefulWidget {
  final MovieModel movie;
  final Function(MovieModel) updateMovieList;

  const MovieDetailsScreen({
    Key? key,
    required this.movie,
    required this.updateMovieList,
  }) : super(key: key);

  @override
  State<MovieDetailsScreen> createState() => _MovieDetailsScreenState();
}

class _MovieDetailsScreenState extends State<MovieDetailsScreen> {
  late int _rating;

  @override
  void initState() {
    super.initState();
    _rating = widget.movie.rating;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                Container(
            height: 120.0,
            width: 120.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    widget.movie.imgPath),
                fit: BoxFit.fill,
              ),
              
            ),
        )
    ,
            Text(" ${widget.movie.name}"),
            const SizedBox(height: 20),
            Text("Description: ${widget.movie.details}"),
            Text("Current Rating: $_rating"),
            const SizedBox(height: 20),
            const Text("Rate the movie below:"),
            Slider(
              value: _rating.toDouble(),
              onChanged: (newValue) {
                setState(() {
                  _rating = newValue as int;
                });
              },
              min: 0,
              max: 5,
              divisions: 5,
              label: _rating.toStringAsFixed(1),
            ),
            ElevatedButton(
              onPressed: () {
                // Update the movie's rating and send it back to MyApp
                widget.movie.rating = _rating;
                widget.updateMovieList(widget.movie);

                // Close the MovieDetailsScreen and return to the previous screen (MyApp)
                Navigator.pop(context);
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
  final _user = FirebaseAuth.instance.currentUser;
  final Future<void> Function() onLogOut;

   HomePage({
    Key? key,
    required this.list, required this.onLogOut
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // get movies data

    return Scaffold(
      appBar: appBar(user: _user, logout: onLogOut),
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
        SizedBox(
          height: 500,
          child: ListView.separated(
  itemBuilder: (context, index) {
    return Card(
      elevation: 5,
      color: list[index].boxColor, // Add elevation for shadow
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              child: Image(
                image: AssetImage(list[index].imgPath),
                fit: BoxFit.cover, // Adjust image alignment
                height: 200, // Set the desired image height
                width: 400, // Set the desired image width
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0), // Add internal padding
              child: Column(
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
            ),
            GestureDetector(
              onTap: () {
                final movieId = list[index].id; // Unique movie identifier
                final movieUrl = '/movie/$movieId'; // Create the movie URL
                Navigator.of(context).pushNamed(movieUrl);
              },
              child: Container(
                height: 45,
                width: 130,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xff9DCEFF),
                      Color(0xff92A3FD),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Center(
                  child: Text(
                    'View',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  },
  separatorBuilder: (context, index) => const SizedBox(width: 25),
  itemCount: list.length,
  scrollDirection: Axis.horizontal,
  padding: const EdgeInsets.only(left: 20, right: 20),
),

        )
      ],
    );
  }

  
}
